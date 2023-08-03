import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:jodel_app/views/app_home_view/app_home_view.dart';
import 'package:jodel_app/views/info_on_boarding_view/info_on_boarding.dart';
import 'package:jodel_app/views/location_view/location_view.dart';
import 'package:jodel_app/views/on_boarding/presentation/on_boarding_view.dart';
import 'package:jodel_app/views/splash_view/splash_view.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widgets is the root of your application.
  @override
  Widget build(BuildContext context) {
    return ScreenUtilInit(
      designSize: const Size(360, 690),
      minTextAdapt: true,
      splitScreenMode: true,
      builder: (context, child) => MaterialApp(
        routes: {
          SplashView.pageID: (context) => const SplashView(),
          OnBoardingView.pageID: (context) => const OnBoardingView(),
          LocationView.pageID: (context) => const LocationView(),
          InfoOnBoardingView.pageID: (context) => const InfoOnBoardingView(),
          AppHomeView.pageID: (context) => const AppHomeView(),
        },
        initialRoute: SplashView.pageID,
        debugShowCheckedModeBanner: false,
        home: const SplashView(),
      ),
    );
  }
}
