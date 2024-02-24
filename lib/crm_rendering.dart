import 'dart:async';

import 'package:einnovention/crm_rendering_controller.dart';
import 'package:einnovention/utils/app_theme/app_colors.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:webview_flutter/webview_flutter.dart';
import 'package:flutter_animation_progress_bar/flutter_animation_progress_bar.dart';
import 'package:onesignal_flutter/onesignal_flutter.dart';

class CrmRendering extends StatefulWidget {
  const CrmRendering({Key? key}) : super(key: key);

  @override
  State<CrmRendering> createState() => _CrmRenderingState();
}

class _CrmRenderingState extends State<CrmRendering> {
  final _controller = Get.put(CrmRenderingController());
  late Timer _timer;

  int _refreshCount = 0;

  @override
  void initState() {
    super.initState();

    OneSignal.Debug.setLogLevel(OSLogLevel.verbose);
    OneSignal.initialize('4f70af14-55bb-496f-a4de-4a245acb9c57');
    OneSignal.Notifications.requestPermission(true).then((value) {
      print('signal value: $value');
    });

    // _startTimer();
  }

  @override
  void dispose() {
    _timer.cancel();
    super.dispose();
  }

  void _refreshApp() {
    setState(() {
      _refreshCount++;
    });
    if (kDebugMode) {
      print('App refreshed! Refresh count: $_refreshCount');
    }
  }

  // void _startTimer() {
  //   _timer = Timer.periodic(const Duration(minutes: 5), (timer) {
  //     _refreshApp();
  //   });
  // }

  @override
  Widget build(BuildContext context) {
    final controller = WebViewController()
      ..setJavaScriptMode(JavaScriptMode.unrestricted)
      ..setBackgroundColor(const Color(0x00000000))
      ..setNavigationDelegate(
        NavigationDelegate(
          onProgress: (int progress) {
            _controller.progressValue.value = progress.toDouble();
            if (progress == 100) {
              _controller.isLoading.value = false;
            } else {
              _controller.isLoading.value = true;
            }
          },
          onPageStarted: (String url) {},
          onPageFinished: (String url) {},
          onWebResourceError: (WebResourceError error) {},
        ),
      )
      ..loadRequest(
        Uri.parse('https://crm.einnovention.co.uk/'),
      );
    String _debugLabelString = "";
    String? _emailAddress;
    String? _smsNumber;
    String? _externalUserId;
    String? _language;
    bool _enableConsentButton = false;

    // CHANGE THIS parameter to true if you want to test GDPR privacy consent
    bool _requireConsent = false;

    @override
    void initState() {
      super.initState();
      // initPlatformState();
    }

    // Platform messages are asynchronous, so we initialize in an async method.
    Future<void> initPlatformState() async {
      //if (!mounted) return;

      OneSignal.Debug.setLogLevel(OSLogLevel.verbose);

      OneSignal.Debug.setAlertLevel(OSLogLevel.none);
      OneSignal.consentRequired(_requireConsent);

      // NOTE: Replace with your own app ID from https://www.onesignal.com
      OneSignal.initialize("4f70af14-55bb-496f-a4de-4a245acb9c57");

      //AndroidOnly stat only
      OneSignal.Notifications.removeNotification(1);
      OneSignal.Notifications.removeGroupedNotifications("group5");

      OneSignal.Notifications.clearAll();

      OneSignal.User.pushSubscription.addObserver((state) {
        print(OneSignal.User.pushSubscription.optedIn);
        print(OneSignal.User.pushSubscription.id);
        print(OneSignal.User.pushSubscription.token);
        print(state.current.jsonRepresentation());
      });

      OneSignal.Notifications.addPermissionObserver((state) {
        print("Has permission " + state.toString());
      });

      OneSignal.Notifications.addClickListener((event) {
        print('NOTIFICATION CLICK LISTENER CALLED WITH EVENT: $event');
        setState(() {
          _debugLabelString =
              "Clicked notification: \n${event.notification.jsonRepresentation().replaceAll("\\n", "\n")}";
        });
      });

      OneSignal.Notifications.addForegroundWillDisplayListener((event) {
        print(
            'NOTIFICATION WILL DISPLAY LISTENER CALLED WITH: ${event.notification.jsonRepresentation()}');

        /// Display Notification, preventDefault to not display
        event.preventDefault();

        /// Do async work

        /// notification.display() to display after preventing default
        event.notification.display();

        setState(() {
          _debugLabelString =
              "Notification received in foreground notification: \n${event.notification.jsonRepresentation().replaceAll("\\n", "\n")}";
        });
      });

      OneSignal.InAppMessages.addClickListener((event) {
        setState(() {
          _debugLabelString =
              "In App Message Clicked: \n${event.result.jsonRepresentation().replaceAll("\\n", "\n")}";
        });
      });
      OneSignal.InAppMessages.addWillDisplayListener((event) {
        print("ON WILL DISPLAY IN APP MESSAGE ${event.message.messageId}");
      });
      OneSignal.InAppMessages.addDidDisplayListener((event) {
        print("ON DID DISPLAY IN APP MESSAGE ${event.message.messageId}");
      });
      OneSignal.InAppMessages.addWillDismissListener((event) {
        print("ON WILL DISMISS IN APP MESSAGE ${event.message.messageId}");
      });
      OneSignal.InAppMessages.addDidDismissListener((event) {
        print("ON DID DISMISS IN APP MESSAGE ${event.message.messageId}");
      });

      setState(() {
        _enableConsentButton = _requireConsent;
      });

      // Some examples of how to use In App Messaging public methods with OneSignal SDK
      //oneSignalInAppMessagingTriggerExamples();

      // Some examples of how to use Outcome Events public methods with OneSignal SDK
      //oneSignalOutcomeExamples();

      OneSignal.InAppMessages.paused(true);
    }

    void _handleSendTags() {
      print("Sending tags");
      OneSignal.User.addTagWithKey("test2", "val2");

      print("Sending tags array");
      var sendTags = {'test': 'value', 'test2': 'value2'};
      OneSignal.User.addTags(sendTags);
    }

    void _handleRemoveTag() {
      print("Deleting tag");
      OneSignal.User.removeTag("test2");

      print("Deleting tags array");
      OneSignal.User.removeTags(['test']);
    }

    void _handleGetTags() async {
      print("Get tags");

      var tags = await OneSignal.User.getTags();
      print(tags);
    }

    void _handlePromptForPushPermission() {
      print("Prompting for Permission");
      OneSignal.Notifications.requestPermission(true);
    }

    void _handleSetLanguage() {
      if (_language == null) return;
      print("Setting language");
      OneSignal.User.setLanguage(_language!);
    }

    void _handleSetEmail() {
      if (_emailAddress == null) return;
      print("Setting email");

      OneSignal.User.addEmail(_emailAddress!);
    }

    void _handleRemoveEmail() {
      if (_emailAddress == null) return;
      print("Remove email");

      OneSignal.User.removeEmail(_emailAddress!);
    }

    void _handleSetSMSNumber() {
      if (_smsNumber == null) return;
      print("Setting SMS Number");

      OneSignal.User.addSms(_smsNumber!);
    }

    void _handleRemoveSMSNumber() {
      if (_smsNumber == null) return;
      print("Remove smsNumber");

      OneSignal.User.removeSms(_smsNumber!);
    }

    void _handleConsent() {
      print("Setting consent to true");
      OneSignal.consentGiven(true);

      print("Setting state");
      this.setState(() {
        _enableConsentButton = false;
      });
    }

    void _handleSetLocationShared() {
      print("Setting location shared to true");
      OneSignal.Location.setShared(true);
    }

    void _handleLogin() {
      print("Setting external user ID");
      if (_externalUserId == null) return;
      OneSignal.login(_externalUserId!);
      OneSignal.User.addAlias("fb_id", "1341524");
    }

    void _handleLogout() {
      OneSignal.logout();
      OneSignal.User.removeAlias("fb_id");
    }

    oneSignalInAppMessagingTriggerExamples() async {
      /// Example addTrigger call for IAM
      /// This will add 1 trigger so if there are any IAM satisfying it, it
      /// will be shown to the user
      OneSignal.InAppMessages.addTrigger("trigger_1", "one");

      /// Example addTriggers call for IAM
      /// This will add 2 triggers so if there are any IAM satisfying these, they
      /// will be shown to the user
      Map<String, String> triggers = new Map<String, String>();
      triggers["trigger_2"] = "two";
      triggers["trigger_3"] = "three";
      OneSignal.InAppMessages.addTriggers(triggers);

      // Removes a trigger by its key so if any future IAM are pulled with
      // these triggers they will not be shown until the trigger is added back
      OneSignal.InAppMessages.removeTrigger("trigger_2");

      // Create a list and bulk remove triggers based on keys supplied
      List<String> keys = ["trigger_1", "trigger_3"];
      OneSignal.InAppMessages.removeTriggers(keys);

      // Toggle pausing (displaying or not) of IAMs
      OneSignal.InAppMessages.paused(true);
      var arePaused = await OneSignal.InAppMessages.arePaused();
      print('Notifications paused $arePaused');
    }

    oneSignalOutcomeExamples() async {
      OneSignal.Session.addOutcome("normal_1");
      OneSignal.Session.addOutcome("normal_2");

      OneSignal.Session.addUniqueOutcome("unique_1");
      OneSignal.Session.addUniqueOutcome("unique_2");

      OneSignal.Session.addOutcomeWithValue("value_1", 3.2);
      OneSignal.Session.addOutcomeWithValue("value_2", 3.9);
    }

    void _handleOptIn() {
      OneSignal.User.pushSubscription.optIn();
    }

    void _handleOptOut() {
      OneSignal.User.pushSubscription.optOut();
    }

    return Scaffold(
      body: Container(
        color: AppColors.primaryColor,
        child: SafeArea(
          child: _controller.isLoading.value
              ? Center(
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      FAProgressBar(
                        currentValue: _controller.progressValue.value,
                        size: 5,
                        maxValue: 100,
                        backgroundColor: AppColors.primaryColor,
                        progressColor: AppColors.primaryDark,
                        animatedDuration: const Duration(milliseconds: 300),
                        direction: Axis.horizontal,
                        verticalDirection: VerticalDirection.up,
                      ),
                      const CircularProgressIndicator(
                        color: Colors.white,
                        strokeWidth: 5,
                      ),
                      const SizedBox(),
                    ],
                  ),
                )
              : WebViewWidget(controller: controller),
        ),
      ),
      floatingActionButton: FloatingActionButton(
        shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(50)),
        onPressed: () {
          _refreshApp();
        },
        child: const Icon(
          Icons.refresh,
        ),
      ),
    );
  }
}
