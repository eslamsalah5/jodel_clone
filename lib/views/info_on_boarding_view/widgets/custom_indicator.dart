import 'package:dots_indicator/dots_indicator.dart';
import 'package:flutter/material.dart';

class CustomIndicator extends StatelessWidget {
  const CustomIndicator({Key? key, @required this.dotIndex}) : super(key: key);
  final dynamic dotIndex;
  @override
  Widget build(BuildContext context) {
    return DotsIndicator(
      decorator: DotsDecorator(
          color: Colors.transparent,
          activeColor: Colors.white,
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(8),
            side: const BorderSide(color: Colors.white),
          )),
      dotsCount: 1,
      position: dotIndex!,
    );
  }
}
