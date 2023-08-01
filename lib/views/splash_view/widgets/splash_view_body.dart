import 'dart:async';

import 'package:flutter/material.dart';
import 'package:jodel_app/views/on%20Boarding/presentation/on_boarding_view.dart';

class SplashViewBody extends StatefulWidget {
  const SplashViewBody({super.key});

  @override
  State<SplashViewBody> createState() => _SplashViewBodyState();
}

class _SplashViewBodyState extends State<SplashViewBody> {
  @override
  void initState() {
    super.initState();
    Timer(const Duration(seconds: 3),
        () => Navigator.pushReplacementNamed(context, OnBoardingView.pageID));
  }

  @override
  Widget build(BuildContext context) {
    return Image.asset(
      'assets/images/splash.jpeg',
      fit: BoxFit.cover,
      width: double.infinity,
      height: double.infinity,
    );
  }
}
