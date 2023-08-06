import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:jodel_app/shared/styles/mode/cubit.dart';
import 'package:jodel_app/shared/styles/mode/state.dart';
class MeViewBody extends StatefulWidget {
  const MeViewBody({Key? key}) : super(key: key);

  @override
  State<MeViewBody> createState() => _MeViewBodyState();
}

class _MeViewBodyState extends State<MeViewBody> {
  @override
  Widget build(BuildContext context) {
    bool val = true;
    return BlocConsumer<ModeCubit, ModeStates>(
        listener: (context, state) {},
        builder: (context, state) {
          return Scaffold(
              appBar: AppBar(),
              body: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  const Padding(
                    padding: EdgeInsetsDirectional.only(start: 16),
                    child: Text(
                      'My Jodel',
                      style: TextStyle(
                        fontSize: 18,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                  ),
                  Container(
                    margin: const EdgeInsetsDirectional.symmetric(
                        vertical: 16, horizontal: 12),
                    width: double.maxFinite - 32,
                    height: 210,
                    decoration: BoxDecoration(
                      color: ModeCubit.get(context).isDark
                          ? const Color(0xff26252A)
                          : Colors.white,
                      borderRadius: BorderRadiusDirectional.circular(12),
                      boxShadow: [
                        BoxShadow(
                          color: Colors.grey.withOpacity(0.25),
                          spreadRadius: 5,
                          blurRadius: 7,
                          offset:
                              const Offset(0, 3), // changes position of shadow
                        ),
                      ],
                    ),
                    child: Column(
                      children: [
                        settingItem(text: 'My Jodels'),
                        const Divider(
                          thickness: 2,
                        ),
                        settingItem(
                          text: 'Language',
                        ),
                        const Divider(
                          thickness: 2,
                        ),
                        Padding(
                          padding: const EdgeInsets.all(12.0),
                          child: Row(
                            children: [
                              const Padding(
                                padding: EdgeInsetsDirectional.only(end: 8),
                                child: Icon(Icons.dark_mode_outlined),
                              ),
                              const Text(
                                'Dark Mode',
                                style: TextStyle(fontSize: 18),
                              ),
                              const Spacer(),
                              Switch(
                                value: val,
                                onChanged: (value) {
                                  ModeCubit.get(context).changeAppMode();
                                },
                              ),
                            ],
                          ),
                        ),
                      ],
                    ),
                  ),
                  const Padding(
                    padding: EdgeInsetsDirectional.symmetric(horizontal: 32,vertical: 8),
                    child: Text(
                      'Powers',
                      style: TextStyle(
                        fontSize: 18,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                  ),
                  Center(
                    child: Container(
                      margin: const EdgeInsetsDirectional.symmetric(
                          vertical: 16, horizontal: 12),
                      width: MediaQuery.of(context).size.width * 0.8,
                      height: 70,
                      decoration: BoxDecoration(
                        gradient: const LinearGradient(
                          begin: Alignment.topCenter,
                          end: Alignment.bottomCenter,
                          colors: [
                            Color(0xff8274E7),
                            Color(0xff3D8AF3),
                          ],
                        ),
                        borderRadius: BorderRadiusDirectional.circular(12),
                        boxShadow: [
                          BoxShadow(
                            color: Colors.grey.withOpacity(0.25),
                            spreadRadius: 5,
                            blurRadius: 7,
                            offset: const Offset(
                                0, 3), // changes position of shadow
                          ),
                        ],
                      ),
                      child: const Padding(
                        padding:
                            EdgeInsetsDirectional.symmetric(vertical: 8),
                        child: Column(
                          children: [
                            Icon(
                              Icons.rocket_launch,
                              color: Colors.white,
                              size: 32,
                            ),
                            Text(
                              '0 Boosts',
                              style: TextStyle(
                                  color: Colors.white,
                                  fontSize: 16,
                                  fontWeight: FontWeight.bold),
                            ),
                          ],
                        ),
                      ),
                    ),
                  ),
                ],
              ));
        });
  }
}

Widget settingItem({
  required String text,
}) =>
    Padding(
      padding: const EdgeInsets.all(12.0),
      child: Row(
        children: [
          Text(
            text,
            style: const TextStyle(
              fontSize: 18,
            ),
          ),
          const Spacer(),
          const Icon(Icons.arrow_forward_ios_rounded)
        ],
      ),
    );
