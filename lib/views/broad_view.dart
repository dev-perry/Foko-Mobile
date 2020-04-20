import 'package:flutter/material.dart';
import 'package:foko/screens/account.dart';
import 'package:foko/screens/activity.dart';
import 'package:foko/screens/explore.dart';
import 'package:foko/screens/messages.dart';

class BroadView extends StatelessWidget {
  BroadView({this.index, this.nav, this.context});

  final int index;
  final Function nav;
  final context;
  @override
  Widget build(BuildContext context) {
    final List<Widget> screens = [
      ExploreScreen(nav: nav),
      ActivityScreen(),
      Container(width: 0, height: 0,),
      MessagesScreen(),
      AccountScreen()
    ];

      return
        screens[index];
  }
}
