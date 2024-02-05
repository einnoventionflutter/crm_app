import 'package:flutter/material.dart';
import 'package:shimmer/shimmer.dart';

import '../../app_config.dart';

class AppShimmerLoading {
  static cardLoading(BuildContext context) {
    const baseColor = Colors.white;
    const highlightColor = Color.fromARGB(255, 222, 222, 222);
    var dur = const Duration(milliseconds: 800);
    return SafeArea(
      child: Padding(
        padding: const EdgeInsets.only(right: 10, left: 10, top: 10),
        child: SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              for (int j = 0; j < 5; j++) ...{
                Shimmer.fromColors(
                  baseColor: baseColor,
                  period: dur,
                  highlightColor: highlightColor,
                  child: Container(
                    height: 35,
                    width: AppConfig(context).width * 0.50,
                    decoration: BoxDecoration(
                      color: highlightColor,
                      borderRadius: BorderRadius.circular(0),
                    ),
                  ),
                ),
                const SizedBox(
                  height: 10,
                ),
                Shimmer.fromColors(
                  baseColor: baseColor,
                  highlightColor: highlightColor,
                  period: dur,
                  child: Container(
                    height: 20,
                    width: AppConfig(context).width * 0.70,
                    decoration: BoxDecoration(
                      color: highlightColor,
                      borderRadius: BorderRadius.circular(0),
                    ),
                  ),
                ),
                SizedBox(
                  height: j + 10,
                ),
                SingleChildScrollView(
                  scrollDirection: Axis.horizontal,
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.start,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      for (int i = 0; i < 5; i++) ...{
                        Shimmer.fromColors(
                          baseColor: baseColor,
                          highlightColor: highlightColor,
                          period: dur,
                          child: Container(
                            height: 120,
                            width: 100,
                            decoration: BoxDecoration(
                              color: highlightColor,
                              borderRadius: BorderRadius.circular(10),
                            ),
                          ),
                        ),
                        const SizedBox(
                          width: 20,
                        ),
                      }
                    ],
                  ),
                ),
                const SizedBox(
                  height: 30,
                ),
              }
            ],
          ),
        ),
      ),
    );
  }
}
