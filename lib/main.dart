import 'package:bloc/bloc.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:jodel_app/layout/layout_screen.dart';
import 'package:jodel_app/shared/components/widgets/bloc_observe.dart';
import 'package:jodel_app/views/info_on_boarding_view/info_on_boarding.dart';
import 'package:jodel_app/views/location_view/location_view.dart';
import 'package:jodel_app/views/on_boarding/presentation/on_boarding_view.dart';
import 'package:jodel_app/views/splash_view/splash_view.dart';
import 'main/cubit.dart';

void main() {
  Bloc.observer = MyBlocObserver();
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widgets is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MultiBlocProvider(
      providers: [
        BlocProvider(
            create: (context) => MainCubit()
             ),
      ],
      child: MaterialApp(
        themeMode: ThemeMode.light,
        routes: {
          SplashView.pageID: (context) => const SplashView(),
          OnBoardingView.pageID: (context) => const OnBoardingView(),
          LocationView.pageID: (context) => const LocationView(),
          InfoOnBoardingView.pageID: (context) => const InfoOnBoardingView(),
          LayoutScreen.pageID: (context) => const LayoutScreen(),
        },
        initialRoute: SplashView.pageID,
        debugShowCheckedModeBanner: false,
        home: const SplashView(),
      ),
    );
  }
}
