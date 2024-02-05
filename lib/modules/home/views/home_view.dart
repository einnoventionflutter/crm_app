import 'package:crm_app/utils/app_theme/app_colors.dart';
import 'package:crm_app/utils/customs/app_bar/custome_app_bar.dart';
import 'package:crm_app/utils/customs/app_button/app_button.dart';
import 'package:crm_app/utils/customs/app_text/app_text.dart';
import 'package:flutter/material.dart';

import '../components/home_components.dart';

class HomeView extends StatelessWidget {
  const HomeView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.primaryColor,
      appBar: CustomeAppBar.simpleAppBar(title: 'Dashboard'),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(8.0),
          child: Column(
            children: [
              HomeComponents.bodyConatiner(
                context,
                child: Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Column(
                    children: [
                      Row(
                        children: [
                          ClipRRect(
                            borderRadius: BorderRadius.circular(10),
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
                            width: 30,
                          ),
                          Row(
                            children: [
                              Column(
                                mainAxisAlignment: MainAxisAlignment.start,
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  AppText.text(
                                    'Name',
                                    color: AppColors.white,
                                  ),
                                  AppText.text('Feild', color: AppColors.white),
                                  AppText.text('Employee_Id',
                                      color: AppColors.white),
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
                            children: [
                              AppText.text('Open Tasks'),
                              AppText.text('3'),
                            ],
                          ),
                          Column(
                            children: [
                              AppText.text('Proojects'),
                              AppText.text('3'),
                            ],
                          ),
                        ],
                      )
                    ],
                  ),
                ),
              ),
              const SizedBox(
                height: 10,
              ),
              HomeComponents.bodyConatiner(context,
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      AppText.text('Tasks', fontsize: 22),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceAround,
                        crossAxisAlignment: CrossAxisAlignment.center,
                        children: [
                          Column(
                            children: [
                              AppText.text('3'),
                              AppText.text('Pending'),
                            ],
                          ),
                          Column(
                            children: [
                              AppText.text('3'),
                              AppText.text('Overdue'),
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
                      AppText.text('Projects', fontsize: 22),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceAround,
                        crossAxisAlignment: CrossAxisAlignment.center,
                        children: [
                          Column(
                            children: [
                              AppText.text('3'),
                              AppText.text('In Progress'),
                            ],
                          ),
                          Column(
                            children: [
                              AppText.text('3'),
                              AppText.text('Overdue'),
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
                    mainAxisAlignment: MainAxisAlignment.start,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      AppText.text('My Active Timer', fontsize: 18),
                      const SizedBox(
                        height: 10,
                      ),
                      AppText.text('Feb 05, 2024 - 04:47 pm'),
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
                              width: 130,
                              icon: Icons.pause,
                              isIcon: true,
                              title: 'Puase Timer',
                              fontsize: 12,
                              callback: () {}),
                          const SizedBox(
                            width: 20,
                          ),
                          Appbutton().primaryButton(
                              context: context,
                              icon: Icons.stop,
                              isIcon: true,
                              fontsize: 12,
                              width: 130,
                              title: 'Stop Timer',
                              callback: () {}),
                        ],
                      )
                    ],
                  )),
              const SizedBox(
                height: 10,
              ),
              HomeComponents.bodyConatiner(context,
                  child: Column(
                    children: [
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceAround,
                        children: [
                          AppText.text('Week TimeLogs'),
                          AppText.text('3h 43m This Week'),
                        ],
                      ),
                    ],
                  ))
            ],
          ),
        ),
      ),
    );
  }
}
