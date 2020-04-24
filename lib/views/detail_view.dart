import 'package:flutter/material.dart';
import 'package:foko/functions/database.dart';
import 'package:foko/views/explore_detail.dart';

class DetailView extends StatefulWidget {
  DetailView({this.id});
  final String id;

  @override
  _DetailViewState createState() => _DetailViewState();
}

class _DetailViewState extends State<DetailView> {
  var data;

  void getLoan(String id)async{
    var loan = await LoanDB().getLoan(id: id);
    setState(() {
      data = loan;
    });
  }

  @override
  void initState() {
    super.initState();

    getLoan(widget.id);
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Scaffold(
        backgroundColor: Color(0xFFF2C6AD8), //main color
        body: SafeArea(
          child: (data != null)
              ? ExploreDetail(data: data)
              : Center(
            child: CircularProgressIndicator(
              backgroundColor: Colors.white,
            ),
          ),
        ),
      ),
    );
  }
}
