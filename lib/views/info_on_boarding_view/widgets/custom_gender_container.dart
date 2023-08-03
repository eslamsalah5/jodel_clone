import 'package:flutter/material.dart';

class CustomGenderContainer extends StatelessWidget {
  const CustomGenderContainer(
      {super.key,
      required this.image,
      required this.title,
      required this.titleColor});

  final String image;
  final String title;
  final Color titleColor;

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(10),
      ),
      child: Padding(
        padding: const EdgeInsets.symmetric(vertical: 32),
        child: Column(
          children: [
            Image.asset(
              image,
              width: 80,
            ),
            const SizedBox(
              height: 15,
            ),
            Text(
              title,
              style: TextStyle(
                color: titleColor,
                fontSize: 22,
                fontWeight: FontWeight.w600,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
