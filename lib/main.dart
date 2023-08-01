import 'package:flutter/material.dart';
import 'package:jodel_app/views/on%20Boarding/presentation/on_boarding_view.dart';
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
        OnBoardingView.pageID: (context) => const OnBoardingView(),
      },
      initialRoute: SplashView.pageID,
      debugShowCheckedModeBanner: false,
      home: const SplashView(),
    );
  }
}
