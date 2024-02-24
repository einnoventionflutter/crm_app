import 'package:einnovention/utils/app_config.dart';
import 'package:einnovention/utils/customs/app_custom_drop_down.dart';
import 'package:einnovention/utils/customs/app_text/app_text.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:intl/intl.dart';

class AttendanceView extends StatelessWidget {
  const AttendanceView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final now = DateTime.now();
    // final currentMonth = DateTime(now.year, now.month);
    final daysInMonth = DateTime(now.year, now.month + 1, 0).day;
    return Scaffold(
      backgroundColor: const Color.fromARGB(255, 3, 42, 73),
      body: Container(
        margin: const EdgeInsets.symmetric(vertical: 0, horizontal: 10),
        child: Column(
          children: [
            const SizedBox(height: 10),
            Row(
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                AppText.text(
                  "Emplyee",
                  color: Colors.white,
                  fontsize: 16,
                  fontweight: FontWeight.w400,
                ),
                const SizedBox(width: 10),
                Container(
                  decoration: BoxDecoration(
                    // color: Colors.white.withOpacity(0.1),
                    border: Border.all(
                        color: const Color.fromARGB(255, 52, 67, 88), width: 1),
                  ),
                  padding: const EdgeInsets.all(5),
                  child: Row(
                    children: [
                      const CircleAvatar(
                        radius: 15,
                        backgroundImage: AssetImage(
                          "assets/images/applogo.png",
                        ),
                      ),
                      const SizedBox(width: 5),
                      AppText.text(
                        "Jabran Haider",
                        color: Colors.white,
                        fontsize: 16,
                        fontweight: FontWeight.w400,
                      ),
                    ],
                  ),
                )
              ],
            ),
            const SizedBox(height: 10),
            Row(
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                AppText.text(
                  "Month",
                  color: Colors.white,
                  fontsize: 16,
                  fontweight: FontWeight.w400,
                ),
                const SizedBox(width: 10),
                SizedBox(
                  width: 160,
                  // height: 40,
                  child: AppCustomDropdown(
                    options: const [
                      "January",
                      "February",
                      "March",
                      "April",
                      "May",
                      "June",
                      "July",
                      "August",
                      "September",
                      "October",
                      "November",
                      "December"
                    ],
                    hinttext: "Month",
                    isSearchable: true,
                  ),
                )
              ],
            ),
            const SizedBox(height: 10),
            Row(
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                AppText.text(
                  "Year",
                  color: Colors.white,
                  fontsize: 16,
                  fontweight: FontWeight.w400,
                ),
                const SizedBox(width: 10),
                SizedBox(
                  width: 160,
                  // height: 40,
                  child: AppCustomDropdown(
                    options: const [
                      "2024",
                      "2023",
                      "2022",
                      "2021",
                      "2020",
                      "2019"
                    ],
                    hinttext: "Year",
                    isSearchable: true,
                  ),
                )
              ],
            ),
            const SizedBox(height: 20),
            Container(
              width: AppConfig(context).width,
              decoration: BoxDecoration(
                // color: Colors.white.withOpacity(0.08),
                border: Border.all(
                    color: const Color.fromARGB(255, 64, 83, 109), width: 1),
              ),
              padding: const EdgeInsets.symmetric(vertical: 10, horizontal: 10),
              child: Column(
                children: [
                  Wrap(
                    children: [
                      AppText.text(
                        "Note:",
                        color: Colors.white,
                      ),
                      ...List.generate(
                        TextWithIcons.statuses.length,
                        (index) {
                          final d = TextWithIcons.statuses[index];
                          return Row(
                            mainAxisSize: MainAxisSize.min,
                            children: [
                              const SizedBox(width: 20),
                              Icon(
                                d.icon,
                                color: d.color,
                                size: 18,
                              ),
                              const SizedBox(width: 2),
                              Icon(
                                Icons.arrow_forward,
                                color: Colors.white.withOpacity(0.5),
                                size: 14,
                              ),
                              const SizedBox(width: 2),
                              AppText.text(d.text,
                                  color: Colors.white,
                                  fontweight: FontWeight.w400,
                                  fontsize: 14),
                              const SizedBox(width: 10),
                              AppText.text(
                                "|",
                                color: Colors.white,
                              ),
                            ],
                          );
                        },
                      ),
                    ],
                  ),
                  const SizedBox(height: 15),
                  Container(
                    margin: const EdgeInsets.symmetric(vertical: 10),
                    width: AppConfig(context).width,
                    decoration: BoxDecoration(
                      border: Border.all(
                          color: const Color.fromARGB(255, 64, 83, 109),
                          width: 1),
                    ),
                    child: SingleChildScrollView(
                      scrollDirection: Axis.horizontal,
                      child: Column(
                        children: [
                          Container(
                            decoration: BoxDecoration(
                              color: Colors.white.withOpacity(0.1),
                              border: Border.all(
                                  color: const Color.fromARGB(255, 52, 67, 88),
                                  width: 1),
                            ),
                            padding: const EdgeInsets.symmetric(horizontal: 10),
                            child: Row(
                              children: [
                                SizedBox(
                                  width: 120,
                                  child: AppText.text(
                                    "Emplyee",
                                    color: Colors.white,
                                    fontsize: 16,
                                    fontweight: FontWeight.w400,
                                    textAlignment: TextAlign.left,
                                  ),
                                ),
                                ...List.generate(
                                  daysInMonth,
                                  (index) {
                                    final weekday = DateFormat('E').format(
                                      DateTime(now.year, now.month, index + 1),
                                    );
                                    return SizedBox(
                                      width: 50,
                                      height: 50,
                                      child: Column(
                                        mainAxisAlignment:
                                            MainAxisAlignment.center,
                                        children: [
                                          AppText.text(
                                            index + 1,
                                            color: Colors.white,
                                            fontsize: 12,
                                            fontweight: FontWeight.w400,
                                          ),
                                          const SizedBox(height: 5),
                                          AppText.text(
                                            weekday,
                                            color: Colors.white,
                                            fontsize: 12,
                                            fontweight: FontWeight.w400,
                                          )
                                        ],
                                      ),
                                    );
                                  },
                                ),
                              ],
                            ),
                          ),
                          Container(
                            height: 70,
                            decoration: BoxDecoration(
                              border: Border.all(
                                color: const Color.fromARGB(255, 52, 67, 88),
                                width: 1,
                              ),
                            ),
                            padding: const EdgeInsets.symmetric(horizontal: 10),
                            child: Row(
                              children: [
                                SizedBox(
                                  width: 120,
                                  child: Column(
                                    mainAxisAlignment:
                                        MainAxisAlignment.spaceEvenly,
                                    children: [
                                      Row(
                                        mainAxisAlignment:
                                            MainAxisAlignment.spaceEvenly,
                                        children: [
                                          const CircleAvatar(
                                            radius: 15,
                                            backgroundColor: Colors.green,
                                            backgroundImage: AssetImage(
                                                "assets/images/applogo.png"),
                                          ),
                                          AppText.text(
                                            "Jabran\nHaider",
                                            maxlines: 2,
                                            color: Colors.white,
                                            fontsize: 14,
                                            fontweight: FontWeight.w400,
                                            textAlignment: TextAlign.left,
                                          )
                                        ],
                                      ),
                                      AppText.text(
                                        "Flutter Developer",
                                        maxlines: 2,
                                        color: Colors.white,
                                        fontsize: 12,
                                        fontweight: FontWeight.w400,
                                        textAlignment: TextAlign.left,
                                      ),
                                    ],
                                  ),
                                ),
                                ...List.generate(daysInMonth, (index) {
                                  return const SizedBox(
                                    width: 50,
                                    child: Icon(
                                      Icons.star,
                                      color: Colors.yellow,
                                      size: 18,
                                    ),
                                  );
                                })
                              ],
                            ),
                          )
                        ],
                      ),
                    ),
                  )
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}

class TextWithIcons {
  IconData icon;
  String text;
  Color color;
  TextWithIcons(this.icon, this.text, this.color);
  static List<TextWithIcons> statuses = [
    TextWithIcons(Icons.star, "Holiday", Colors.yellow),
    TextWithIcons(Icons.calendar_today, "Day Off", Colors.red),
    TextWithIcons(Icons.check, "Present", Colors.blue),
    TextWithIcons(Icons.star_half_rounded, "Half Day", Colors.red),
    TextWithIcons(Icons.info, "Late", Colors.blue),
    TextWithIcons(Icons.close_rounded, "Absent", Colors.grey),
    TextWithIcons(FontAwesomeIcons.planeDeparture, "On Leave", Colors.red),
  ];
}
