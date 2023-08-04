import 'package:flutter/material.dart';
import 'package:jodel_app/views/app_home_view/widgets/me_view/widgets/me_view_body.dart';

class MeView extends StatelessWidget {
  const MeView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      body: MeViewBody(),
    );
  }
}
