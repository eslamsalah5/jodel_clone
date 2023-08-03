import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:jodel_app/main/state.dart';
import 'package:jodel_app/views/channels_view/channels_view.dart';
import 'package:jodel_app/views/home_view/home_view.dart';
import 'package:jodel_app/views/inbox_view/inbox_view.dart';
import 'package:jodel_app/views/me_view/me_view.dart';
import 'package:persistent_bottom_nav_bar/persistent_tab_view.dart';

class MainCubit extends Cubit<MainStates> {
  MainCubit() : super(MainInitialStates());

  static MainCubit get(context) => BlocProvider.of(context);

  int currentIndex = 0;
     final PersistentTabController controller = PersistentTabController(initialIndex: 0);
  List<Widget> pages() {
    return [
      HomeView(),
      ChannelsView(),
      InboxView(),
      MeView(),
    ];
  }
  List<PersistentBottomNavBarItem> navBarsItems() {
    return [
      PersistentBottomNavBarItem(
        icon: Icon(CupertinoIcons.home),
        title: ("Home"),
        activeColorPrimary: CupertinoColors.activeBlue,
        inactiveColorPrimary: CupertinoColors.systemGrey,
      ),
      PersistentBottomNavBarItem(
        icon: Icon(CupertinoIcons.search),
        title: ("Channels"),
        activeColorPrimary: CupertinoColors.systemTeal,
        inactiveColorPrimary: CupertinoColors.systemGrey,
      ),
      PersistentBottomNavBarItem(
        icon: Icon(Icons.notifications),
        title: ("Inbox"),
        activeColorPrimary: CupertinoColors.activeGreen,
        inactiveColorPrimary: CupertinoColors.systemGrey,
      ),
      PersistentBottomNavBarItem(
        icon: Icon(CupertinoIcons.person),
        title: ("Me"),
        activeColorPrimary: CupertinoColors.activeOrange,
        inactiveColorPrimary: CupertinoColors.systemGrey,
      ),
    ];
  }

  void ChangeNavBar(int index) {
    currentIndex = index;
    emit(ChangeNavBarItem());
  }
}
