import 'package:crm_app/utils/customs/app_button/app_button.dart';
import 'package:crm_app/utils/customs/app_text/app_text.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

import '../../app_theme/app_colors.dart';

class CustomeAppBar {
  static AppBar simpleAppBar(
    BuildContext context, {
    GestureTapCallback? onBackButtonPressed,
    Color backgroundColor = AppColors.primaryColor,
    Color iconColor = AppColors.background,
  }) {
    return AppBar(
      backgroundColor: backgroundColor,
      iconTheme: IconThemeData(color: iconColor),
      automaticallyImplyLeading: true,
      shape: const Border(
        bottom: BorderSide(
          color: Colors.grey,
        ),
      ),
      actions: [
        Appbutton().primaryButton(
          context: context,
          callback: () {},
          title: "Stop Timer",
          backGroundColor: const Color.fromARGB(255, 214, 39, 27),
          textColor: Colors.white,
          width: 100,
          height: 40,
          fontsize: 15,
          borderradius: 5,
          isShadow: false,
          fontWeight: FontWeight.w400,
        ),
        appBarActionButton(
          counts: "1",
          icon: FontAwesomeIcons.clock,
          iconSize: 20,
        ),
        appBarActionButton(
          icon: Icons.add_circle_outline,
          iconSize: 25,
        ),
        appBarActionButton(
          counts: "95",
          icon: Icons.notifications,
          iconSize: 25,
        ),
        appBarActionButton(
          icon: FontAwesomeIcons.powerOff,
          iconSize: 20,
        ),
      ],
    );
  }

  static Widget appBarActionButton({
    IconData? icon,
    double? iconSize,
    String? counts,
  }) {
    return SizedBox(
      width: 45,
      height: 45,
      child: Stack(
        alignment: Alignment.center,
        children: [
          Positioned(
            child: InkWell(
              onTap: () {},
              child: Icon(
                icon ?? FontAwesomeIcons.powerOff,
                size: iconSize ?? 18,
              ),
            ),
          ),
          if (counts != null)
            Positioned(
              right: 0,
              top: 0,
              child: Container(
                constraints: const BoxConstraints(minWidth: 18.0),
                padding: const EdgeInsets.symmetric(vertical: 1, horizontal: 1),
                decoration: BoxDecoration(
                  color: const Color.fromARGB(255, 0, 89, 255),
                  borderRadius: BorderRadius.circular(35),
                ),
                child: Center(
                    child: AppText.text(
                  counts,
                  fontsize: 14,
                  fontweight: FontWeight.w500,
                  color: Colors.white,
                )),
              ),
            ),
        ],
      ),
    );
  }
}
