import 'package:flutter/material.dart';
import 'package:foko/utilities/bottom_navigation.dart';
import 'package:foko/views/broad_view.dart';
import 'package:foko/views/detail_view.dart';

class TabNavigatorRoutes{
  static const String root = '/';
  static const String detail = '/detail';
}

class TabNavigator extends StatelessWidget {
  TabNavigator({this.navigatorKey, this.tabItem});
  final GlobalKey<NavigatorState> navigatorKey;
  final TabItem tabItem;

  void _push(BuildContext context, {String id : 'Random ID'}){
    var routeBuilders = _routeBuilders(context, id: id);

    Navigator.push(
        context,
        MaterialPageRoute(
            builder: (context) =>
                routeBuilders[TabNavigatorRoutes.detail](context)));
  }

  Map<String,WidgetBuilder> _routeBuilders(BuildContext context, {String id: 'Random ID'}){
    return {
      TabNavigatorRoutes.root : (context) => BroadView(
        nav: (id) => _push(context, id: id),
        index: index[tabItem],
        context: context,
      ),
      TabNavigatorRoutes.detail : (context) => DetailView(
        id: id,
      ),
    };
  }

  @override
  Widget build(BuildContext context) {
    var routeBuilders = _routeBuilders(context);
    return Navigator(
      key: navigatorKey,
      initialRoute: TabNavigatorRoutes.root,
      onGenerateRoute: (routeSettings){
        return MaterialPageRoute(
          builder: (context) => routeBuilders[routeSettings.name](context));
      },
    );
  }
}

//Adapted from: https://medium.com/coding-with-flutter/flutter-case-study-multiple-navigators-with-bottomnavigationbar-90eb6caa6dbf
