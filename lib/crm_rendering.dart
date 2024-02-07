import 'package:crm_app/crm_rendering_controller.dart';
import 'package:crm_app/utils/app_theme/app_colors.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:webview_flutter/webview_flutter.dart';
import 'package:flutter_animation_progress_bar/flutter_animation_progress_bar.dart';

class CrmRendering extends StatelessWidget {
  CrmRendering({Key? key}) : super(key: key);
  final _controller = Get.put(CrmRenderingController());

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
    return PopScope(
      canPop: false,
      child: Obx(
        () => Container(
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
      ),
    );
  }
}
