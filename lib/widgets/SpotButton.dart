import 'package:flutter/material.dart';
import 'package:foko/screens/action.dart';
import 'package:flutter_svg/flutter_svg.dart';

class SpotButton extends StatefulWidget {
  @override
  _SpotButtonState createState() => _SpotButtonState();
}

class _SpotButtonState extends State<SpotButton> {
  var position;

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
  }
  @override
  Widget build(BuildContext context) {
    return FloatingActionButton(
      onPressed: (){
        showModalBottomSheet(
          context: context,
          backgroundColor: Colors.transparent,
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(100.0),
          ),
          useRootNavigator: true,
          builder: (context) => SingleChildScrollView(
            child: LendingActionScreen(),
            padding: EdgeInsets.only(bottom: MediaQuery.of(context).viewInsets.bottom,),
          ),
        );
      },
      backgroundColor:Color(0xFFF2C6AD8),
      child: SvgPicture.asset('icons/Oval@3x.svg'),
    );
  }
}
