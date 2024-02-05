// import 'package:animated_custom_dropdown/custom_dropdown.dart';
// import 'package:flutter/material.dart';
// import 'package:hq_analytics/utils/app_theme/app_colors.dart';
// import 'package:hq_analytics/utils/customs/app_text/app_text.dart';

// // ignore: must_be_immutable
// class AppCustomDropdown extends StatelessWidget {
//   List<String> options;
//   String hinttext;
//   Function(String value)? onSelect;
//   String initialValue;
//   bool isSearchable;
//   Key? formKey;
//   String? searchText;
//   String? selectOptionText;
//   IconData headIcon;

//   AppCustomDropdown(
//       {Key? key,
//       required this.options,
//       this.hinttext = "Hint text",
//       this.onSelect,
//       this.initialValue = "",
//       this.isSearchable = false,
//       this.formKey,
//       this.headIcon = Icons.search,
//       this.selectOptionText,
//       this.searchText})
//       : super(key: key);

//   @override
//   Widget build(BuildContext context) {
//     final decoration = CustomDropdownDecoration(
//       closedBorder: Border.all(color: AppColors.primaryColor),
//       closedBorderRadius: BorderRadius.circular(5),
//       expandedBorder: Border.all(color: AppColors.primaryColor),
//       expandedBorderRadius: BorderRadius.circular(5),
//       closedErrorBorderRadius: BorderRadius.circular(5),
//     );
//     return Column(
//       crossAxisAlignment: CrossAxisAlignment.start,
//       children: [
//         const SizedBox(height: 5),
//         Row(
//           mainAxisSize: MainAxisSize.min,
//           mainAxisAlignment: MainAxisAlignment.start,
//           children: [
//             Icon(
//               headIcon,
//               size: 11,
//               color: AppColors.primaryColor,
//             ),
//             const SizedBox(width: 5),
//             Expanded(
//               child: AppText.text(
//                 hinttext,
//                 fontsize: 14,
//                 fontweight: FontWeight.w500,
//                 color: AppColors.primaryColor,
//                 maxlines: 2,
//                 feildOverFlow: TextOverflow.ellipsis,
//                 textAlignment: TextAlign.start,
//               ),
//             ),
//           ],
//         ),
//         const SizedBox(height: 5),
//         Form(
//           key: formKey,
//           child: isSearchable
//               ? CustomDropdown<String>.search(
//                   hintText: hinttext,
//                   items: options,
//                   initialItem: initialValue.isEmpty ? null : initialValue,
//                   searchHintText: searchText,
//                   onChanged: (value) {
//                     try {
//                       onSelect!(value);
//                       // ignore: empty_catches
//                     } catch (e) {}
//                   },
//                   validator: (value) {
//                     if (value == null || value.isEmpty) {
//                       return selectOptionText ?? "Please select an option";
//                     }
//                     return null;
//                   },
//                   closedHeaderPadding:
//                       const EdgeInsets.symmetric(vertical: 11, horizontal: 8),
//                   validateOnChange: false,
//                   listItemBuilder: (context, item, isSelected, onItemSelect) {
//                     return AppText.text(
//                       item,
//                       textAlignment: TextAlign.left,
//                       fontsize: 15,
//                       fontweight: FontWeight.w400,
//                     );
//                   },
//                   decoration: decoration,
//                 )
//               : CustomDropdown<String>(
//                   hintText: hinttext,
//                   items: options,
//                   initialItem: initialValue.isEmpty ? null : initialValue,
//                   onChanged: (value) {
//                     try {
//                       onSelect!(value);
//                       // ignore: empty_catches
//                     } catch (e) {}
//                   },
//                   validator: (value) {
//                     if (value == null || value.isEmpty) {
//                       return selectOptionText ?? "Please select an option";
//                     }
//                     return null;
//                   },
//                   closedHeaderPadding:
//                       const EdgeInsets.symmetric(vertical: 11, horizontal: 8),
//                   validateOnChange: false,
//                   listItemBuilder: (context, item, isSelected, onItemSelect) {
//                     return AppText.text(
//                       item,
//                       textAlignment: TextAlign.left,
//                       fontsize: 15,
//                       fontweight: FontWeight.w400,
//                     );
//                   },
//                   decoration: decoration,
//                 ),
//         ),
//         const SizedBox(height: 5),
//       ],
//     );
//   }
// }
