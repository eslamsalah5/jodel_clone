import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:jodel_app/generated/l10n.dart';
import 'package:jodel_app/shared/styles/mode/cubit.dart';

class Commentes extends StatelessWidget {
  const Commentes({
    super.key,
    required this.icon,
  });
  final Icon icon;

  @override
  Widget build(BuildContext context) {
    return Container(
      color:
          ModeCubit.get(context).isDark ? const Color(0xff26252A) : Colors.cyan,
      child: Column(
        children: [
          Row(
            children: [
              IconButton(
                  onPressed: () {
                    ///  show Modal Bottom Sheet
                    showModalBottomSheet(
                      backgroundColor: ModeCubit.get(context).isDark
                          ? const Color(0xff26252A)
                          : Colors.white,
                      context: context,
                      builder: (context) {
                        return SizedBox(
                          height: 130,
                          child: Padding(
                            padding: const EdgeInsets.all(8.0),
                            child: Column(children: [
                              Row(
                                children: [
                                  Text(
                                    S.of(context).Confirm_chat_request,
                                    style: const TextStyle(
                                        fontSize: 14,
                                        fontWeight: FontWeight.bold),
                                  ),
                                  const Text(
                                    " @1",
                                    style: TextStyle(
                                        fontSize: 14,
                                        fontWeight: FontWeight.bold),
                                  ),
                                ],
                              ),
                              const SizedBox(
                                height: 15,
                              ),
                              const CustomButton()
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
                  color: ModeCubit.get(context).isDark
                      ? const Color(0xff26252A)
                      : Colors.white,
                  icon: Icon(
                    Icons.more_horiz,
                    size: 35,
                    color: ModeCubit.get(context).isDark
                        ? Colors.white
                        : const Color(
                            0xff26252A,
                          ),
                  ),
                  offset: const Offset(0, 40),
                  itemBuilder: (context) => [
                    PopupMenuItem(
                      onTap: () async {
                        ScaffoldMessenger.of(context).showSnackBar(
                          SnackBar(
                            backgroundColor: ModeCubit.get(context).isDark
                                ? const Color(0xff26252A)
                                : Colors.white,
                            content: Text(S.of(context).delete,
                                style: TextStyle(
                                  color: ModeCubit.get(context).isDark
                                      ? Colors.white
                                      : const Color(
                                          0xff26252A,
                                        ),
                                  fontWeight: FontWeight.bold,
                                  fontSize: 16,
                                )),
                          ),
                        );
                      },
                      child: Row(
                        children: [
                          ///////////
                          const Icon(Icons.delete),

                          Container(
                            margin: const EdgeInsets.only(left: 10),
                            child: Text(S.of(context).delete),
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
        child: Padding(
          padding: const EdgeInsets.only(top: 15),
          child: Text(
            textAlign: TextAlign.center,
            S.of(context).send_chat_request_button,
            style: const TextStyle(
              fontSize: 19,
              fontWeight: FontWeight.bold,
            ),
          ),
        ),
      ),
    );
  }
}
