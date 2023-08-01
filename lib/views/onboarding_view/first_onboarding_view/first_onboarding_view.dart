import 'package:flutter/material.dart';

import 'widgets/first_onboarding_view_body.dart';

class FirstOnBoardingView extends StatelessWidget {
  const FirstOnBoardingView({super.key});

  static const String pageID = 'firstOnBoardingView';

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      body: FirstOnBoardingViewBody(),
    );
  }
}
