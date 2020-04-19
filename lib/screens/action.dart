import 'package:flutter/material.dart';
import 'package:flutter_feather_icons/flutter_feather_icons.dart';
import 'package:flutter_svg/flutter_svg.dart';

class LendingActionScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final dScreen = MediaQuery.of(context).size;
    return Container(
      color: Color(0xFF757575),//gray back color
      child: Container(
        height: dScreen.height * 0.5,
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: <Widget>[
            Padding(
              padding:EdgeInsets.all(10.0),
              child:Container(
                height:2.0,
                width:60.0,
                decoration: BoxDecoration(
                  color:Color(0xFFF2C6AD8),
                  borderRadius: BorderRadius.all(Radius.circular(20.0),),
                ),),),
            Text('CONTRIBUTE TO THIS LOAN', style: TextStyle(
              fontSize: 16.0,
              fontFamily: 'Lato Light',
            ),),
            Text('\$24', style: TextStyle(
              fontFamily: 'Lato Bold',
              fontSize: 60.0,
              color: Color(0xFFF2C6AD8),
            ),),
            Container(
              width: 200.0,
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: <Widget>[
                  Column(
                    children: <Widget>[
                      Text('FROM', style: TextStyle(fontFamily: 'Lato Bold'),),
                      CircleAvatar(),
                      Text('@user', style: TextStyle(fontFamily: 'Lato Light'),),
                    ],
                  ),
                  Padding(
                    padding:EdgeInsets.all(10.0),
                    child:Container(
                      height:60.0,
                      width:2.0,
                      decoration: BoxDecoration(
                        color:Colors.black,
                        borderRadius: BorderRadius.all(Radius.circular(20.0),),
                      ),),),
                  Column(
                    children: <Widget>[
                      Text('TO', style: TextStyle(fontFamily: 'Lato Bold'),),
                      CircleAvatar(),
                      Text('@user', style: TextStyle(fontFamily: 'Lato Light'),),
                    ],
                  ),
                ],
              ),
            ),
            Padding(
              padding: EdgeInsets.symmetric(vertical: 10.0,),
              child: Container(
                width: 250.0,
                decoration: BoxDecoration(
                  color: Color(0xFFFF7F7F7),
                  borderRadius: BorderRadius.all(Radius.circular(8.0),),
                ),
                child: Column(
                  children: <Widget>[
                    ListTile(
                      leading: Icon(FeatherIcons.calendar, color: Color(0xFFF2C6AD8),),
                      title: Text('DUE MARCH 2, 2020', style:TextStyle(fontFamily: 'Lato Light'),),
                    ),
                    ListTile(
                      leading: Icon(FeatherIcons.fileText, color: Color(0xFFF2C6AD8),),
                      title: Text('STANDARD SPOT AGREEMENT', style:TextStyle(fontFamily: 'Lato Light'),),
                    ),
                  ],
                )
              ),
            ),
            Text('PRESS AND HOLD THE SPOT BUTTON TO APPROVE', style: TextStyle(
              fontFamily: 'Lato Bold',
              color: Color(0xFFF2C6AD8),
            )),
            Padding(
              padding: const EdgeInsets.only(top: 8.0),
              child: FloatingActionButton(
                onPressed: (){},
                backgroundColor:Color(0xFFF2C6AD8),
                child: SvgPicture.asset('icons/Oval@3x.svg'),
              ),
            )
          ],
        ),
        decoration: BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.only(topLeft: Radius.circular(50.0), topRight: Radius.circular(50.0)),
        ),
      ),
    );
  }
}
