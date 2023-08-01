import 'package:flutter/material.dart';
import 'package:jodel_app/views/onboarding_view/first_onboarding_view/first_onboarding_view.dart';
import 'package:jodel_app/views/splash_view/splash_view.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      routes: {
        SplashView.pageID: (context) => const SplashView(),
        FirstOnBoardingView.pageID: (context) => const FirstOnBoardingView(),
      },
      initialRoute: SplashView.pageID,
      debugShowCheckedModeBanner: false,
      home: const SplashView(),
    );
  }
}
