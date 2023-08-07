import 'package:flutter/material.dart';
import 'package:jodel_app/views/app_home_view/widgets/me_view/widgets/boosts_view/widgets/boosts_view_body.dart';

class BoostsView extends StatelessWidget {
  const BoostsView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return  Scaffold(
      appBar: AppBar(),
      body: const BoostsViewBody(),
    );
  }
}
