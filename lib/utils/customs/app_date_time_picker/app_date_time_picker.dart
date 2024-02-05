// import 'package:flutter/material.dart';
// import 'package:get/get.dart';
// import 'package:hq_analytics/utils/app_config.dart';
// import 'package:hq_analytics/utils/app_theme/app_colors.dart';
// import 'package:month_picker_dialog/month_picker_dialog.dart';
// import 'package:syncfusion_flutter_datepicker/datepicker.dart';
// import 'package:flutter_gen/gen_l10n/app_localizations.dart';
// import 'package:custom_date_range_picker/custom_date_range_picker.dart';

// class AppDateTimePicker {
//   static myDatePicker(BuildContext context) {
//     final lan = AppLocalizations.of(context)!;

//     return showDialog(
//       context: context,
//       builder: (context) => AlertDialog(
//         content: SizedBox(
//           height: AppConfig(context).height * 0.42,
//           child: SfDateRangePicker(
//             allowViewNavigation: false,
//             initialDisplayDate: DateTime.now(),
//             initialSelectedDate: DateTime.now(),
//             minDate: DateTime.now().subtract(const Duration(days: 1)),
//             maxDate: DateTime.now().add(const Duration(days: 200)),
//             confirmText: lan.ok,
//             cancelText: lan.cancel,
//             showTodayButton: false,
//             showActionButtons: true,
//             showNavigationArrow: true,
//             enableMultiView: false,
//             onSubmit: (p0) {
//               Get.back();
//               // ignore: avoid_print
//               print(p0);
//             },
//             onCancel: () => Get.back(),
//           ),
//         ),
//       ),
//     );
//   }

//   static dateRangePicker(BuildContext context) {
//     showCustomDateRangePicker(
//       context,
//       dismissible: true,
//       minimumDate: DateTime.now().subtract(const Duration(days: 30)),
//       maximumDate: DateTime.now().add(const Duration(days: 30)),
//       endDate: DateTime.now().add(const Duration(days: 5)),
//       startDate: DateTime.now().add(const Duration(days: 3)),
//       backgroundColor: Colors.white,
//       primaryColor: Colors.green,
//       onApplyClick: (start, end) {},
//       onCancelClick: () {},
//     );
//   }

//   static Future<DateTime?> monthYearPicker(BuildContext context) async {
//     final selectedDate = await showMonthPicker(
//       context: context,
//       initialDate: DateTime.now().subtract(Durations.long1),
//       lastDate: DateTime.now(),
//       selectedMonthBackgroundColor: AppColors.primaryColor,
//       selectedMonthTextColor: AppColors.white,
//       unselectedMonthTextColor: AppColors.black,
//       roundedCornersRadius: 10,
//       selectedMonthPadding: 5,
//       dismissible: false,
//       hideHeaderRow: false,
//       headerColor: AppColors.primaryColor,
//       headerTextColor: AppColors.white,
//     );
//     return selectedDate;
//   }
// }
