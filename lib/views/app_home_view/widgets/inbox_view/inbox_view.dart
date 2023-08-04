import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:jodel_app/core/utils/constants.dart';
import 'package:jodel_app/views/app_home_view/widgets/inbox_view/widgets/inbox_view_body.dart';

class InboxView extends StatelessWidget {
  const InboxView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 2,
      child: Scaffold(
        appBar: AppBar(
          centerTitle: true,
          elevation: 0,
          backgroundColor: kWhiteColor,
          leading: const Icon(
            Icons.notifications_active,
            color: Colors.black,
            size: 25,
          ),
          title: Text(
            'Menouf',
            style: TextStyle(
              color: Colors.black,
              fontSize: 18.sp,
              fontWeight: FontWeight.w500,
            ),
          ),
          actions: [
            Padding(
              padding: const EdgeInsets.only(right: 10),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text(
                    '+100',
                    style: TextStyle(
                      color: Colors.black,
                      fontSize: 18.sp,
                      fontWeight: FontWeight.w500,
                    ),
                  ),
                  SizedBox(
                    height: 1.h,
                  ),
                  Text(
                    'My Karma',
                    style: TextStyle(
                      color: Colors.teal,
                      fontSize: 8.sp,
                      fontWeight: FontWeight.w500,
                    ),
                  ),
                ],
              ),
            ),
          ],
          bottom: TabBar(
            indicatorColor: Colors.teal,
            labelColor: Colors.teal,
            unselectedLabelColor: Colors.black,
            tabs: [
              Tab(
                child: Text(
                  'NOTIFICATIONS',
                  style: TextStyle(
                    fontSize: 18.sp,
                  ),
                ),
              ),
              Tab(
                child: Text(
                  'CHAT',
                  style: TextStyle(
                    fontSize: 18.sp,
                  ),
                ),
              ),
            ],
          ),
        ),
        body: const InboxViewBody(),
      ),
    );
  }
}
