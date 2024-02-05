import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../../app_theme/app_colors.dart';
import '../app_text/app_text.dart';

class CustomeAppBar {
  static AppBar simpleAppBar(
      {String title = "",
      bool isBackButton = true,
      GestureTapCallback? onBackButtonPressed,
      Color backgroundColor = const Color.fromARGB(255, 4, 48, 83),
      Color iconColor = AppColors.background,
      List<Widget>? actions,
      Color textColor = AppColors.background}) {
    return AppBar(
      backgroundColor: backgroundColor,
      title: AppText.text(
        title,
        color: textColor,
        fontsize: 18,
        fontweight: FontWeight.w700,
      ),
      iconTheme: IconThemeData(color: iconColor),
      automaticallyImplyLeading: true,
      leading: isBackButton
          ? GestureDetector(
              onTap: onBackButtonPressed ??
                  () {
                    Get.back();
                  },
              child: SizedBox(
                child: Icon(
                  Icons.arrow_back_ios,
                  color: iconColor,
                  size: 20,
                ),
              ),
            )
          : null,
      actions: actions ?? [],
    );
  }
}
