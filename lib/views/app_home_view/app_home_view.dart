import 'package:flutter/material.dart';
import 'package:jodel_app/core/utils/constants.dart';

import 'widgets/channels_view_body.dart';
import 'widgets/home_view_body.dart';
import 'widgets/inbox_view_body.dart';
import 'widgets/me_view_body.dart';

class AppHomeView extends StatefulWidget {
  const AppHomeView({super.key});

  static const String pageID = 'appHomeView';

  @override
  State<AppHomeView> createState() => _AppHomeViewState();
}

class _AppHomeViewState extends State<AppHomeView> {
  int pageIndex = 0;

  final pages = [
    const HomePage(),
    const ChannelsPage(),
    const InboxPage(),
    const MePage(),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      bottomNavigationBar: Container(
        height: 70,
        decoration: const BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.only(
            topLeft: Radius.circular(20),
            topRight: Radius.circular(20),
          ),
        ),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          children: [
            Expanded(
              child: GestureDetector(
                onTap: () {
                  setState(() {
                    pageIndex = 0;
                  });
                },
                child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      pageIndex == 0
                          ? Container(
                              padding: const EdgeInsets.symmetric(
                                  horizontal: 15, vertical: 3),
                              decoration: const BoxDecoration(
                                borderRadius:
                                    BorderRadius.all(Radius.circular(30)),
                                color: kPrimaryColor,
                              ),
                              child: Image.asset(
                                'assets/images/white_jodel_icon.png',
                                width: 30,
                              ),
                            )
                          : Image.asset(
                              'assets/images/black_jodel_icon.png',
                              width: 30,
                            ),
                      const SizedBox(
                        height: 3,
                      ),
                      const Text(
                        'Home',
                        style: TextStyle(
                          fontSize: 15,
                          fontWeight: FontWeight.w600,
                        ),
                      ),
                    ]),
              ),
            ),
            Expanded(
              child: GestureDetector(
                onTap: () {
                  setState(() {
                    pageIndex = 1;
                  });
                },
                child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      pageIndex == 1
                          ? Container(
                              padding: const EdgeInsets.symmetric(
                                  horizontal: 15, vertical: 3),
                              decoration: const BoxDecoration(
                                borderRadius:
                                    BorderRadius.all(Radius.circular(30)),
                                color: Colors.red,
                              ),
                              child: const Icon(
                                Icons.search_rounded,
                                color: Colors.white,
                                size: 30,
                              ),
                            )
                          : const Icon(
                              Icons.search_rounded,
                              color: Colors.black,
                              size: 30,
                            ),
                      const SizedBox(
                        height: 3,
                      ),
                      const Text(
                        'Channels',
                        style: TextStyle(
                          fontSize: 15,
                          fontWeight: FontWeight.w600,
                        ),
                      ),
                    ]),
              ),
            ),
            Expanded(
              child: GestureDetector(
                onTap: () {
                  setState(() {
                    pageIndex = 2;
                  });
                },
                child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      pageIndex == 2
                          ? Container(
                              padding: const EdgeInsets.symmetric(
                                  horizontal: 15, vertical: 3),
                              decoration: const BoxDecoration(
                                borderRadius:
                                    BorderRadius.all(Radius.circular(30)),
                                color: Colors.teal,
                              ),
                              child: const Icon(
                                Icons.notifications,
                                color: Colors.white,
                                size: 30,
                              ),
                            )
                          : const Icon(
                              Icons.notifications,
                              color: Colors.black,
                              size: 30,
                            ),
                      const SizedBox(
                        height: 3,
                      ),
                      const Text(
                        'Inbox',
                        style: TextStyle(
                          fontSize: 15,
                          fontWeight: FontWeight.w600,
                        ),
                      ),
                    ]),
              ),
            ),
            Expanded(
              child: GestureDetector(
                onTap: () {
                  setState(() {
                    pageIndex = 3;
                  });
                },
                child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      pageIndex == 3
                          ? Container(
                              padding: const EdgeInsets.symmetric(
                                  horizontal: 15, vertical: 3),
                              decoration: BoxDecoration(
                                borderRadius:
                                    const BorderRadius.all(Radius.circular(30)),
                                color: Colors.blue[700],
                              ),
                              child: const Icon(
                                Icons.person,
                                color: Colors.white,
                                size: 30,
                              ),
                            )
                          : const Icon(
                              Icons.person,
                              color: Colors.black,
                              size: 30,
                            ),
                      const SizedBox(
                        height: 3,
                      ),
                      const Text(
                        'Me',
                        style: TextStyle(
                          fontSize: 15,
                          fontWeight: FontWeight.w600,
                        ),
                      ),
                    ]),
              ),
            ),
          ],
        ),
      ),
      body: pages[pageIndex],
    );
  }
}
