import 'package:crm_app/modules/attendance/views/attendance_view.dart';
import 'package:crm_app/modules/dashboard/controller/dashboard_controller.dart';
import 'package:crm_app/modules/home/views/home_view.dart';
import 'package:crm_app/utils/customs/app_bar/custome_app_bar.dart';
import 'package:crm_app/utils/customs/app_drawer.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class DashboardView extends StatelessWidget {
  DashboardView({Key? key}) : super(key: key);
  final _controller = Get.put(DashboardController());

  @override
  Widget build(BuildContext context) {
    final screens = <Widget>[
      const HomeView(),
      const AttendanceView(),
    ];
    return Obx(
      () => PopScope(
        canPop: false,
        onPopInvoked: (v) {},
        child: Scaffold(
          appBar: CustomeAppBar.simpleAppBar(context),
          drawer: AppDrawer(dController: _controller),
          body: screens[_controller.pageIndex.value],
        ),
      ),
    );
  }
}
