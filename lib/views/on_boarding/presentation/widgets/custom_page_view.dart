import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'page_view_item.dart';

class CustomPageView extends StatelessWidget {
  const CustomPageView({Key? key, @required this.pageController})
      : super(key: key);
  final PageController? pageController;
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.symmetric(horizontal: 5.w),
      child: PageView(
        physics: const BouncingScrollPhysics(),
        controller: pageController,
        children: const [
          PageViewItem(
            image: 'assets/images/facebook.png',
            title: 'Local',
            subTitle: 'Instantly Chat with people around you',
          ),
          PageViewItem(
            image: 'assets/images/instagram.png',
            title: 'Relevant',
            subTitle: 'Explore communities that interest you',
          ),
          PageViewItem(
            image: 'assets/images/twitter.png',
            title: 'Simple',
            subTitle: 'Chat with other through text and image posts',
          ),
        ],
      ),
    );
  }
}
