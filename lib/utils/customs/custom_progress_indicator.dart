import 'package:flutter/material.dart';
import 'package:loading_animation_widget/loading_animation_widget.dart';

class CustomProgressIndicator {
  indicator({Color color = Colors.black, double padingAll = 3}) {
    return Padding(
      padding: EdgeInsets.all(padingAll),
      child: LoadingAnimationWidget.threeArchedCircle(
        color: color,
        size: 50,
      ),
    );
  }
}
