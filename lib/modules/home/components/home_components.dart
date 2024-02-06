import 'package:crm_app/utils/app_config.dart';
import 'package:crm_app/utils/app_theme/app_colors.dart';
import 'package:flutter/material.dart';

class HomeComponents {
  static Widget divider(BuildContext context) {
    return Container(
      height: 2,
      width: AppConfig(context).width,
      color: AppColors.white.withOpacity(0.5),
      margin: const EdgeInsets.only(bottom: 15, top: 15),
    );
  }

  static homeContainer(BuildContext context,
      {List<Widget>? childrens, Color? color}) {
    return Container(
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(8),
        color: color ?? AppColors.graphprimaryColor_1,
        boxShadow: [
          BoxShadow(
            color: AppColors.grey.withOpacity(0.5),
            spreadRadius: 1,
            blurRadius: 8,
            offset: const Offset(0, 1), // changes position of shadow
          ),
        ],
      ),
      padding: const EdgeInsets.all(5),
      margin: const EdgeInsets.only(bottom: 15, left: 5, right: 5),
      child: Column(
        children: childrens ?? [],
      ),
    );
  }

  static Widget bodyConatiner(
    BuildContext context, {
    Widget? child,
    bool elevation = false,
  }) {
    return Container(
      padding: const EdgeInsets.all(14),
      margin: elevation
          ? const EdgeInsets.symmetric(horizontal: 15, vertical: 10)
          : null,
      width: AppConfig(context).width,
      decoration: BoxDecoration(
          color: AppColors.primaryColor,
          border: Border.all(width: 1, color: AppColors.white.withOpacity(.2)),
          boxShadow: elevation
              ? [
                  BoxShadow(
                    color: AppColors.grey.withOpacity(0.5),
                    spreadRadius: 1,
                    blurRadius: 8,
                    offset: const Offset(0, 1), // changes position of shadow
                  ),
                ]
              : []),
      child: child ?? const SizedBox(),
    );
  }
}
