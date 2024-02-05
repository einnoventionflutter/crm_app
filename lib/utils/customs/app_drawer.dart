// import 'package:flutter/cupertino.dart';
// import 'package:flutter/material.dart';
// import 'package:get/get.dart';

// class AppDrawer extends StatefulWidget {
//   const AppDrawer({Key? key}) : super(key: key);

//   @override
//   State<AppDrawer> createState() => _AppDrawerState();
// }

// class _AppDrawerState extends State<AppDrawer> {
//   int openIndex = 0;

//   @override
//   Widget build(BuildContext context) {
//     final lan = AppLocalizations.of(context)!;

//     return Drawer(
//       backgroundColor: AppColors.primaryColor,
//       child: SizedBox(
//         height: AppConfig(context).height,
//         child: Column(
//           crossAxisAlignment: CrossAxisAlignment.start,
//           children: [
//             Container(
//               height: AppConfig(context).height * 0.15,
//               color: AppColors.primaryColor,
//               child: Align(
//                 alignment: Alignment.bottomLeft,
//                 child: Padding(
//                   padding: const EdgeInsets.all(8.0),
//                   child: AppText.text(
//                     "HQ Analytics",
//                     color: AppColors.white,
//                     fontsize: 20,
//                     fontweight: FontWeight.w600,
//                   ),
//                 ),
//               ),
//             ),
//             Container(
//               // padding: const EdgeInsets.only(left: 0),
//               decoration: const BoxDecoration(
//                 borderRadius: BorderRadius.only(
//                   topLeft: Radius.circular(8),
//                   topRight: Radius.circular(8),
//                 ),
//                 color: AppColors.background,
//               ),
//               height: AppConfig(context).height * 0.85,
//               child: SingleChildScrollView(
//                 child: Column(
//                   crossAxisAlignment: CrossAxisAlignment.start,
//                   children: [
//                     // const SizedBox(height: 10),
//                     // AppText.text(
//                     //   "General",
//                     //   fontsize: 17,
//                     //   color: AppColors.primaryDark,
//                     //   fontweight: FontWeight.w600,
//                     // ),
//                     tile(
//                         title: lan.dashboard,
//                         icon: CupertinoIcons.house,
//                         onPressed: () {
//                           Get.back();
//                         }),
//                     // const SizedBox(height: 10),
//                     // AppText.text(
//                     //   "Profile",
//                     //   fontsize: 17,
//                     //   color: AppColors.primaryDark,
//                     //   fontweight: FontWeight.w600,
//                     // ),
//                     tile(
//                       title: lan.manage_profile,
//                       icon: CupertinoIcons.person_crop_circle_badge_checkmark,
//                       onPressed: () {
//                         Get.toNamed(AppRoutes.MANAGE_PROFILE);
//                       },
//                     ),
//                     // const SizedBox(height: 10),
//                     // AppText.text(
//                     //   "Settings",
//                     //   fontsize: 17,
//                     //   color: AppColors.primaryDark,
//                     //   fontweight: FontWeight.w600,
//                     // ),
//                     // tile(
//                     //     title: lan.manage_settings,
//                     //     icon: Icons.settings_outlined,
//                     //     isActive: openIndex == 1,
//                     //     isMultiple: true,
//                     //     onPressed: () {
//                     //       setState(() {
//                     //         if (openIndex == 1) {
//                     //           openIndex = 0;
//                     //         } else {
//                     //           openIndex = 1;
//                     //         }
//                     //       });
//                     //     }),
//                     // AnimatedContainer(
//                     //   duration: const Duration(milliseconds: 300),
//                     //   margin: const EdgeInsets.only(left: 10),
//                     //   height:
//                     //       openIndex == 1 ? AppConfig(context).height * 0.25 : 0,
//                     //   // color: AppColors.primaryLight.withOpacity(0.2),
//                     //   child: SingleChildScrollView(
//                     //     child: Column(
//                     //       children: [
//                     // tile(
//                     //   title: lan.role,
//                     //   isSubHeadding: true,
//                     // ),
//                     tile(
//                       title: lan.working_region,
//                       isSubHeadding: false,
//                       icon: CupertinoIcons.text_aligncenter,
//                     ),
//                     tile(
//                       title: lan.petrol_pump,
//                       isSubHeadding: false,
//                       icon: Icons.local_gas_station_outlined,
//                       onPressed: () {
//                         Get.toNamed(AppRoutes.MANAGE_PETROL_PUMP);
//                       },
//                     ),
//                     tile(
//                       title: lan.distribution_center,
//                       icon: FontAwesomeIcons.building,
//                       isSubHeadding: false,
//                       onPressed: () {
//                         Get.toNamed(AppRoutes.MANAGE_DISTRIBUTION_CENTER);
//                       },
//                     ),
//                     tile(
//                       title: lan.set_alert,
//                       isSubHeadding: false,
//                       icon: FontAwesomeIcons.bell,
//                     ),
//                     //       ],
//                     //     ),
//                     //   ),
//                     // ),
//                     // const SizedBox(height: 10),
//                     // AppText.text(
//                     //   "General System Features",
//                     //   fontsize: 17,
//                     //   color: AppColors.primaryDark,
//                     //   fontweight: FontWeight.w600,
//                     // ),
//                     // tile(
//                     //     title: lan.general_system_features,
//                     //     icon: Icons.settings_outlined,
//                     //     isActive: openIndex == 2,
//                     //     isMultiple: true,
//                     //     onPressed: () {
//                     //       setState(() {
//                     //         if (openIndex == 2) {
//                     //           openIndex = 0;
//                     //         } else {
//                     //           openIndex = 2;
//                     //         }
//                     //       });
//                     //     }),
//                     tile(
//                       title: lan.general_settings,
//                       icon: Icons.settings_outlined,
//                       onPressed: () {
//                         Get.toNamed(AppRoutes.GENERAL_SETTINGS);
//                       },
//                     ),

//                     // AnimatedContainer(
//                     //   duration: const Duration(milliseconds: 300),
//                     //   margin: const EdgeInsets.only(left: 10),
//                     //   height:
//                     //       openIndex == 2 ? AppConfig(context).height * 0.04 : 0,
//                     //   // color: Colors.red,
//                     //   child: SingleChildScrollView(
//                     //     child: Column(
//                     //       children: [
//                     //         tile(
//                     //           title: lan.general_settings,
//                     //           isSubHeadding: true,
//                     //           onPressed: () {
//                     //             Get.toNamed(AppRoutes.GENERAL_SETTINGS);
//                     //           },
//                     //         ),
//                     // tile(
//                     //   title: "Mangage Languages",
//                     //   isSubHeadding: true,
//                     // ),
//                     // tile(
//                     //   title: "Mangage Language Values",
//                     //   isSubHeadding: true,
//                     // ),
//                     //     ],
//                     //   ),
//                     // ),
//                     // ),
//                     // const SizedBox(height: 10),
//                     // AppText.text(
//                     //   "Employees",
//                     //   fontsize: 17,
//                     //   color: AppColors.primaryDark,
//                     //   fontweight: FontWeight.w600,
//                     // ),
//                     tile(
//                       title: lan.create_new_employee,
//                       icon: Icons.person_add_alt_outlined,
//                       onPressed: () {
//                         Get.toNamed(AppRoutes.CREATENEWEMPLOYEE);
//                       },
//                     ),
//                     tile(
//                       title: lan.list_employee,
//                       icon: CupertinoIcons.list_bullet,
//                       onPressed: () {
//                         Get.toNamed(AppRoutes.LISTEMPLOYEES);
//                       },
//                     ),
//                     const Divider(
//                       endIndent: 20,
//                       indent: 20,
//                     ),
//                     tile(
//                       title: lan.app_settings,
//                       icon: Icons.settings_outlined,
//                       onPressed: () {
//                         Get.toNamed(AppRoutes.APP_SETTINGS);
//                       },
//                     ),
//                     tile(
//                       title: lan.logout,
//                       icon: Icons.logout_outlined,
//                       onPressed: () {
//                         // Get.toNamed(AppRoutes.APP_SETTINGS);
//                       },
//                     ),
//                   ],
//                 ),
//               ),
//             ),
//           ],
//         ),
//       ),
//     );
//   }

//   Widget tile({
//     String title = "",
//     IconData icon = Icons.settings,
//     GestureTapCallback? onPressed,
//     bool isActive = false,
//     bool isMultiple = false,
//     bool isSubHeadding = false,
//   }) {
//     return Container(
//       margin: const EdgeInsets.only(top: 0, bottom: 0, left: 0, right: 3),
//       decoration: BoxDecoration(
//           color: isActive ? AppColors.primaryDark : null,
//           borderRadius: const BorderRadius.only(
//             topRight: Radius.circular(35),
//             bottomRight: Radius.circular(35),
//           )),
//       child: InkWell(
//         onTap: onPressed,
//         child: Container(
//           padding:
//               const EdgeInsets.only(left: 18, top: 12, bottom: 12, right: 10),
//           child: Row(
//             mainAxisAlignment: MainAxisAlignment.spaceBetween,
//             children: [
//               Row(
//                 mainAxisSize: MainAxisSize.min,
//                 children: [
//                   isSubHeadding
//                       ? const SizedBox(width: 12)
//                       : Icon(
//                           icon,
//                           size: 20,
//                           color: isActive ? AppColors.background : null,
//                         ),
//                   const SizedBox(width: 10),
//                   AppText.text(
//                     title,
//                     fontsize: isSubHeadding ? 12 : 15,
//                     fontweight: FontWeight.w500,
//                     color: isActive ? AppColors.background : null,
//                   )
//                 ],
//               ),
//               isMultiple
//                   ? RotatedBox(
//                       quarterTurns: isActive ? 1 : 0,
//                       child: Icon(
//                         Icons.arrow_forward_ios,
//                         color:
//                             isActive ? AppColors.background : AppColors.black,
//                         size: 18,
//                       ),
//                     )
//                   : const SizedBox(),
//             ],
//           ),
//         ),
//       ),
//     );
//   }
// }
