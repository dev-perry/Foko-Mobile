import 'package:flutter/material.dart';
import 'package:flutter_feather_icons/flutter_feather_icons.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class ActivityScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final dScreen = MediaQuery.of(context).size;
    return Column(
      mainAxisAlignment: MainAxisAlignment.end,
      crossAxisAlignment: CrossAxisAlignment.start,
      children: <Widget>[
        Padding(
          padding: const EdgeInsets.only(left: 28.0),
          child: Text('Activity', style: TextStyle(
            color: Colors.white,
            fontSize: 50.0,
            fontFamily: 'Lato Light',
          ),),
        ),
        SizedBox(height: 20.0,),
        Center(
          child: Container(
            width: 380.0,
            child: Material(
              elevation: 10.0,
              borderRadius: BorderRadius.all(Radius.circular(20.0)),
              child: TextField(
                decoration: InputDecoration(
                  filled: true,
                  fillColor: Colors.white,
                  prefixIcon: Icon(
                    FeatherIcons.search,
                    color: Color(0xFFF2C6AD8),
                  ),
                  hintText: 'Search all transactions',
                  hintStyle: TextStyle(color: Colors.black, fontFamily: 'Open Sans Light',),
                  contentPadding: EdgeInsets.symmetric(vertical: 10.0, horizontal: 20.0),
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.all(Radius.circular(20.0)),
                    borderSide: BorderSide(color: Colors.black,) ,
                  ),
                ),
              ),
            ),
          ),
        ),
        SizedBox(height: 20.0,),
        Stack(
          children: <Widget>[
            Container(
              decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.only(topLeft: Radius.circular(65.0), topRight:Radius.circular(65.0)),
              ),
              width: MediaQuery.of(context).size.width,
              height: MediaQuery.of(context).size.height * 0.60,
            ),
            Positioned(
              top: 50.0,
              child: Container(
                color: Colors.transparent,
                width: dScreen.width,
                height: dScreen.height * 0.60,
                child: ListView(
                  padding: EdgeInsets.symmetric(horizontal: 30.0, vertical: 20.0,
                  ),
                  children: <Widget>[
                    Padding(
                      padding: const EdgeInsets.only(bottom: 20.0,),
                      child: Container(
                        decoration: BoxDecoration(
                            color: Color(0xFFF59D82C),
                            borderRadius: BorderRadius.circular(18.0,),
                            boxShadow: [
                              BoxShadow(
                                color: Color(0xFFFCEDCF7), //shadow color
                                offset: Offset(0, 2.5,),
                                blurRadius: 4.0,
                                spreadRadius: 1.5,
                              ),
                            ]
                        ),
                        child: Container(
                          margin: EdgeInsets.only(left: 3.0,),
                          padding: const EdgeInsets.all(14.0),
                          decoration: BoxDecoration(
                            color: Colors.white,
                            borderRadius: BorderRadius.circular(18.0,),
                          ),
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.center,
                            children: <Widget>[
                              Row(
                                crossAxisAlignment: CrossAxisAlignment.center,
                                children: <Widget>[
                                  CircleAvatar(),
                                  SizedBox(width: 12.0,),
                                  Container(
                                    child: Column(
                                      crossAxisAlignment: CrossAxisAlignment.start,
                                      children: <Widget>[
                                        Text('This month\'s rent', style: TextStyle(
                                          fontSize: 22.0,
                                          fontFamily: 'Lato Bold',),),
                                        Padding(
                                          padding: const EdgeInsets.only(top: 8.0),
                                          child: Row(
                                            children: <Widget>[
                                              FaIcon(
                                                FontAwesomeIcons.userAlt,
                                                color: Colors.grey,
                                                size: 14.0,),
                                              SizedBox(width: 5.0,),
                                              Text('perry.exe', style: TextStyle(
                                                color:Colors.grey,
                                                fontFamily: 'Lato Light',),),
                                              SizedBox(width: 14.0,),
                                              FaIcon(
                                                FontAwesomeIcons.calendarAlt,
                                                color: Colors.grey,
                                                size: 16.0,
                                              ),
                                              SizedBox(width: 5.0,),
                                              Text('Feb. 20, 2020', style: TextStyle(
                                                color:Colors.grey,
                                                fontFamily: 'Lato Light',),),
                                            ],
                                          ),
                                        ),
                                      ],
                                    ),
                                  ),
                                  SizedBox(width: 12.0,),
                                  Column(
                                    crossAxisAlignment: CrossAxisAlignment.end,
                                    children: <Widget>[
                                      Text('\$300', style: TextStyle(
                                        fontFamily: 'Lato Regular',
                                        color: Color(0xFFF59D82C),
                                        fontSize: 30.0,),), //debt color
                                    ],
                                  ),
                                ],
                              ),
                            ],
                          ),
                        ),
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.only(bottom: 20.0),
                      child: Container(
                        decoration: BoxDecoration(
                            color: Color(0xFFFD8BC2C),
                            borderRadius: BorderRadius.circular(18.0,),
                            boxShadow: [
                              BoxShadow(
                                color: Color(0xFFFCEDCF7), //shadow color
                                offset: Offset(0, 2.5,),
                                blurRadius: 4.0,
                                spreadRadius: 1.5,
                              ),
                            ]
                        ),
                        child: Container(
                          margin: EdgeInsets.only(right: 3.0,),
                          padding: const EdgeInsets.all(14.0),
                          decoration: BoxDecoration(
                            color: Colors.white,
                            borderRadius: BorderRadius.circular(18.0,),
                          ),
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.center,
                            children: <Widget>[
                              Row(
                                crossAxisAlignment: CrossAxisAlignment.center,
                                children: <Widget>[
                                  CircleAvatar(),
                                  SizedBox(width: 12.0,),
                                  Container(
//                                  width: 180.0,
                                    child: Column(
                                      crossAxisAlignment: CrossAxisAlignment.start,
                                      children: <Widget>[
                                        Text('NYE party', style: TextStyle(
                                          fontSize: 22.0,
                                          fontFamily: 'Lato Bold',),),
                                        Padding(
                                          padding: const EdgeInsets.only(top: 8.0),
                                          child: Row(
                                            children: <Widget>[
                                              FaIcon(
                                                FontAwesomeIcons.userAlt,
                                                color: Colors.grey,
                                                size: 14.0,),
                                              SizedBox(width: 5.0,),
                                              Text('perry.exe', style: TextStyle(
                                                color:Colors.grey,
                                                fontFamily: 'Lato Light',),),
                                              SizedBox(width: 14.0,),
                                              FaIcon(
                                                FontAwesomeIcons.calendarAlt,
                                                color: Colors.grey,
                                                size: 16.0,
                                              ),
                                              SizedBox(width: 5.0,),
                                              Text('Feb. 20, 2020', style: TextStyle(
                                                color:Colors.grey,
                                                fontFamily: 'Lato Light',),),
                                            ],
                                          ),
                                        ),
                                      ],
                                    ),
                                  ),
                                  SizedBox(width: 12.0,),
                                  Column(
                                    crossAxisAlignment: CrossAxisAlignment.end,
                                    children: <Widget>[
                                      Text('\$35', style: TextStyle(
                                        fontFamily: 'Lato Regular',
                                        color: Color(0xFFFD8BC2C),
                                        fontSize: 30.0,),), //debt color
                                    ],
                                  ),
                                ],
                              ),
                            ],
                          ),
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            ),
            Positioned(
              top: 0.0,
              width: MediaQuery.of(context).size.width,
              child: Container(
                padding: EdgeInsets.only(bottom: 20.0, top: 20.0,),
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.only(topLeft: Radius.circular(100.0), topRight:Radius.circular(100.0),),
                  color: Colors.white,
                  boxShadow:[
                    BoxShadow(
                      color: Colors.grey,
                      blurRadius: 5.0,
                      spreadRadius: 0.0,
                      offset: Offset(0,2.0,),
                    ),
                  ],
                ),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  mainAxisSize: MainAxisSize.min,
                  children: <Widget>[
                    Row(
                      children: <Widget>[
                        SizedBox(
                            height: 18.0,
                            width: 28.0,
                            child: Icon(FeatherIcons.loader, size: 20.0,),
                        ),
                        Text('PROCESSING', style: TextStyle(fontSize: 14.0, fontFamily: 'Lato Light'),),
                      ],
                    ),
                    Row(
                      children: <Widget>[
                        SizedBox(
                            height: 18.0,
                            width: 28.0,
                            child: Icon(FeatherIcons.check, size: 20.0,),
                        ),
                        Text('COMPLETED', style: TextStyle(fontSize: 14.0, fontFamily: 'Lato Light'),),
                      ],
                    ),
                    Row(
                      children: <Widget>[
                        SizedBox(
                            height: 18.0,
                            width: 30.0,
                            child: Icon(FeatherIcons.pocket, size: 20.0,),
                        ),
                        Text('ALL SAVED', style: TextStyle(fontSize: 14.0, fontFamily: 'Lato Light'),),
                      ],
                    ),
                  ],
                ),
              ),
            ),
          ],
        ),
      ],
    );
  }
}

