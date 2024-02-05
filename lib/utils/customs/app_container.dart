// import 'package:flutter/material.dart';
// import 'package:hq_analytics/utils/app_config.dart';
// import 'package:hq_analytics/utils/app_theme/app_colors.dart';
// import 'package:hq_analytics/utils/customs/app_text/app_text.dart';

// class AppContainer {
//   static Widget customeConatiner({
//     required BuildContext context,
//     required String heading,
//     final double? height,
//     Widget? child,
//     required IconData? icon,
//   }) {
//     return PhysicalModel(
//       elevation: 8,
//       color: AppColors.background,
//       borderRadius: BorderRadius.circular(8),
//       child: Container(
//         width: AppConfig(context).width * 0.95,
//         decoration: BoxDecoration(
//           borderRadius: BorderRadius.circular(8),
//           color: AppColors.primaryColor,
//         ),
//         padding: const EdgeInsets.only(top: 10, left: 0, right: 0, bottom: 0),
//         child: Column(
//           crossAxisAlignment: CrossAxisAlignment.start,
//           children: [
//             Padding(
//               padding: const EdgeInsets.only(left: 8),
//               child: Row(
//                 children: [
//                   Icon(
//                     icon,
//                     size: 18,
//                     color: AppColors.background,
//                   ),
//                   const SizedBox(
//                     width: 10,
//                   ),
//                   AppText.text(
//                     heading,
//                     color: AppColors.background,
//                     fontsize: 17,
//                     fontweight: FontWeight.w500,
//                   ),
//                 ],
//               ),
//             ),
//             const SizedBox(height: 10),
//             Container(
//               padding:
//                   const EdgeInsets.only(bottom: 8, left: 5, right: 5, top: 8),
//               decoration: BoxDecoration(
//                 borderRadius: BorderRadius.circular(8),
//                 color: AppColors.white,
//               ),
//               child: child,
//             ),
//           ],
//         ),
//       ),
//     );
//   }
// }
