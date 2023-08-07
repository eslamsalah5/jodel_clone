import 'package:flutter/material.dart';
import 'package:jodel_app/generated/l10n.dart';
import '../../../../../../../shared/styles/mode/cubit.dart';

class BoostsViewBody extends StatelessWidget {
  const BoostsViewBody({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    const grayColor = Color(0xffBFBEC3);
    const purpleColor = Color(0xffBCBDF6);
    return Column(
      crossAxisAlignment: CrossAxisAlignment.center,
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        const Icon(
          Icons.rocket_launch,
          color: Color(0xffBCBDF6),
          size: 32,
        ),
        Text(
          S.of(context).Boosts_jodels,
          style: TextStyle(
              color: Color(0xffBCBDF6),
              fontSize: 18,
              fontWeight: FontWeight.bold),
        ),
        Text(
          S.of(context).boost_sub_title,
          style: TextStyle(
            fontSize: 14,
          ),
        ),
        const SizedBox(
          height: 30,
        ),
        Row(
          children: [
            Padding(
              padding: const EdgeInsetsDirectional.symmetric(
                  horizontal: 8.0, vertical: 8),
              child: Container(
                decoration: BoxDecoration(
                  boxShadow: [
                    BoxShadow(
                      color: ModeCubit.get(context).isDark
                          ? Colors.grey.withOpacity(0.15)
                          : Colors.grey.withOpacity(0.5),
                      spreadRadius: 3,
                      blurRadius: 7,
                      offset: const Offset(0, 3), // changes position of shadow
                    ),
                  ],
                  color: ModeCubit.get(context).isDark
                      ? const Color(0xff403F44)
                      : Colors.white,
                  borderRadius: BorderRadiusDirectional.circular(8),
                ),
                height: 180,
                width: 120,
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    Text(
                      '5',
                      style: TextStyle(
                          color: grayColor,
                          fontSize: 32,
                          fontWeight: FontWeight.bold),
                    ),
                    Text(
                      S.of(context).Boosts,
                      style: TextStyle(
                          color: grayColor,
                          fontSize: 21,
                          fontWeight: FontWeight.bold),
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Text(
                          '24.00 ',
                          style: TextStyle(
                            color: grayColor,
                            fontSize: 16,
                          ),
                        ),
                        Text(
                          S.of(context).egp,
                          style: TextStyle(
                            color: grayColor,
                            fontSize: 16,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                      ],
                    ),
                    Text(
                      S.of(context).each,
                      style: TextStyle(
                        color: grayColor,
                        fontSize: 16,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                  ],
                ),
              ),
            ),
            Stack(
              alignment: AlignmentDirectional.bottomCenter,
              children: [
                Padding(
                  padding: const EdgeInsetsDirectional.symmetric(
                      horizontal: 8.0, vertical: 8),
                  child: Container(
                    decoration: BoxDecoration(
                      border: Border.all(
                          color: const Color(0xffBCBDF6),
                          style: BorderStyle.solid,
                          width: 4),
                      boxShadow: [
                        BoxShadow(
                          color: ModeCubit.get(context).isDark
                              ? Colors.grey.withOpacity(0.15)
                              : Colors.grey.withOpacity(0.5),
                          spreadRadius: 3,
                          blurRadius: 7,
                          offset:
                              const Offset(0, 3), // changes position of shadow
                        ),
                      ],
                      color: ModeCubit.get(context).isDark
                          ? const Color(0xff403F44)
                          : Colors.white,
                      borderRadius: BorderRadiusDirectional.circular(8),
                    ),
                    height: 180,
                    width: 120,
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: [
                        Container(
                          decoration: BoxDecoration(
                            color: const Color(0xffBCBDF6),
                            borderRadius: BorderRadiusDirectional.circular(6),
                          ),
                          height: 25,
                          width: 100,
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              Text(
                                S.of(context).save,
                                style: TextStyle(
                                  color: Color(0xff403F44),
                                  fontSize: 16,
                                  fontWeight: FontWeight.bold,
                                ),
                              ),
                              Text(
                                '37%',
                                style: TextStyle(
                                  color: Color(0xff403F44),
                                  fontSize: 16,
                                  fontWeight: FontWeight.bold,
                                ),
                              ),
                            ],
                          ),
                        ),
                        const Text(
                          '10',
                          style: TextStyle(
                              color: purpleColor,
                              fontSize: 32,
                              fontWeight: FontWeight.bold),
                        ),
                        Text(
                          S.of(context).Boosts,
                          style: TextStyle(
                              color: purpleColor,
                              fontSize: 21,
                              fontWeight: FontWeight.bold),
                        ),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Text(
                              '15.00 ',
                              style: TextStyle(
                                color: purpleColor,
                                fontSize: 16,
                              ),
                            ),
                            Text(
                              S.of(context).egp,
                              style: TextStyle(
                                color: purpleColor,
                                fontSize: 16,
                                fontWeight: FontWeight.bold,
                              ),
                            ),
                          ],
                        ),
                        Text(
                          S.of(context).each,
                          style: TextStyle(
                            color: purpleColor,
                            fontSize: 16,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
                Container(
                  decoration: BoxDecoration(
                    color: const Color(0xffBCBDF6),
                    borderRadius: BorderRadiusDirectional.circular(60),
                  ),
                  height: 25,
                  width: 95,
                  child: Center(
                    child: Text(
                      S.of(context).most_popular,
                      style: TextStyle(
                        color: Color(0xff403F44),
                        fontSize: 14,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                  ),
                ),
              ],
            ),
            Padding(
              padding: const EdgeInsetsDirectional.symmetric(
                  horizontal: 8.0, vertical: 8),
              child: Container(
                decoration: BoxDecoration(
                  boxShadow: [
                    BoxShadow(
                      color: ModeCubit.get(context).isDark
                          ? Colors.grey.withOpacity(0.15)
                          : Colors.grey.withOpacity(0.5),
                      spreadRadius: 3,
                      blurRadius: 7,
                      offset: const Offset(0, 3), // changes position of shadow
                    ),
                  ],
                  color: ModeCubit.get(context).isDark
                      ? const Color(0xff403F44)
                      : Colors.white,
                  borderRadius: BorderRadiusDirectional.circular(8),
                ),
                height: 180,
                width: 120,
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    Container(
                      decoration: BoxDecoration(
                        color: const Color(0xffBCBDF6),
                        borderRadius: BorderRadiusDirectional.circular(6),
                      ),
                      height: 25,
                      width: 100,
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Text(
                            S.of(context).save,
                            style: TextStyle(
                              color: Color(0xff403F44),
                              fontSize: 16,
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                          Text(
                            '61%',
                            style: TextStyle(
                              color: Color(0xff403F44),
                              fontSize: 16,
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                        ],
                      ),
                    ),
                    const Text(
                      '30',
                      style: TextStyle(
                          color: grayColor,
                          fontSize: 32,
                          fontWeight: FontWeight.bold),
                    ),
                    Text(
                      S.of(context).Boosts,
                      style: TextStyle(
                          color: grayColor,
                          fontSize: 21,
                          fontWeight: FontWeight.bold),
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Text(
                          '9.33 ',
                          style: TextStyle(
                            color: grayColor,
                            fontSize: 16,
                          ),
                        ),
                        Text(
                          S.of(context).egp,
                          style: TextStyle(
                            color: grayColor,
                            fontSize: 16,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                      ],
                    ),
                    Text(
                      S.of(context).each,
                      style: TextStyle(
                        color: grayColor,
                        fontSize: 16,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                  ],
                ),
              ),
            ),
          ],
        ),
        Padding(
          padding: const EdgeInsetsDirectional.symmetric(vertical: 16.0),
          child: Container(
            width: MediaQuery.of(context).size.width * 0.9,
            height: 60,
            decoration: BoxDecoration(
              color: purpleColor,
              borderRadius: BorderRadiusDirectional.circular(12),
            ),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Spacer(
                  flex: 3,
                ),
                Text(
                  S.of(context).boost_now,
                  style: TextStyle(
                      color: Colors.black,
                      fontWeight: FontWeight.bold,
                      fontSize: 18),
                ),
                Spacer(
                  flex: 1,
                ),
                Container(
                  width: MediaQuery.of(context).size.width * 0.23,
                  height: 25,
                  decoration: BoxDecoration(
                    color: Color(0xff7B7DAD),
                  ),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Text(
                        S.of(context).egp,
                        style: TextStyle(
                            color: Colors.black,
                            fontWeight: FontWeight.bold,
                            fontSize: 16),
                      ),
                      Text(
                        '149.99 ',
                        style: TextStyle(
                            color: Colors.black,
                            fontWeight: FontWeight.bold,
                            fontSize: 16),
                      ),
                    ],
                  ),
                ),
                SizedBox(
                  width: 10,
                )
              ],
            ),
          ),
        ),
      ],
    );
  }
}
