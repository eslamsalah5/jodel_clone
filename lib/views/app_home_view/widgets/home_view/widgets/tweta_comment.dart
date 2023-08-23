import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:jodel_app/shared/styles/mode/cubit.dart';

class TwetaComment extends StatelessWidget {
  const TwetaComment({super.key, required this.titel});
  final String titel;
  @override
  Widget build(BuildContext context) {
    return Container(
      color:
          ModeCubit.get(context).isDark ? const Color(0xff26252A) : Colors.cyan,
      child: Column(
        children: [
          Row(
            children: [
              const Padding(
                padding: EdgeInsets.all(8.0),
                child: Icon(Icons.accessibility),
              ),
              const Icon(
                Icons.location_on,
                size: 15,
              ),
              const Expanded(
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
                padding: const EdgeInsets.only(right: 15),
                child: IconButton(
                  onPressed: () {},
                  icon: Icon(
                    Icons.more_horiz,
                    size: 30.sp,
                  ),
                ),
              ),
            ],
          ),
          Directionality(
            textDirection: TextDirection.ltr,
            child: Row(
              children: [
                Expanded(
                    flex: 4,
                    child: Column(
                      children: [
                        const Padding(
                          padding: EdgeInsets.all(8.0),
                          child: Text(
                            maxLines: 5,
                            "فيه حد g mgkedf hert hkrte jreh jrthj rt r jt wjer gjew  meg e mekrgm ",
                            overflow: TextOverflow.ellipsis,
                            style: TextStyle(
                              fontSize: 20,
                            ),
                          ),
                        ),

                        /// icon comment
                        Row(
                          children: [
                            IconButton(
                              onPressed: () {},
                              icon: const Icon(Icons.comment),
                            ),
                            Text(titel.toString()),
                          ],
                        ),
                      ],
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
                        "0",
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
          ),
        ],
      ),
    );
  }
}
