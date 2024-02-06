import 'package:flutter/material.dart';
import '../../app_theme/app_colors.dart';

class AppText {
  AppText._();
  static nameText(
    text, {
    textAlignment = TextAlign.center,
    color = AppColors.black,
    double fontsize = 16.0,
    feildOverFlow = TextOverflow.ellipsis,
    maxlines,
    FontWeight fontweight = FontWeight.bold,
    double height = 1.2,
    bool isShadow = false,
  }) {
    return Text(
      text.toString(),
      textAlign: textAlignment,
      overflow: feildOverFlow,
      maxLines: maxlines,
      style: TextStyle(
        color: color,
        fontFamily: 'Poppins',
        fontSize: fontsize,
        height: height,
        fontWeight: fontweight,
        shadows: isShadow
            ? [
                Shadow(
                  color: AppColors.black.withOpacity(0.3),
                  blurRadius: 15,
                  offset: const Offset(-2, 5),
                ),
              ]
            : [],
      ),
    );
  }

  static Text text(
    text, {
    textAlignment = TextAlign.center,
    color = AppColors.white,
    double fontsize = 10.0,
    TextOverflow feildOverFlow = TextOverflow.ellipsis,
    maxlines,
    FontWeight fontweight = FontWeight.w500,
    double height = 1.2,
    bool isShadow = false,
    bool isUnderline = false,
  }) {
    return Text(
      text.toString(),
      textAlign: textAlignment,
      overflow: feildOverFlow,
      maxLines: maxlines,
      style: TextStyle(
        color: color,
        fontSize: fontsize,
        height: height,
        fontFamily: 'Poppins',
        fontWeight: fontweight,
        decoration: isUnderline ? TextDecoration.underline : null,
        shadows: isShadow
            ? [
                Shadow(
                  color: AppColors.black.withOpacity(0.3),
                  blurRadius: 15,
                  offset: const Offset(-2, 5),
                ),
              ]
            : [],
      ),
    );
  }

  static verticalText(text,
      {textAlignment = TextAlign.center,
      color = AppColors.black,
      double fontsize = 16.0,
      feildOverFlow = TextOverflow.ellipsis,
      maxlines,
      FontWeight fontweight = FontWeight.w500,
      double height = 1.2,
      bool isShadow = false,
      int textDirection = 3}) {
    return RotatedBox(
      quarterTurns: textDirection,
      child: Text(
        text.toString(),
        textAlign: textAlignment,
        overflow: feildOverFlow,
        maxLines: maxlines,
        style: TextStyle(
          color: color,
          fontSize: fontsize,
          height: height,
          fontFamily: 'Poppins',
          fontWeight: fontweight,
          shadows: isShadow
              ? [
                  Shadow(
                    color: AppColors.black.withOpacity(0.3),
                    blurRadius: 15,
                    offset: const Offset(-2, 5),
                  ),
                ]
              : [],
        ),
      ),
    );
  }

  pageTitle({
    @required text,
    textAlignment = TextAlign.center,
    color = AppColors.black,
    double fontsize = 18.0,
    feildOverFlow = TextOverflow.ellipsis,
    maxlines,
    FontWeight fontweight = FontWeight.w600,
  }) {
    return Text(
      text.toString(),
      textAlign: textAlignment,
      overflow: feildOverFlow,
      maxLines: maxlines,
      style: TextStyle(
        color: color,
        fontSize: fontsize,
        fontWeight: fontweight,
      ),
    );
  }
}
