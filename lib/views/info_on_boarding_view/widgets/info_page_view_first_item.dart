import 'package:flutter/material.dart';
import 'package:jodel_app/core/utils/constants.dart';

import 'custom_gender_container.dart';

class InfoPageViewFirstItem extends StatelessWidget {
  const InfoPageViewFirstItem({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Padding(
        padding:
            EdgeInsets.only(top: MediaQuery.of(context).size.height * 0.15),
        child: Column(
          children: [
            const Text(
              'To which gender do you most indentify?',
              textAlign: TextAlign.center,
              style: TextStyle(
                fontSize: 22,
                color: Colors.white,
                fontWeight: FontWeight.w600,
              ),
            ),
            Padding(
              padding: EdgeInsets.only(
                  left: 35,
                  right: 35,
                  top: MediaQuery.of(context).size.height * 0.15),
              child: Column(
                children: [
                  const Row(
                    children: [
                      Expanded(
                        child: CustomGenderContainer(
                          image: 'assets/images/pink-jodel.png',
                          title: 'Female',
                          titleColor: pinkJodel,
                        ),
                      ),
                      SizedBox(
                        width: 40,
                      ),
                      Expanded(
                        child: CustomGenderContainer(
                          image: 'assets/images/blue-jodel.png',
                          title: 'Male',
                          titleColor: blueJodel,
                        ),
                      ),
                    ],
                  ),
                  Padding(
                    padding: EdgeInsets.only(
                        left: 95,
                        right: 95,
                        top: 50,
                        bottom: MediaQuery.of(context).size.height * 0.15),
                    child: const Row(
                      children: [
                        Expanded(
                          child: CustomGenderContainer(
                            image: 'assets/images/orange-jodel.png',
                            title: 'Non-Binary',
                            titleColor: orangeJodel,
                          ),
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            ),
            const Text(
              'No one will see your gender',
              style: TextStyle(
                fontSize: 18,
                color: Colors.white,
              ),
            ),
            const SizedBox(
              height: 10,
            ),
          ],
        ),
      ),
    );
  }
}
