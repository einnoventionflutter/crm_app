import 'package:crm_app/utils/app_routes/app_pages.dart';
import 'package:crm_app/utils/app_routes/app_routes.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      title: 'Flutter Demo',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
        useMaterial3: true,
      ),
      getPages: AppPages.routes,
      initialRoute: AppRoutes.HOME_VIEW,
      // localizationsDelegates: MyAppLocalization.delegates,
      // supportedLocales: MyAppLocalization.supportedLocales,
      // locale: Locale(myAppLocalization.currentLocale.value),
      // builder: (context, child) {
      //   child = EasyLoading.init()(context, child);
      //   child = ScrollConfiguration(
      //     behavior: MyBehavior(),
      //     child: child,
      //   );
      //   return child;
      // },
    );
  }
}
