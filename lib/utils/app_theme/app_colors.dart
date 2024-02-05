import 'package:flutter/material.dart';

class AppColors {
  // ignore: prefer_const_declarations
  static const Color primaryDark = Color.fromARGB(255, 10, 100, 84);
  static const Color primaryLight = Color.fromARGB(255, 42, 136, 119);
  static const Color primaryColor = Color(0xff24695c);
  static const Color secondaryColor = Color(0xff3cb97e);
  static const Color primaryButtonColor = Color(0xff24695c);
  static const Color whiteColor = Colors.white;
  static const Color black = Colors.black;
  static const Color fieldColor = Color(0xffF7B287);
  static const Color background = Color.fromARGB(255, 255, 255, 255);
  static const Color transparent = Colors.transparent;
  static const Color orange = Color(0xffFF8616);
  static const Color grey = Color(0xff757575);
  static const Color white = Colors.white;
  static const Color primarytext = Color(0xffE9460F);
  static const Color homeScreenColor = Color(0xffFFF5F5);
  static const Color breathingStepsColor = Color(0xffE9460F);
  static const Color selectedColor = Color.fromARGB(255, 236, 154, 1);
  static const Color graphprimaryColor_1 = Color(0xff48C080);
  static const Color graphprimaryColor_3 = Color(0xff3375BF);
  static const Color graphprimaryColor_2 = Color(0xffBC4040);

  static const Gradient primaryGradient = LinearGradient(
    colors: [
      Color.fromARGB(255, 41, 107, 199),
      Color.fromARGB(255, 53, 73, 154),
      Color.fromARGB(255, 10, 61, 144),
    ],
    begin: Alignment.centerRight,
    end: Alignment.bottomCenter,
    // radius: 0.75,
  );
  static const Gradient memoriesGradieat = LinearGradient(
    colors: [
      Color.fromARGB(255, 5, 190, 223),
      Color.fromARGB(255, 5, 172, 223),
      Color.fromARGB(255, 0, 153, 255),
      Color.fromARGB(255, 0, 157, 255),
    ],
    begin: Alignment.topCenter,
    end: Alignment.bottomLeft,
    // radius: 0.75,
  );

  // static Color textcolour= Color(0xff5B6974);
  // static Color hintcolour= Color(0xffB4B4B4);
  // static Color textfieldbordercolor=Color(0xffE3E3E3);
}
