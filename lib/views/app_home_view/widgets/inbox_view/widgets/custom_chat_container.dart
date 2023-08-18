import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:jodel_app/shared/components/components.dart';
import 'package:jodel_app/shared/styles/mode/cubit.dart';
import 'package:jodel_app/views/app_home_view/widgets/inbox_view/widgets/chat_details.dart';

class CustomChatContainer extends StatelessWidget {
  const CustomChatContainer({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(top: 8, left: 8, right: 8),
      child: Container(
        decoration: BoxDecoration(
          color: ModeCubit.get(context).isDark
              ? const Color(0xff26252A)
              : Colors.white,
          borderRadius: BorderRadius.all(Radius.circular(10)),
          boxShadow: [
            BoxShadow(
              color: ModeCubit.get(context).isDark
                  ? Colors.black.withOpacity(0.2)
                  : Colors.grey.withOpacity(0.4),
              spreadRadius: 2,
              blurRadius: 3,
              offset: const Offset(0, 3), // changes position of shadow
            ),
          ],
        ),
        child: Padding(
          padding: const EdgeInsets.all(15),
          child: InkWell(
            onTap: () => navigateTo(context, ChatDetailsScreen()),
            child: Row(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Image.asset(
                  'assets/images/pink-jodel.png',
                  width: 35,
                ),
                const SizedBox(
                  width: 12,
                ),
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      'Private chat with @2',
                      style: TextStyle(
                        color: ModeCubit.get(context).isDark
                            ? Colors.white70
                            : Colors.grey[600],
                        fontSize: 14.sp,
                        fontWeight: FontWeight.w600,
                      ),
                    ),
                    Text(
                      'Who is here now!',
                      style: TextStyle(
                        color: ModeCubit.get(context).isDark
                            ? Colors.white70
                            : Colors.grey[600],
                        fontSize: 12.sp,
                      ),
                    ),
                    Row(
                      children: [
                        Icon(
                          Icons.fast_forward_rounded,
                          color: ModeCubit.get(context).isDark
                              ? Colors.white70
                              : Colors.grey[600],
                        ),
                        Text(
                          'Me',
                          style: TextStyle(
                            color: ModeCubit.get(context).isDark
                                ? Colors.white70
                                : Colors.grey[600],
                            fontSize: 12.sp,
                          ),
                        ),
                      ],
                    ),
                  ],
                ),
                const Spacer(),
                Text(
                  '1d ago',
                  style: TextStyle(
                    color: ModeCubit.get(context).isDark
                        ? Colors.white70
                        : Colors.grey[600],
                    fontSize: 12.sp,
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
