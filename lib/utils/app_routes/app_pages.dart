import 'package:einnovention/modules/home/views/home_view.dart';
import 'package:einnovention/utils/app_routes/app_routes.dart';
import 'package:get/get.dart';

class AppPages {
  static Transition transitionType = Transition.rightToLeft;

  static final routes = [
    GetPage(
      name: AppRoutes.HOME_VIEW,
      page: () => const HomeView(),
      transition: transitionType,
      binding: BindingsBuilder(
        () {
          // Get.lazyPut<OnboardingController>(
          //   () => OnboardingController(),
          // );
        },
      ),
    ),
  ];
}
