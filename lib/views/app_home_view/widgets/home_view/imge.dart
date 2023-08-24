import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:jodel_app/shared/styles/mode/cubit.dart';
import 'package:jodel_app/views/app_home_view/widgets/home_view/widgets/arrow_up_don.dart';
import 'package:jodel_app/views/app_home_view/widgets/home_view/widgets/popupBoutton.dart';

class ImageTweta extends StatefulWidget {
  const ImageTweta({super.key});

  @override
  State<ImageTweta> createState() => _ImageTwetaState();
}

class _ImageTwetaState extends State<ImageTweta> {
  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 170.h,
      width: 500.w,
      child: Card(
        color: ModeCubit.get(context).isDark
            ? const Color(0xff26252A)
            : Colors.cyan,
        child: const Column(
          children: [
            Row(
              children: [
                // IconButton list
                //

                Padding(
                  padding: EdgeInsetsDirectional.only(start: 16.0),
                  child: Icon(
                    Icons.location_on,
                    size: 12,
                  ),
                ),
                Expanded(
                  child: Row(
                    children: [
                      Text(
                        "El Shorouk City",
                      ),
                      Text(
                        " . 1min",
                      ),
                    ],
                  ),
                ),
                Padding(
                  padding: EdgeInsets.only(right: 15),
                  child: PopupButton(),
                ),
              ],
            ),
            Row(
              children: [
                Expanded(
                  child: Directionality(
                    textDirection: TextDirection.ltr,
                    child: Row(
                      children: [
                        Expanded(
                          flex: 4,
                          child: Padding(
                            padding: EdgeInsets.all(8.0),
                            child: Text(
                              'اضغض لعرض الصوره او الفيديو',
                              style: TextStyle(
                                fontSize: 20,
                              ),
                            ),
                          ),
                        ),
                        Expanded(child: ArrowUpDon()),
                      ],
                    ),
                  ),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
