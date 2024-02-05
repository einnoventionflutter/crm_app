// import 'dart:io';
// import 'package:flutter/material.dart';
// import 'package:get/get.dart';
// import 'package:hq_analytics/utils/app_config.dart';
// import 'package:hq_analytics/utils/app_theme/app_colors.dart';
// import 'package:hq_analytics/utils/customs/app_button/app_button.dart';
// import 'package:flutter_gen/gen_l10n/app_localizations.dart';
// import 'package:hq_analytics/utils/customs/app_text/app_text.dart';
// import 'package:image_picker/image_picker.dart';

// // ignore: must_be_immutable
// class AppImagePicker extends StatefulWidget {
//   Function(XFile image) onImagePicked;
//   BoxFit? fit;
//   double? width;
//   double? height;
//   String? title;

//   AppImagePicker({
//     Key? key,
//     required this.onImagePicked,
//     this.fit,
//     this.width,
//     this.height,
//     this.title,
//   }) : super(key: key);
//   @override
//   State<AppImagePicker> createState() => _AppImagePickerState();
// }

// class _AppImagePickerState extends State<AppImagePicker> {
//   XFile? _imageFile;

//   @override
//   Widget build(BuildContext context) {
//     return InkWell(
//       onTap: () async {
//         showBttomSheetImagePicker(context, (source) async {
//           Get.back();
//           final file = await ImagePicker().pickImage(source: source);
//           if (file != null) {
//             setState(() {
//               _imageFile = file;
//               widget.onImagePicked(file);
//             });
//           }
//         });
//       },
//       borderRadius: BorderRadius.circular(8),
//       child: Column(
//         crossAxisAlignment: CrossAxisAlignment.start,
//         children: [
//           Row(
//             children: [
//               const Icon(
//                 Icons.upload,
//                 size: 16,
//                 color: AppColors.primaryColor,
//               ),
//               const SizedBox(width: 0),
//               Expanded(
//                 child: AppText.text(
//                   widget.title,
//                   fontsize: 14,
//                   fontweight: FontWeight.w500,
//                   color: AppColors.primaryColor,
//                   maxlines: 2,
//                   feildOverFlow: TextOverflow.ellipsis,
//                   textAlignment: TextAlign.start,
//                 ),
//               ),
//             ],
//           ),
//           Center(
//             child: Container(
//               width: widget.width ?? AppConfig(context).width * 0.35,
//               height: widget.height ?? AppConfig(context).width * 0.35,
//               margin: const EdgeInsets.only(top: 3, bottom: 4),
//               decoration: BoxDecoration(
//                 borderRadius: BorderRadius.circular(8),
//                 color: AppColors.primaryDark.withOpacity(0.5),
//                 border: Border.all(
//                   color: AppColors.primaryColor,
//                   width: 1.5,
//                 ),
//               ),
//               child: _imageFile != null
//                   ? ClipRRect(
//                       borderRadius: BorderRadius.circular(8),
//                       child: Image.file(
//                         File(_imageFile!.path),
//                         fit: widget.fit ?? BoxFit.cover,
//                       ),
//                     )
//                   : const Center(
//                       child: Icon(
//                         Icons.image,
//                         size: 40,
//                         color: AppColors.background,
//                       ),
//                     ),
//             ),
//           ),
//         ],
//       ),
//     );
//   }

//   void showBttomSheetImagePicker(
//       BuildContext context, Function(ImageSource imageSource) onSelect) {
//     final lan = AppLocalizations.of(context)!;

//     showModalBottomSheet(
//       context: context,
//       shape: const RoundedRectangleBorder(
//         borderRadius: BorderRadius.only(
//           topLeft: Radius.circular(15.0),
//           topRight: Radius.circular(15.0),
//         ),
//       ),
//       backgroundColor: AppColors.white,
//       builder: (BuildContext context) {
//         return Container(
//           padding: const EdgeInsets.symmetric(horizontal: 10, vertical: 15),
//           child: Column(
//             mainAxisSize: MainAxisSize.min,
//             crossAxisAlignment: CrossAxisAlignment.center,
//             children: [
//               Appbutton().primaryButton(
//                 context: context,
//                 callback: () => onSelect(ImageSource.camera),
//                 title: lan.camera,
//                 borderradius: 8,
//                 width: AppConfig(context).width,
//                 height: 50,
//               ),
//               const SizedBox(height: 10),
//               Appbutton().primaryButton(
//                 context: context,
//                 callback: () => onSelect(ImageSource.gallery),
//                 title: lan.gallery,
//                 width: AppConfig(context).width,
//                 height: 50,
//                 borderradius: 8,
//               ),
//               const SizedBox(height: 10),
//               Appbutton().primaryButton(
//                 context: context,
//                 callback: () {
//                   Get.back();
//                 },
//                 title: lan.cancel,
//                 borderradius: 8,
//                 width: AppConfig(context).width,
//                 height: 50,
//                 // fontsize: 18,
//               ),
//             ],
//           ),
//         );
//       },
//     );
//   }
// }
