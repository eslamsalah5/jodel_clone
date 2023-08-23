import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class Commentes extends StatelessWidget {
  const Commentes({
    super.key,
    required this.icon,
  });
  final Icon icon;

  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.blueGrey,
      child: Column(
        children: [
          Row(
            children: [
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
                child: PopupMenuButton(
                  icon: const Icon(
                    Icons.more_horiz,
                    size: 35,
                  ),
                  offset: const Offset(0, 40),
                  itemBuilder: (context) => [
                    PopupMenuItem(
                      onTap: () async {
                        ScaffoldMessenger.of(context).showSnackBar(
                          const SnackBar(
                            content: Text('delete'),
                          ),
                        );
                      },
                      child: Row(
                        children: [
                          ///////////
                          const Icon(Icons.delete),

                          Container(
                            margin: const EdgeInsets.only(left: 10),
                            child: const Text("delete"),
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
              ),
            ],
          ),
          Directionality(
            textDirection: TextDirection.ltr,
            child: Row(
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
                Directionality(
                  textDirection: TextDirection.ltr,
                  child: Expanded(
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.spaceAround,
                      children: [
                        InkWell(
                          // icon arrow_drop_up
                          onTap: () {},
                          child: Icon(Icons.keyboard_arrow_up_outlined,
                              size: 50.sp),
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
                ),
              ],
            ),
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
