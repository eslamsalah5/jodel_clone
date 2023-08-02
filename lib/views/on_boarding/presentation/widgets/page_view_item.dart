import 'package:flutter/material.dart';

class PageViewItem extends StatelessWidget {
  const PageViewItem({Key? key, this.title, this.subTitle, this.image})
      : super(key: key);

  final String? title;
  final String? subTitle;
  final String? image;
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.only(top: MediaQuery.of(context).size.height * 0.15),
      child: Column(
        children: [
          SizedBox(
            width: MediaQuery.of(context).size.width * 0.5,
            child: Image.asset(image!),
          ),
          const Spacer(),
          Text(
            title!,
            style: const TextStyle(
                fontSize: 25, color: Colors.white, fontWeight: FontWeight.w600),
            textAlign: TextAlign.left,
          ),
          const SizedBox(
            height: 20,
          ),
          Text(
            subTitle!,
            style: const TextStyle(
              fontSize: 20,
              color: Colors.white,
            ),
          ),
          const SizedBox(
            height: 30,
          ),
          const Spacer(),
        ],
      ),
    );
  }
}
