import 'package:crm_app/modules/dashboard/controller/dashboard_controller.dart';
import 'package:crm_app/utils/app_config.dart';
import 'package:crm_app/utils/app_theme/app_colors.dart';
import 'package:crm_app/utils/customs/app_text/app_text.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:get/get.dart';

// ignore: must_be_immutable
class AppDrawer extends StatefulWidget {
  DashboardController dController;
  AppDrawer({Key? key, required this.dController}) : super(key: key);

  @override
  State<AppDrawer> createState() => _AppDrawerState();
}

class _AppDrawerState extends State<AppDrawer> {
  @override
  Widget build(BuildContext context) {
    return Drawer(
      backgroundColor: AppColors.primaryColor,
      child: Container(
        color: Colors.white,
        height: AppConfig(context).height,
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Container(
              height: AppConfig(context).height * 0.15,
              color: AppColors.primaryColor,
              child: Align(
                alignment: Alignment.bottomLeft,
                child: Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: AppText.text(
                    "Einnovention",
                    color: AppColors.white,
                    fontsize: 20,
                    fontweight: FontWeight.w600,
                  ),
                ),
              ),
            ),
            Expanded(
              child: Container(
                // padding: const EdgeInsets.only(left: 0),
                decoration: const BoxDecoration(
                  color: Color.fromARGB(255, 52, 57, 85),
                ),
                // height: AppConfig(context).height * 0.85,
                child: SingleChildScrollView(
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      tile(
                          title: "Dashboard",
                          icon: FontAwesomeIcons.house,
                          onPressed: () {
                            widget.dController.pageIndex.value = 0;
                            Get.back();
                          }),

                      tile(
                        title: "Assigned Projects",
                        isSubHeadding: false,
                        icon: FontAwesomeIcons.briefcase,
                      ),
                      tile(
                        title: "Assigned Tasks",
                        isSubHeadding: false,
                        icon: FontAwesomeIcons.listCheck,
                        onPressed: () {
                          Get.back();
                        },
                      ),

                      tile(
                        title: "Timer",
                        icon: FontAwesomeIcons.clock,
                        isSubHeadding: false,
                        onPressed: () {
                          Get.back();
                        },
                      ),
                      tile(
                        title: "Attendance",
                        icon: FontAwesomeIcons.userClock,
                        onPressed: () {
                          widget.dController.pageIndex.value = 1;
                          Get.back();
                        },
                      ),
                      tile(
                        title: "Leaves",
                        icon: FontAwesomeIcons.planeDeparture,
                        isSubHeadding: false,
                        onPressed: () {
                          Get.back();
                        },
                      ),
                      tile(
                        title: "Message",
                        icon: Icons.message,
                        onPressed: () {
                          Get.back();
                        },
                      ),
                      tile(
                        title: "Profile",
                        isSubHeadding: false,
                        icon: FontAwesomeIcons.userTie,
                      ),
                      //       ],
                      //     ),
                      //   ),
                      // ),
                      // const SizedBox(height: 10),
                      // AppText.text(
                      //   "General System Features",
                      //   fontsize: 17,
                      //   color: AppColors.primaryDark,
                      //   fontweight: FontWeight.w600,
                      // ),
                      // tile(
                      //     title: lan.general_system_features,
                      //     icon: Icons.settings_outlined,
                      //     isActive: openIndex == 2,
                      //     isMultiple: true,
                      //     onPressed: () {
                      //       setState(() {
                      //         if (openIndex == 2) {
                      //           openIndex = 0;
                      //         } else {
                      //           openIndex = 2;
                      //         }
                      //       });
                      //     }),

                      // AnimatedContainer(
                      //   duration: const Duration(milliseconds: 300),
                      //   margin: const EdgeInsets.only(left: 10),
                      //   height:
                      //       openIndex == 2 ? AppConfig(context).height * 0.04 : 0,
                      //   // color: Colors.red,
                      //   child: SingleChildScrollView(
                      //     child: Column(
                      //       children: [
                      //         tile(
                      //           title: lan.general_settings,
                      //           isSubHeadding: true,
                      //           onPressed: () {
                      //             Get.toNamed(AppRoutes.GENERAL_SETTINGS);
                      //           },
                      //         ),
                      // tile(
                      //   title: "Mangage Languages",
                      //   isSubHeadding: true,
                      // ),
                      // tile(
                      //   title: "Mangage Language Values",
                      //   isSubHeadding: true,
                      // ),
                      //     ],
                      //   ),
                      // ),
                      // ),
                      // const SizedBox(height: 10),
                      // AppText.text(
                      //   "Employees",
                      //   fontsize: 17,
                      //   color: AppColors.primaryDark,
                      //   fontweight: FontWeight.w600,
                      // ),

                      const Divider(
                        endIndent: 20,
                        indent: 20,
                      ),
                      tile(
                        title: "Settings",
                        icon: FontAwesomeIcons.gear,
                        onPressed: () {
                          Get.back();
                        },
                      ),
                      tile(
                        title: "Log Out",
                        icon: FontAwesomeIcons.arrowRightFromBracket,
                        onPressed: () {
                          Get.back();
                        },
                      ),
                    ],
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }

  Widget tile({
    String title = "",
    IconData icon = Icons.settings,
    GestureTapCallback? onPressed,
    bool isActive = false,
    bool isMultiple = false,
    bool isSubHeadding = false,
  }) {
    return Container(
      margin: const EdgeInsets.only(top: 0, bottom: 0, left: 0, right: 3),
      decoration: BoxDecoration(
          color: isActive ? AppColors.background : null,
          borderRadius: const BorderRadius.only(
            topRight: Radius.circular(35),
            bottomRight: Radius.circular(35),
          )),
      child: InkWell(
        onTap: onPressed,
        child: Container(
          padding:
              const EdgeInsets.only(left: 18, top: 12, bottom: 12, right: 10),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Row(
                mainAxisSize: MainAxisSize.min,
                children: [
                  isSubHeadding
                      ? const SizedBox(width: 12)
                      : Icon(
                          icon,
                          size: 16,
                          color: isActive ? AppColors.black : AppColors.white,
                        ),
                  const SizedBox(width: 10),
                  AppText.text(
                    title,
                    fontsize: isSubHeadding ? 12 : 15,
                    fontweight: FontWeight.w500,
                    color: isActive ? AppColors.black : AppColors.white,
                  )
                ],
              ),
              isMultiple
                  ? RotatedBox(
                      quarterTurns: isActive ? 1 : 0,
                      child: Icon(
                        Icons.arrow_forward_ios,
                        color:
                            isActive ? AppColors.black : AppColors.background,
                        size: 18,
                      ),
                    )
                  : const SizedBox(),
            ],
          ),
        ),
      ),
    );
  }
}
