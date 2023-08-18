import 'package:flutter/material.dart';
import 'package:jodel_app/views/app_home_view/widgets/home_view/widgets/tweta_view.dart';

class HomeViewBody extends StatelessWidget {
  const HomeViewBody({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return const SingleChildScrollView(
      physics: BouncingScrollPhysics(),
      child: SafeArea(
        child: Column(
          children: [
            TwetaView(),
            TwetaView(),
            TwetaView(),
            TwetaView(),
          ],
        ),
      ),
    );
  }
}
