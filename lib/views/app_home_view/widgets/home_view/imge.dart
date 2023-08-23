import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class ImageTweta extends StatelessWidget {
  const ImageTweta({super.key});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 200.h,
      width: 500.w,
      child: Card(
          color: const Color.fromARGB(221, 48, 46, 46),
          child: Directionality(
            textDirection: TextDirection.ltr,
            child: Row(
              children: [
                const Center(
                    child: Text(
                  "اضغط لفتح الصوره او الفيديو",
                  style: TextStyle(
                    fontSize: 30,
                    color: Colors.white,
                  ),
                )),
                Expanded(
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.spaceAround,
                    children: [
                      InkWell(
                        // icon arrow_drop_up
                        onTap: () {},
                        child:
                            Icon(Icons.keyboard_arrow_up_outlined, size: 50.sp),
                      ),
                      Text(
                        '0',
                        style: TextStyle(
                          fontSize: 20.sp,
                        ),
                      ),
                      InkWell(
                        onTap: () {},
                        child: Icon(Icons.keyboard_arrow_down_outlined,
                            size: 50.sp),
                      ),
                    ],
                  ),
                ),
              ],
            ),
          )),
    );
  }
}
