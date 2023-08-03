import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:jodel_app/core/utils/constants.dart';

import 'custom_gender_container.dart';

class InfoPageViewFirstItem extends StatelessWidget {
  const InfoPageViewFirstItem({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        const Spacer(),
        Text(
          'To which gender do you most indentify?',
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
            left: 35.w,
            right: 35.w,
          ),
          child: Column(
            children: [
              Row(
                children: [
                  const Expanded(
                    child: CustomGenderContainer(
                      image: 'assets/images/pink-jodel.png',
                      title: 'Female',
                      titleColor: pinkJodel,
                    ),
                  ),
                  SizedBox(
                    width: 40.w,
                  ),
                  const Expanded(
                    child: CustomGenderContainer(
                      image: 'assets/images/blue-jodel.png',
                      title: 'Male',
                      titleColor: blueJodel,
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
          'No one will see your gender',
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
