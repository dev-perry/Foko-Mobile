import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

class AppFlow {
  const AppFlow({
    @required this.title,
    @required this.mainColor,
    @required this.iconData,
    @required this.navigatorKey,
  })  : assert(title != null),
        assert(mainColor != null),
        assert(iconData != null),
        assert(navigatorKey != null);

  final String title;
  final Color mainColor;
  final IconData iconData;
  final GlobalKey<NavigatorState> navigatorKey;
}

//Source: https://github.com/EdsonBueno/adaptive_bottom_nav_sample/blob/master/lib/custom/app_flow.dart