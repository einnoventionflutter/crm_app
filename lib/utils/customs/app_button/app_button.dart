import 'package:flutter/material.dart';
import '../../app_config.dart';
import '../../app_theme/app_colors.dart';
import '../app_text/app_text.dart';
import '../custom_progress_indicator.dart';

class Appbutton {
  Widget primaryButton({
    required BuildContext context,
    String title = "",
    required Function callback,
    double height = 40,
    Color textColor = AppColors.background,
    double width = 50,
    bool isShadow = true,
    bool isIcon = false,
    IconData icon = Icons.send,
    double fontsize = 12,
    bool onlyIcon = false,
    double borderradius = 10,
    Color backGroundColor = AppColors.primaryButtonColor,
  }) {
    return Material(
      borderRadius: BorderRadius.circular(borderradius),
      color: backGroundColor,
      child: InkWell(
        borderRadius: BorderRadius.circular(borderradius),
        onTap: () => {callback()},
        child: Container(
          decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(borderradius),
              boxShadow: isShadow
                  ? [
                      BoxShadow(
                        color: backGroundColor.withOpacity(0.3),
                        spreadRadius: 5,
                        blurRadius: 7,
                        offset:
                            const Offset(0, 3), // changes position of shadow
                      ),
                    ]
                  : [],
              border: Border.all(
                color: Colors.white,
                width: 0.5,
              )),
          height: height,
          width: width,
          child: onlyIcon
              ? Icon(
                  icon,
                  color: textColor,
                )
              : Center(
                  child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    if (isIcon) ...{
                      Icon(
                        icon,
                        color: textColor,
                        size: 15,
                      ),
                    },
                    AppText.text(
                      title,
                      fontsize: fontsize == 0
                          ? AppConfig(context).width / 30
                          : fontsize,
                      fontweight: FontWeight.w700,
                      color: textColor,
                    ),
                  ],
                )),
        ),
      ),
    );
  }

  primaryLoadingButton({
    bool isLoading = false,
    String title = "Button",
    double beforeLoadingBoarderRadius = 8,
    Color backgroundColor = AppColors.primaryColor,
    Color textColor = AppColors.background,
    Color loadingIndicatorColor = AppColors.background,
    double fontsize = 18,
    FontWeight fontWeight = FontWeight.w600,
    double height = 50,
    double width = 300,
    required GestureTapCallback callback,
    bool isShadow = false,
    Color shadowColor = AppColors.background,

    // this.isDelayPressed = false,
    // this.delayPressedDurationInMilliseconds = 500,
    int durationInMilliseconds = 200,
  }) {
    final BorderRadiusGeometry borderRadius =
        BorderRadius.circular(isLoading ? 50 : beforeLoadingBoarderRadius);

    double wd = isLoading ? height : width;
    double hi = height;
    return GestureDetector(
      onTap: callback,
      child: AnimatedContainer(
        alignment: Alignment.center,
        width: wd,
        height: hi,
        decoration: BoxDecoration(
            color: backgroundColor,
            borderRadius: borderRadius,
            boxShadow: [
              if (isShadow)
                BoxShadow(
                  color: shadowColor, // Shadow color
                  offset: const Offset(
                      0, 2), // Shadow position (horizontal, vertical)
                  blurRadius: 10, // Shadow blur radius
                  spreadRadius: 5, // Shadow spread radius
                ),
            ]),
        duration: Duration(milliseconds: durationInMilliseconds),
        child: isLoading
            ? CustomProgressIndicator().indicator(color: loadingIndicatorColor)
            : AppText.text(
                title,
                fontsize: fontsize,
                fontweight: fontWeight,
                color: textColor,
              ),
      ),
    );
  }
}

// // ignore: must_be_immutable
// class PrimaryButtonWithLoading extends StatelessWidget {
//   bool isLoading;
//   String title;
//   double beforeLoadingBoarderRadius;
//   int durationInMilliseconds;
//   Color backgroundColor;
//   Color textColor;
//   Color loadingIndicatorColor;
//   GestureTapCallback? callback;
//   FontWeight fontWeight;
//   double fontsize;
//   double width;
//   double height;
//   bool isShadow;
//   Color shadowColor;

//   // bool isDelayPressed;
//   // int delayPressedDurationInMilliseconds;

//   PrimaryButtonWithLoading({
//     super.key,
//     this.isLoading = false,
//     this.title = "Button",
//     this.beforeLoadingBoarderRadius = 8,
//     this.backgroundColor = AppColors.primaryColor,
//     this.textColor = AppColors.background,
//     this.loadingIndicatorColor = AppColors.background,
//     this.fontsize = 18,
//     this.fontWeight = FontWeight.w600,
//     this.height = 50,
//     this.width = 300,
//     this.callback,
//     this.isShadow = false,
//     this.shadowColor = AppColors.background,

//     // this.isDelayPressed = false,
//     // this.delayPressedDurationInMilliseconds = 500,
//     this.durationInMilliseconds = 200,
//   });

//   @override
//   Widget build(BuildContext context) {
//     final BorderRadiusGeometry borderRadius =
//         BorderRadius.circular(isLoading ? 50 : beforeLoadingBoarderRadius);

//     double wd = isLoading ? height : width;
//     double hi = height;
//     return 
//   }
// }
