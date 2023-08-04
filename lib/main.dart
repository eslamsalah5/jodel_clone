import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:jodel_app/shared/components/widgets/bloc_observe.dart';
import 'package:jodel_app/shared/network/local/cache_helper.dart';
import 'package:jodel_app/shared/styles/mode/cubit.dart';
import 'package:jodel_app/shared/styles/mode/state.dart';
import 'package:jodel_app/shared/styles/themes.dart';
import 'package:jodel_app/views/app_home_view/app_home_view.dart';
import 'package:jodel_app/views/info_on_boarding_view/info_on_boarding.dart';
import 'package:jodel_app/views/location_view/location_view.dart';
import 'package:jodel_app/views/on_boarding/presentation/on_boarding_view.dart';
import 'package:jodel_app/views/splash_view/splash_view.dart';

Future<void> main() async {
  WidgetsFlutterBinding.ensureInitialized();
  Bloc.observer = MyBlocObserver();
  await CacheHelper.init();

  bool? isDark = CacheHelper.getData(key: 'isDark');
  runApp( MyApp(
    isDark: isDark,
  ));
}

class MyApp extends StatelessWidget {
  final bool? isDark;
  const MyApp({super.key, this.isDark});

  // This widgets is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MultiBlocProvider(
        providers: [
          BlocProvider(
            create: (context) => ModeCubit()
              ..changeAppMode(
                fromShared: isDark,
              ),
          ),
        ],
        child: BlocConsumer<ModeCubit, ModeStates>(
            listener: (context, state) {},
            builder: (context, state) {
              return ScreenUtilInit(
                designSize: const Size(360, 690),
                minTextAdapt: true,
                splitScreenMode: true,
                builder: (context, child) => MaterialApp(
                  theme: lightTheme,
          darkTheme: darkTheme,
          themeMode: ModeCubit.get(context).isDark
              ? ThemeMode.dark 
              : ThemeMode.light,
                  routes: {
                    SplashView.pageID: (context) => const SplashView(),
                    OnBoardingView.pageID: (context) => const OnBoardingView(),
                    LocationView.pageID: (context) => const LocationView(),
                    InfoOnBoardingView.pageID: (context) =>
                        const InfoOnBoardingView(),
                    AppHomeView.pageID: (context) => const AppHomeView(),
                  },
                  initialRoute: SplashView.pageID,
                  debugShowCheckedModeBanner: false,
                  home: const SplashView(),
                ),
              );
            }));
  }
}
