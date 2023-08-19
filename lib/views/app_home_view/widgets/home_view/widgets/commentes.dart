import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class Commentes extends StatelessWidget {
  const Commentes({super.key, required this.icon});
  final Icon icon;
  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.blueGrey,
      child: Column(
        children: [
          Row(
            children: [
              // IconButton list
              IconButton(
                onPressed: () {},
                icon: Icon(
                  Icons.more_horiz,
                  size: 30.sp,
                ),
              ),

              //
              Expanded(
                child: Container(
                  padding: const EdgeInsets.only(right: 5),
                  child: const Text("1د .", textAlign: TextAlign.right),
                ),
              ),
              const Text("El Shorouk City"),
              const Icon(Icons.location_on),
              const Text("1"),
              const SizedBox(
                width: 6,
              ),
              IconButton(
                  onPressed: () {
                    ///  show Modal Bottom Sheet
                    showModalBottomSheet(
                      context: context,
                      builder: (context) {
                        return const SizedBox(
                          height: 130,
                          child: Padding(
                            padding: EdgeInsets.all(8.0),
                            child: Column(children: [
                              Text(
                                "هل ترغب في ارسال صلب محادثه خاصه الي @1",
                                style: TextStyle(
                                    color: Colors.black, fontSize: 17),
                              ),
                              SizedBox(
                                height: 15,
                              ),
                              CustomButton()
                            ]),
                          ),
                        );
                      },
                    );
                  },
                  icon: icon),
              const SizedBox(
                width: 10,
              ),
            ],
          ),
          Row(
            children: [
              const Expanded(
                flex: 4,
                child: Padding(
                  padding: EdgeInsets.only(bottom: 85),
                  child: Text(
                    textAlign: TextAlign.end,
                    maxLines: 3,
                    "فيه حد ف مادنتي  ",
                    overflow: TextOverflow.ellipsis,
                    style: TextStyle(
                      fontSize: 20,
                    ),
                  ),
                ),
              ),
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
                      child:
                          Icon(Icons.keyboard_arrow_down_outlined, size: 50.sp),
                    ),
                  ],
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }
}

class CustomButton extends StatelessWidget {
  const CustomButton({super.key, this.onTap});

  final void Function()? onTap;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child: Container(
        decoration: BoxDecoration(
          color: Colors.orange,
          borderRadius: BorderRadius.circular(8),
        ),
        width: double.infinity,
        height: 60,
        child: const Padding(
          padding: EdgeInsets.only(top: 15),
          child: Text(
            textAlign: TextAlign.center,
            'ارسل الطلب',
            style: TextStyle(
              color: Colors.white,
              fontSize: 19,
              fontWeight: FontWeight.bold,
            ),
          ),
        ),
      ),
    );
  }
}
