import 'package:flutter/material.dart';
import 'package:flutter_feather_icons/flutter_feather_icons.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:flutter_svg/flutter_svg.dart';

class AccountScreen extends StatefulWidget {
  @override
  _AccountScreenState createState() => _AccountScreenState();
}

class _AccountScreenState extends State<AccountScreen> {
  @override
  Widget build(BuildContext context) {
    final dScreen = MediaQuery.of(context).size;

    return Column(
      mainAxisAlignment: MainAxisAlignment.end,
      crossAxisAlignment: CrossAxisAlignment.start,
      children: <Widget>[
        Padding(
          padding: const EdgeInsets.only(left: 28.0),
          child: Text(
            'Account',
            style: TextStyle(
              color: Color(0xFFF2C6AD8),
              fontSize: 50.0,
              fontFamily: 'Lato Light',
            ),
          ),
        ),
        SizedBox(
          height: 20.0,
        ),
        Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            FaIcon(
              FontAwesomeIcons.barcode,
              color: Color(0xFFF2C6AD8),
            ),
            SizedBox(
              width: 20.0,
            ),
            CircleAvatar(
              radius: 45.0,
            ),
            SizedBox(
              width: 20.0,
            ),
            SvgPicture.asset('icons/edit-button@3x.svg'),
          ],
        ),
        SizedBox(
          height: 20.0,
        ),
        Padding(
          padding: const EdgeInsets.only(
            left: 28.0,
            bottom: 20.0,
          ),
          child: Text(
            'PAYMENT METHODS',
            style: TextStyle(
              fontFamily: 'Lato Light',
              fontSize: 14.0,
              color: Color(0xFFF2C6AD8),
            ),
          ),
        ),
        Container(
          height: 120.0,
          width: dScreen.width,
          child: ListView(
            padding: EdgeInsets.only(left: 28.0),
            scrollDirection: Axis.horizontal,
            children: <Widget>[
              Padding(
                padding: const EdgeInsets.only(right:10.0),
                child: Container(
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: <Widget>[
                      Padding(
                        padding: const EdgeInsets.only(left: 10.0),
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.center,
                          crossAxisAlignment: CrossAxisAlignment.end,
                          children: <Widget>[
                            Text(
                              'Personal Card',
                              style: TextStyle(
                                  color: Colors.white, fontFamily: 'Lato Regular', fontSize: 15.0,),
                            ),
                            Text('****5678',
                            style: TextStyle(
                              color: Colors.white, fontFamily: 'Lato Regular', fontSize: 12.0,
                            ),),
                          ],
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.only(bottom: 8.0, right: 8.0,),
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.end,
                          children: <Widget>[
                            FaIcon(FontAwesomeIcons.ccVisa, size: 25.0, color: Colors.white,),
                          ],
                        ),
                      )
                    ],
                  ),
                  width: 200.0,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.all(
                      Radius.circular(15.0),
                    ),
                    color: Color(0xFFF2C6AD8),
                  ),
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(right: 10.0,),
                child: Container(
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: <Widget>[
                      Padding(
                        padding: const EdgeInsets.only(left: 10.0),
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.center,
                          crossAxisAlignment: CrossAxisAlignment.end,
                          children: <Widget>[
                            Text(
                              'Business Card',
                              style: TextStyle(
                                color: Colors.white, fontFamily: 'Lato Regular', fontSize: 15.0,),
                            ),
                            Text('****4890',
                              style: TextStyle(
                                color: Colors.white, fontFamily: 'Lato Regular', fontSize: 12.0,
                              ),),
                          ],
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.only(bottom: 8.0, right: 8.0,),
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.end,
                          children: <Widget>[
                            FaIcon(FontAwesomeIcons.ccMastercard, size: 25.0, color: Colors.white,),
                          ],
                        ),
                      )
                    ],
                  ),
                  width: 200.0,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.all(
                      Radius.circular(15.0),
                    ),
                    color: Color(0xFFF2C6AD8),
                  ),
                ),
              ),
            ],
          ),
        ),
        SizedBox(height: 10.0,),
        Container(
          width: dScreen.width,
          height: dScreen.height * 0.37,
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              ListTile(
                contentPadding: EdgeInsets.only(left: 28.0,),
                dense: true,
                leading: Icon(FeatherIcons.users, color: Color(0xFFF2C6AD8),),
                title: Text('My Network', style: TextStyle(
                  fontFamily: 'Lato Light',
                  color: Color(0xFFF2C6AD8),
                  fontSize: 26.0,
                ),),
              ),
              ListTile(
                contentPadding: EdgeInsets.only(left: 28.0,),
                dense: true,
                leading: Icon(FeatherIcons.fileText, color: Color(0xFFF2C6AD8),),
                title: Text('Lending Profile & History', style: TextStyle(
                  fontFamily: 'Lato Light',
                  color: Color(0xFFF2C6AD8),
                  fontSize: 26.0,
                ),),
              ),
              ListTile(
                contentPadding: EdgeInsets.only(left: 28.0,),
                dense: true,
                leading: Icon(FeatherIcons.settings, color: Color(0xFFF2C6AD8),),
                title: Text('Notifications & Settings', style: TextStyle(
                  fontFamily: 'Lato Light',
                  color: Color(0xFFF2C6AD8),
                  fontSize: 26.0,
                ),),
              ),
              ListTile(
                contentPadding: EdgeInsets.only(left: 28.0,),
                dense: true,
                leading: Icon(FeatherIcons.helpCircle, color: Color(0xFFF2C6AD8),),
                title: Text('Frequently Asked Questions', style: TextStyle(
                  fontFamily: 'Lato Light',
                  color: Color(0xFFF2C6AD8),
                  fontSize: 26.0,
                ),),
              ),
              ListTile(
                contentPadding: EdgeInsets.only(left: 28.0,),
                dense: true,
                leading: Icon(FeatherIcons.send, color: Color(0xFFF2C6AD8),),
                title: Text('Contact Customer Support', style: TextStyle(
                  fontFamily: 'Lato Light',
                  color: Color(0xFFF2C6AD8),
                  fontSize: 26.0,
                ),),
              ),
            ],
          ),
        ),
      ],
    );
  }
}
