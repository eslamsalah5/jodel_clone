import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class ImageTweta extends StatelessWidget {
  const ImageTweta({super.key});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 200.h,
      width: 500.w,
      child: const Card(
        color: Color.fromARGB(221, 48, 46, 46),
        child: Center(
            child: Text(
          "اضغط لفتح الصوره او الفيديو",
          style: TextStyle(
            fontSize: 30,
            color: Colors.white,
          ),
        )),
      ),
    );
  }
}
