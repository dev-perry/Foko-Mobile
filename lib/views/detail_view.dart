import 'package:flutter/material.dart';

class DetailView extends StatelessWidget {
  DetailView({this.id});
  final String id;
  @override
  Widget build(BuildContext context) {
    return Container(
      child: Scaffold(
    backgroundColor: Color(0xFFF2C6AD8),//main color
    body: SafeArea(
    child: Text('This is the detail page. ID: $id', style: TextStyle(color: Colors.white,)),
    ),
    ),
    );
  }
}
