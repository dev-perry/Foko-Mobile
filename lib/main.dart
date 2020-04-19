import 'package:flutter/material.dart';
import 'package:foko/AppFrame.dart';

void main() => runApp(App());

class App extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home:AppFrame(),
    );
  }
}

