import 'package:flutter/material.dart';
import 'package:jodel_app/views/app_home_view/widgets/home_view/widgets/floting_home_button.dart';
import 'package:jodel_app/views/app_home_view/widgets/home_view/widgets/home_view_body.dart';

class HomeView extends StatelessWidget {
  const HomeView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      floatingActionButtonLocation: FloatingActionButtonLocation.centerDocked,
      floatingActionButton: floatingHomeButtom(),
      body: HomeViewBody(),
    );
  }
}
