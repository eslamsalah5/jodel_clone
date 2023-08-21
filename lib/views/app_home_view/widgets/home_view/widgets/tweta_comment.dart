import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class TwetaComment extends StatelessWidget {
  const TwetaComment({super.key, required this.titel});
  final String titel;
  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.blueGrey,
      child: Column(
        children: [
          Row(
            children: [
              // IconButton list
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

              //
              const Expanded(child: Icon(Icons.rocket_launch)),
              const Text("1د .", textAlign: TextAlign.right),
              const Text(" El Shorouk City"),
              const Icon(Icons.location_on),
              const Text("1"),
              const SizedBox(
                width: 6,
              ),
              const Icon(Icons.accessibility),
              const SizedBox(
                width: 10,
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
