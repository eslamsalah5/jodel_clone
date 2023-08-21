import 'dart:async';

import 'package:flutter/material.dart';
import 'package:jodel_app/core/utils/constants.dart';
import 'package:jodel_app/views/on_boarding/presentation/on_boarding_view.dart';

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
    return Center(
      child: Image.asset(
        logoImage,
        fit: BoxFit.contain,
        width: MediaQuery.of(context).size.width * .7,
        height: MediaQuery.of(context).size.height * .7,
      ),
    );
  }
}
