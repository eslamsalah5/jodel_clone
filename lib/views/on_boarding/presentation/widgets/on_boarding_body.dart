import 'dart:io';

import 'package:device_info_plus/device_info_plus.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'custom_page_view.dart';

class OnBoardingViewBody extends StatefulWidget {
  const OnBoardingViewBody({Key? key}) : super(key: key);

  @override
  _OnBoardingViewBodyState createState() => _OnBoardingViewBodyState();
}

class _OnBoardingViewBodyState extends State<OnBoardingViewBody> {
  PageController? pageController;

  @override
  void initState() {
    pageController = PageController(initialPage: 0)
      ..addListener(() {
        setState(() {});
      });
    super.initState();
  }

  String deviceName = '', deviceVersion = '', identifier = '';
  Future<void> _getDeviceDetails() async {
    final DeviceInfoPlugin deviceinfoplugin = DeviceInfoPlugin();

    try {
      if (Platform.isAndroid) {
        var build = await deviceinfoplugin.androidInfo;
        setState(() {
          deviceName = build.model;
          deviceVersion = build.version.toString();
          identifier = build.id;
        });
      } else if (Platform.isIOS) {
        var data = await deviceinfoplugin.iosInfo;
        setState(() {
          deviceName = data.name;
          deviceVersion = data.systemVersion;
          identifier = data.identifierForVendor!;
        });
      }
    } on PlatformException {
      print('Failed to get platform version');
    }
  }

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        Image.asset(
          'assets/images/background.jpg',
          fit: BoxFit.cover,
          width: double.infinity,
          height: double.infinity,
        ),
        CustomPageView(
          pageController: pageController,
        ),
        Column(
          mainAxisAlignment: MainAxisAlignment.end,
          children: [
            Padding(
              padding: EdgeInsets.only(bottom: 5, left: 5.w, right: 5.w),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      MaterialButton(
                        shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(5)),
                        color: Colors.white,
                        padding: EdgeInsets.symmetric(
                          horizontal: MediaQuery.of(context).size.width * 0.25,
                          vertical: 14.h,
                        ),
                        onPressed: () {
                          _getDeviceDetails();
                          setState(() {});
                        },
                        child: Text(
                          'Start Now',
                          style: TextStyle(fontSize: 18.sp),
                        ),
                      ),
                      SizedBox(
                        height: 30.h,
                      ),
                      SizedBox(
                        width: MediaQuery.of(context).size.width * 0.9,
                        child: Text(
                          textAlign: TextAlign.center,
                          'Device ID = $identifier',
                          style: TextStyle(
                            fontSize: 15.sp,
                            color: Colors.white,
                          ),
                        ),
                      ),
                    ],
                  ),
                ],
              ),
            ),
          ],
        ),
      ],
    );
  }
}
