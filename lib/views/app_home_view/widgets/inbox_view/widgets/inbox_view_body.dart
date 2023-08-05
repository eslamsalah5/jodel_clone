import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:lottie/lottie.dart';

class InboxViewBody extends StatelessWidget {
  const InboxViewBody({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return TabBarView(
      children: [
        Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Lottie.asset(
              'assets/lotties/notifications_lottie.json',
              width: MediaQuery.of(context).size.width * 0.9,
            ),
            SizedBox(
              width: MediaQuery.of(context).size.width * 0.9,
              child: Text(
                'You have no Jodel notifications right now. Get active to recieve notifications',
                textAlign: TextAlign.center,
                style: TextStyle(
                  fontSize: 20.sp,
                  color: Colors.grey,
                ),
              ),
            ),
          ],
        ),
        Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Lottie.asset(
              'assets/lotties/chat_lottie.json',
              width: MediaQuery.of(context).size.width * 0.9,
            ),
            SizedBox(
              width: MediaQuery.of(context).size.width * 0.9,
              child: Text(
                'Your Chat center is empty Now!',
                textAlign: TextAlign.center,
                style: TextStyle(
                  fontSize: 20.sp,
                  color: Colors.grey,
                ),
              ),
            ),
          ],
        ),
      ],
    );
  }
}

// class InboxViewBody extends StatelessWidget {
//   const InboxViewBody({Key? key}) : super(key: key);

//   @override
//   Widget build(BuildContext context) {
//     return const TabBarView(
//       children: [
//         Column(
//           children: [
//             CustomNotificationContainer(),
//             CustomNotificationContainer(),
//           ],
//         ),
//         Column(
//           children: [
//             CustomChatContainer(),
//             CustomChatContainer(),
//           ],
//         ),
//       ],
//     );
//   }
// }
