import 'package:flutter/material.dart';

import 'custom_user_group.dart';

class InfoPageViewThirdItem extends StatelessWidget {
  const InfoPageViewThirdItem({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Padding(
        padding:
            EdgeInsets.only(top: MediaQuery.of(context).size.height * 0.15),
        child: Column(
          children: [
            const Text(
              'Which user group best descripes you?',
              textAlign: TextAlign.center,
              style: TextStyle(
                fontSize: 22,
                color: Colors.white,
                fontWeight: FontWeight.w600,
              ),
            ),
            Padding(
              padding: EdgeInsets.only(
                  left: 10,
                  right: 10,
                  top: MediaQuery.of(context).size.height * 0.15),
              child: const Column(
                children: [
                  Row(
                    children: [
                      Expanded(
                        child: CustomUserGroupContainer(
                          image: 'assets/images/graduate.png',
                          title: 'University Student',
                        ),
                      ),
                      SizedBox(
                        width: 15,
                      ),
                      Expanded(
                        child: CustomUserGroupContainer(
                          image: 'assets/images/bag.png',
                          title: 'Emplyee',
                        ),
                      ),
                      SizedBox(
                        width: 15,
                      ),
                      Expanded(
                        child: CustomUserGroupContainer(
                          image: 'assets/images/smile.png',
                          title: 'Apprentice',
                        ),
                      ),
                    ],
                  ),
                  SizedBox(
                    height: 15,
                  ),
                  Row(
                    children: [
                      Expanded(
                        child: CustomUserGroupContainer(
                          image: 'assets/images/school-bag.png',
                          title: 'High School Graduate',
                        ),
                      ),
                      SizedBox(
                        width: 15,
                      ),
                      Expanded(
                        child: CustomUserGroupContainer(
                          image: 'assets/images/magician-hat.png',
                          title: 'High School Student',
                        ),
                      ),
                      SizedBox(
                        width: 15,
                      ),
                      Expanded(
                        child: CustomUserGroupContainer(
                          image: 'assets/images/aliens.png',
                          title: 'Other',
                        ),
                      ),
                    ],
                  ),
                ],
              ),
            ),
            SizedBox(
              height: MediaQuery.of(context).size.height * 0.28,
            ),
            const Text(
              'No one will see your user group',
              style: TextStyle(
                fontSize: 18,
                color: Colors.white,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
