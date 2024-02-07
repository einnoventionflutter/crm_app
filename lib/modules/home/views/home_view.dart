import 'package:crm_app/utils/app_theme/app_colors.dart';
import 'package:crm_app/utils/customs/app_button/app_button.dart';
import 'package:crm_app/utils/customs/app_text/app_text.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:intl/intl.dart';
import 'package:percent_indicator/percent_indicator.dart';

import '../components/home_components.dart';

class HomeView extends StatelessWidget {
  const HomeView({super.key});

  @override
  Widget build(BuildContext context) {
    double percent = 100;
    final now = DateTime.now();
    final startOfWeek = now.subtract(Duration(days: now.weekday - 1));

    if (startOfWeek.weekday != DateTime.monday) {
      final difference = startOfWeek.weekday - DateTime.monday;
      startOfWeek.subtract(Duration(days: difference));
    }

    List<String> daysOfWeek = [];
    for (int i = 0; i < 7; i++) {
      final day = startOfWeek.add(Duration(days: i));
      final dayName = DateFormat('EEEE').format(day);
      daysOfWeek.add(dayName);
    }

    return Scaffold(
      backgroundColor: AppColors.primaryColor,
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(8.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              const SizedBox(height: 15),
              AppText.text(
                "Welcome Jabran Haider",
                color: Colors.white,
                fontsize: 22,
                fontweight: FontWeight.w500,
              ),
              const SizedBox(height: 35),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 10),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        AppText.text(
                          "12:50 pm",
                          fontsize: 20,
                          color: Colors.white,
                        ),
                        const SizedBox(height: 5),
                        AppText.text(
                          "Wednesday",
                          fontsize: 12,
                          color: Colors.white,
                          fontweight: FontWeight.w400,
                        ),
                        const SizedBox(height: 5),
                        AppText.text(
                          "Check in at - 10:24 am",
                          fontsize: 12,
                          color: Colors.grey,
                          fontweight: FontWeight.w500,
                        ),
                      ],
                    ),
                    Appbutton().primaryButton(
                      context: context,
                      callback: () {},
                      title: "Check Out",
                      backGroundColor: const Color.fromARGB(255, 226, 27, 13),
                      width: 120,
                      borderradius: 3,
                      fontWeight: FontWeight.w500,
                      fontsize: 14,
                      isShadow: false,
                      isIcon: true,
                      icon: Icons.logout,
                    ),
                  ],
                ),
              ),
              const SizedBox(height: 40),
              HomeComponents.bodyConatiner(
                context,
                child: Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Column(
                    children: [
                      Row(
                        children: [
                          ClipRRect(
                            borderRadius: BorderRadius.circular(5),
                            child: const Image(
                              image: AssetImage(
                                'assets/images/pic.jpeg',
                              ),
                              width: 80,
                              height: 80,
                              fit: BoxFit.cover,
                            ),
                          ),
                          const SizedBox(
                            width: 20,
                          ),
                          Row(
                            children: [
                              Column(
                                mainAxisAlignment: MainAxisAlignment.start,
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  AppText.text(
                                    'Jabran Haider',
                                    fontsize: 18,
                                    fontweight: FontWeight.w600,
                                    color: Colors.white,
                                  ),
                                  const SizedBox(height: 2),
                                  AppText.text(
                                    'Flutter Developer',
                                    fontsize: 16,
                                    fontweight: FontWeight.w400,
                                    color: Colors.white,
                                  ),
                                  const SizedBox(height: 10),
                                  AppText.text(
                                    'Employee Id: EMP-9017',
                                    fontsize: 14,
                                    fontweight: FontWeight.w400,
                                    color: const Color.fromARGB(
                                        255, 197, 197, 197),
                                  ),
                                ],
                              ),
                            ],
                          ),
                        ],
                      ),
                      HomeComponents.divider(context),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        crossAxisAlignment: CrossAxisAlignment.center,
                        children: [
                          Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              AppText.text(
                                'Open Tasks',
                                fontsize: 12,
                                fontweight: FontWeight.w500,
                                color: Colors.white,
                              ),
                              const SizedBox(height: 5),
                              AppText.text(
                                '3',
                                fontsize: 20,
                                fontweight: FontWeight.w700,
                                color: Colors.white,
                              ),
                            ],
                          ),
                          Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              AppText.text(
                                'Projects',
                                fontsize: 12,
                                fontweight: FontWeight.w500,
                                color: Colors.white,
                              ),
                              const SizedBox(height: 5),
                              AppText.text(
                                '3',
                                fontsize: 20,
                                color: Colors.white,
                                fontweight: FontWeight.w700,
                              ),
                            ],
                          ),
                        ],
                      )
                    ],
                  ),
                ),
              ),
              const SizedBox(height: 10),
              HomeComponents.bodyConatiner(context,
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      AppText.text('Tasks', fontsize: 16),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceAround,
                        crossAxisAlignment: CrossAxisAlignment.center,
                        children: [
                          Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              AppText.text(
                                '3',
                                fontsize: 20,
                                fontweight: FontWeight.w700,
                                color: const Color.fromARGB(255, 87, 126, 255),
                              ),
                              const SizedBox(height: 5),
                              AppText.text(
                                'Pending',
                                fontsize: 12,
                                fontweight: FontWeight.w500,
                                color: Colors.white,
                              ),
                            ],
                          ),
                          Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              AppText.text(
                                '3',
                                fontsize: 20,
                                fontweight: FontWeight.w700,
                                color: Colors.red,
                              ),
                              const SizedBox(height: 5),
                              AppText.text(
                                'Overdue',
                                fontsize: 12,
                                fontweight: FontWeight.w500,
                                color: Colors.white,
                              ),
                            ],
                          ),
                        ],
                      )
                    ],
                  )),
              const SizedBox(
                height: 10,
              ),
              HomeComponents.bodyConatiner(context,
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      AppText.text('Projects', fontsize: 14),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceAround,
                        crossAxisAlignment: CrossAxisAlignment.center,
                        children: [
                          Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              AppText.text(
                                '3',
                                fontsize: 20,
                                fontweight: FontWeight.w700,
                                color: const Color.fromARGB(255, 87, 126, 255),
                              ),
                              const SizedBox(height: 5),
                              AppText.text(
                                'In Progress',
                                fontsize: 12,
                                fontweight: FontWeight.w500,
                                color: Colors.white,
                              ),
                            ],
                          ),
                          Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              AppText.text(
                                '3',
                                fontsize: 20,
                                color: Colors.red,
                                fontweight: FontWeight.w700,
                              ),
                              const SizedBox(height: 5),
                              AppText.text(
                                'Overdue',
                                fontsize: 12,
                                fontweight: FontWeight.w500,
                                color: Colors.white,
                              ),
                            ],
                          ),
                        ],
                      ),
                    ],
                  )),
              const SizedBox(
                height: 10,
              ),
              HomeComponents.bodyConatiner(context,
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.start,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      AppText.text('My Active Timer', fontsize: 14),
                      const SizedBox(
                        height: 10,
                      ),
                      AppText.text('Feb 05, 2024 - 04:47 pm', fontsize: 12),
                      const SizedBox(
                        height: 10,
                      ),
                      HomeComponents.bodyConatiner(context,
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              AppText.text('Start Time'),
                              AppText.text('4:40'),
                            ],
                          )),
                      HomeComponents.bodyConatiner(context,
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              AppText.text('Task'),
                              AppText.text('UI/Ux Design'),
                            ],
                          )),
                      const SizedBox(
                        height: 10,
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.end,
                        children: [
                          Appbutton().primaryButton(
                              context: context,
                              fontsize: 10,
                              width: 110,
                              height: 40,
                              icon: Icons.pause,
                              isIcon: true,
                              title: 'Puase Timer',
                              callback: () {}),
                          const SizedBox(
                            width: 20,
                          ),
                          Appbutton().primaryButton(
                              context: context,
                              icon: Icons.stop,
                              isIcon: true,
                              fontsize: 10,
                              width: 110,
                              height: 40,
                              title: 'Stop Timer',
                              callback: () {}),
                        ],
                      )
                    ],
                  )),
              const SizedBox(
                height: 10,
              ),
              HomeComponents.bodyConatiner(
                context,
                child: Column(
                  children: [
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceAround,
                      children: [
                        AppText.text('Week TimeLogs', fontsize: 14),
                        AppText.text('3h 43m This Week', fontsize: 12),
                      ],
                    ),
                    const SizedBox(
                      height: 20,
                    ),
                    SingleChildScrollView(
                      scrollDirection: Axis.horizontal,
                      child: Row(
                        children: [
                          ...List.generate(
                            daysOfWeek.length,
                            (index) {
                              final weekday = DateFormat('E').format(
                                DateTime(now.year, now.month, index + 1),
                              );
                              return SizedBox(
                                width: 50,
                                height: 50,
                                child: Column(
                                  mainAxisAlignment: MainAxisAlignment.center,
                                  children: [
                                    CircleAvatar(
                                      backgroundColor: AppColors.secondaryColor,
                                      child: AppText.text(
                                        weekday,
                                        color: Colors.white,
                                        fontsize: 12,
                                        fontweight: FontWeight.w400,
                                      ),
                                    ),
                                  ],
                                ),
                              );
                            },
                          ),
                        ],
                      ),
                    ),
                    const SizedBox(
                      height: 15,
                    ),
                    LinearPercentIndicator(
                        //leaner progress bar
                        animation: true,
                        animationDuration: 1000,
                        lineHeight: 11.0,
                        percent: percent / 100,
                        // barRadius: const Radius.circular(10),
                        progressColor: AppColors.linearPercentIndecatorColor,
                        backgroundColor: AppColors.linearPercentIndecatorColor),
                    const SizedBox(
                      height: 15,
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceAround,
                      children: [
                        AppText.text('Duration:'),
                        AppText.text('0 S'),
                        AppText.text('Break:'),
                        AppText.text('0 S'),
                      ],
                    )
                  ],
                ),
              ),
              const SizedBox(
                height: 10,
              ),
              HomeComponents.bodyConatiner(
                context,
                child: Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      AppText.text(
                        'Tickets',
                        color: AppColors.white,
                        fontsize: 16,
                      ),
                      const SizedBox(
                        height: 10,
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          AppText.text('Tickets#',
                              color: AppColors.white, fontsize: 12),
                          AppText.text('Ticket Subjet',
                              color: AppColors.white, fontsize: 12),
                          AppText.text('Status',
                              color: AppColors.white, fontsize: 12),
                          AppText.text('Requested On',
                              color: AppColors.white, fontsize: 12),
                        ],
                      ),
                      HomeComponents.divider(context),
                      Column(
                        mainAxisAlignment: MainAxisAlignment.end,
                        crossAxisAlignment: CrossAxisAlignment.center,
                        children: [
                          const Icon(
                            // ignore: deprecated_member_use
                            FontAwesomeIcons.tasks,
                            color: AppColors.linearPercentIndecatorColor,
                            size: 30,
                          ),
                          const SizedBox(
                            height: 40,
                          ),
                          Align(
                              alignment: Alignment.center,
                              child: AppText.text('-No Record Found-.')),
                          const SizedBox(
                            height: 20,
                          ),
                        ],
                      ),
                    ],
                  ),
                ),
              ),
              const SizedBox(
                height: 10,
              ),
              HomeComponents.bodyConatiner(
                context,
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    AppText.text('Employee Appcreciations', fontsize: 14),
                    const SizedBox(
                      height: 25,
                    ),
                    const Align(
                      alignment: Alignment.center,
                      child: Icon(
                        FontAwesomeIcons.award,
                        color: AppColors.linearPercentIndecatorColor,
                        size: 30,
                      ),
                    ),
                    const SizedBox(
                      height: 30,
                    ),
                    Align(
                        alignment: Alignment.center,
                        child: AppText.text('-No Record Found-.')),
                    const SizedBox(
                      height: 20,
                    ),
                  ],
                ),
              ),
              const SizedBox(
                height: 10,
              ),
              HomeComponents.bodyConatiner(
                context,
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    AppText.text('On Leave Today', fontsize: 14),
                    const SizedBox(
                      height: 25,
                    ),
                    const Align(
                      alignment: Alignment.center,
                      child: Icon(
                        FontAwesomeIcons.planeDeparture,
                        color: AppColors.linearPercentIndecatorColor,
                        size: 30,
                      ),
                    ),
                    const SizedBox(
                      height: 30,
                    ),
                    Align(
                        alignment: Alignment.center,
                        child: AppText.text('-No Record Found-.')),
                    const SizedBox(
                      height: 20,
                    ),
                  ],
                ),
              ),
              const SizedBox(
                height: 10,
              ),
              HomeComponents.bodyConatiner(
                context,
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    AppText.text('On Work From Home Today', fontsize: 14),
                    const SizedBox(
                      height: 25,
                    ),
                    const Align(
                      alignment: Alignment.center,
                      child: Icon(
                        // ignore: deprecated_member_use
                        FontAwesomeIcons.homeUser,
                        color: AppColors.linearPercentIndecatorColor,
                        size: 30,
                      ),
                    ),
                    const SizedBox(
                      height: 30,
                    ),
                    Align(
                        alignment: Alignment.center,
                        child: AppText.text('-No Record Found-.')),
                    const SizedBox(
                      height: 20,
                    ),
                  ],
                ),
              ),
              const SizedBox(
                height: 10,
              ),
              HomeComponents.bodyConatiner(
                context,
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    AppText.text("Today's Joinings & Work Anniversary",
                        fontsize: 14),
                    const SizedBox(
                      height: 25,
                    ),
                    const Align(
                      alignment: Alignment.center,
                      child: Icon(
                        // ignore: deprecated_member_use
                        FontAwesomeIcons.birthdayCake,
                        color: AppColors.linearPercentIndecatorColor,
                        size: 30,
                      ),
                    ),
                    const SizedBox(
                      height: 30,
                    ),
                    Align(
                        alignment: Alignment.center,
                        child: AppText.text('-No Record Found-.')),
                    const SizedBox(
                      height: 20,
                    ),
                  ],
                ),
              ),
              const SizedBox(
                height: 10,
              ),
              HomeComponents.bodyConatiner(
                context,
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Row(
                      crossAxisAlignment: CrossAxisAlignment.center,
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        AppText.text('Shift Schedule', fontsize: 14),
                        Appbutton().primaryButton(
                            context: context,
                            width: 120,
                            title: 'Employee Shift',
                            callback: () {})
                      ],
                    ),
                    // ListView.builder(
                    //     scrollDirection: Axis.vertical,
                    //     itemCount: 7,
                    //     itemBuilder: (context, index) {
                    //       return Row(
                    //         children: [
                    //           AppText.text('05-02-2024'),
                    //           AppText.text('05-02-2024'),
                    //           AppText.text('05-02-2024'),
                    //           AppText.text('05-02-2024'),
                    //         ],
                    //       );
                    //     })
                    const SizedBox(
                      height: 15,
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        AppText.text(
                          '05-02-2024',
                        ),
                        AppText.text('Monday'),
                        AppText.text('General Shift'),
                        AppText.text('--'),
                      ],
                    ),
                    HomeComponents.divider(
                      context,
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        AppText.text('06-02-2024'),
                        AppText.text('Tuesday'),
                        AppText.text('General Shift'),
                        AppText.text('--'),
                      ],
                    ),
                    HomeComponents.divider(
                      context,
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        AppText.text('07-02-2024'),
                        AppText.text('Wednesday'),
                        AppText.text('General Shift'),
                        AppText.text('--'),
                      ],
                    ),
                    HomeComponents.divider(
                      context,
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        AppText.text('08-02-2024'),
                        AppText.text('Thursday'),
                        AppText.text('General Shift'),
                        AppText.text('--'),
                      ],
                    ),
                    HomeComponents.divider(
                      context,
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        AppText.text('09-02-2024'),
                        AppText.text('Friday'),
                        AppText.text('General Shift'),
                        AppText.text('--'),
                      ],
                    ),
                    HomeComponents.divider(
                      context,
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        AppText.text('10-02-2024'),
                        AppText.text('Saturday'),
                        AppText.text('General Shift'),
                        AppText.text('--'),
                      ],
                    ),
                    HomeComponents.divider(
                      context,
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        AppText.text('11-02-2024'),
                        AppText.text('Sunday'),
                        AppText.text('General Shift'),
                        AppText.text('--'),
                      ],
                    ),
                    HomeComponents.divider(
                      context,
                    ),
                  ],
                ),
              ),
              const SizedBox(
                height: 10,
              ),
              HomeComponents.bodyConatiner(
                context,
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    AppText.text('My Task', fontsize: 14),

                    // ListView.builder(
                    //     scrollDirection: Axis.vertical,
                    //     itemCount: 7,
                    //     itemBuilder: (context, index) {
                    //       return Row(
                    //         children: [
                    //           AppText.text('05-02-2024'),
                    //           AppText.text('05-02-2024'),
                    //           AppText.text('05-02-2024'),
                    //           AppText.text('05-02-2024'),
                    //         ],
                    //       );
                    //     })
                    const SizedBox(
                      height: 15,
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceAround,
                      children: [
                        AppText.text('Task#', fontsize: 12),
                        AppText.text('Task', fontsize: 12),
                        AppText.text('Status', fontsize: 12),
                        AppText.text('Due Date', fontsize: 12),
                      ],
                    ),
                    HomeComponents.divider(
                      context,
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        AppText.text('#PRO-020-A-21'),
                        AppText.text('UI/UX Design'),
                        AppText.text('Doing'),
                        AppText.text('07-02-2024'),
                      ],
                    ),
                    HomeComponents.divider(
                      context,
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        AppText.text('#PRO-020-A-21'),
                        AppText.text('UI/UX Design'),
                        AppText.text('Doing'),
                        AppText.text('07-02-2024'),
                      ],
                    ),
                    HomeComponents.divider(
                      context,
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        AppText.text('#PRO-020-A-21'),
                        AppText.text('UI/UX Design'),
                        AppText.text('Doing'),
                        AppText.text('07-02-2024'),
                      ],
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
