import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import 'custom_user_group.dart';

class InfoPageViewThirdItem extends StatelessWidget {
  const InfoPageViewThirdItem({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        const Spacer(),
        Text(
          'Which user group best descripes you?',
          textAlign: TextAlign.center,
          style: TextStyle(
            fontSize: 22.sp,
            color: Colors.white,
            fontWeight: FontWeight.w600,
          ),
        ),
        const Spacer(
          flex: 2,
        ),
        Padding(
          padding: EdgeInsets.only(
            left: 10.w,
            right: 10.w,
          ),
          child: Column(
            children: [
              Row(
                children: [
                  const Expanded(
                    child: CustomUserGroupContainer(
                      image: 'assets/images/graduate.png',
                      title: 'University Student',
                    ),
                  ),
                  SizedBox(
                    width: 10.w,
                  ),
                  const Expanded(
                    child: CustomUserGroupContainer(
                      image: 'assets/images/bag.png',
                      title: 'Emplyee',
                    ),
                  ),
                  SizedBox(
                    width: 10.w,
                  ),
                  const Expanded(
                    child: CustomUserGroupContainer(
                      image: 'assets/images/smile.png',
                      title: 'Apprentice',
                    ),
                  ),
                ],
              ),
              SizedBox(
                height: 10.h,
              ),
              Row(
                children: [
                  const Expanded(
                    child: CustomUserGroupContainer(
                      image: 'assets/images/school-bag.png',
                      title: 'High School Graduate',
                    ),
                  ),
                  SizedBox(
                    width: 10.w,
                  ),
                  const Expanded(
                    child: CustomUserGroupContainer(
                      image: 'assets/images/magician-hat.png',
                      title: 'High School Student',
                    ),
                  ),
                  SizedBox(
                    width: 10.w,
                  ),
                  const Expanded(
                    child: CustomUserGroupContainer(
                      image: 'assets/images/aliens.png',
                      title: 'Other',
                    ),
                  ),
                ],
              ),
            ],
          ),
        ),
        const Spacer(
          flex: 3,
        ),
        Text(
          'No one will see your user group',
          style: TextStyle(
            fontSize: 18.sp,
            color: Colors.white,
          ),
        ),
        const SizedBox(
          height: 20,
        ),
      ],
    );
  }
}
