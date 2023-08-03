import 'package:flutter/material.dart';
import 'package:jodel_app/layout/layout_screen.dart';

class CustomUserGroupContainer extends StatelessWidget {
  const CustomUserGroupContainer(
      {super.key, required this.image, required this.title});

  final String image;
  final String title;

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () =>  Navigator.pushReplacementNamed(
          context, LayoutScreen.pageID),
      child: Container(
        height: MediaQuery.of(context).size.height * 0.16,
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
                fontSize: 18,
                fontWeight: FontWeight.w500,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
