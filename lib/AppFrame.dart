import 'package:flutter/material.dart';
import 'package:foko/utilities/bottom_navigation.dart';
import 'package:foko/utilities/tab_navigator.dart';
import 'package:provider/provider.dart';
import 'package:foko/providers/navigation.dart';


class AppFrame extends StatefulWidget {
  @override
  _AppFrameState createState() => _AppFrameState();
}

class _AppFrameState extends State<AppFrame> {
  TabItem currentTab = TabItem.explore;

  Map<TabItem, GlobalKey<NavigatorState>> navigatorKeys = {
    TabItem.explore : GlobalKey<NavigatorState>(),
    TabItem.activity : GlobalKey<NavigatorState>(),
    TabItem.action : GlobalKey<NavigatorState>(),
    TabItem.messages : GlobalKey<NavigatorState>(),
    TabItem.action : GlobalKey<NavigatorState>(),
  };

  void _selectTab(TabItem tabItem){
    setState(() {
      currentTab = tabItem;
    });
  }

  final navigatorKey = GlobalKey<NavigatorState>();

  @override
  Widget build(BuildContext context) {
    return ChangeNotifierProvider(
      create: (context) => Navigation(),
      child: WillPopScope(
        onWillPop: () async => !await navigatorKeys[currentTab].currentState.maybePop(),
        child: Scaffold(
          resizeToAvoidBottomInset: false,
          backgroundColor:(currentTab == TabItem.explore || currentTab == TabItem.activity) ? Color(0xFFF2C6AD8) : Colors.white,//main color
          bottomNavigationBar: BottomNavigation(
            currentTab: currentTab,
            onSelectTab: _selectTab,
          ),
          body: Stack(
            children: <Widget>[
              _buildOffstageNavigator(TabItem.explore),
              _buildOffstageNavigator(TabItem.activity),
              _buildOffstageNavigator(TabItem.action),
              _buildOffstageNavigator(TabItem.messages),
              _buildOffstageNavigator(TabItem.account),
            ],
          ),
        ),
      ),
    );
  }

  Widget _buildOffstageNavigator(TabItem tabItem){
    return Offstage(
      offstage: currentTab != tabItem,
      child: TabNavigator(
        navigatorKey: navigatorKeys[tabItem],
        tabItem: tabItem,
      ),
    );
  }
}

//Adapted from: https://medium.com/coding-with-flutter/flutter-case-study-multiple-navigators-with-bottomnavigationbar-90eb6caa6dbf


