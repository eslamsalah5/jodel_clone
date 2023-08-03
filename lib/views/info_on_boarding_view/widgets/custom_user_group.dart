import 'package:flutter/material.dart';
import 'package:jodel_app/views/app_home_view/app_home_view.dart';

class CustomUserGroupContainer extends StatelessWidget {
  const CustomUserGroupContainer(
      {super.key, required this.image, required this.title});

  final String image;
  final String title;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        Navigator.pushReplacementNamed(context, AppHomeView.pageID);
      },
      child: Container(
        height: MediaQuery.of(context).size.height * 0.17,
        decoration: BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.circular(10),
        ),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Image.asset(
              image,
              width: 70,
            ),
            const SizedBox(
              height: 10,
            ),
            Text(
              title,
              textAlign: TextAlign.center,
              style: const TextStyle(
                fontSize: 16,
                fontWeight: FontWeight.w500,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
