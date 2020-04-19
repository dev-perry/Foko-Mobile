import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:flutter_feather_icons/flutter_feather_icons.dart';
import 'package:foko/views/explore_detail.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class ExploreScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final dScreen = MediaQuery.of(context).size;

    return Column(
      mainAxisAlignment: MainAxisAlignment.end,
      crossAxisAlignment: CrossAxisAlignment.start,
      children: <Widget>[
        Padding(
          padding: const EdgeInsets.only(left: 28.0),
          child: Text('Explore', style: TextStyle(
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
                  hintText: 'Search funding network',
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
              width: dScreen.width,
              height: dScreen.height * 0.60,
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
                    Container(
                      decoration: BoxDecoration(
                          color: Colors.white,
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
                      child: Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: FlatButton(
                          padding: EdgeInsets.all(0.0),
                          onPressed: (){
                            Navigator.push(context, MaterialPageRoute(
                              builder: (context) => ExploreDetailView(),
                            ));
                          },
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.center,
                            children: <Widget>[
                              Row(
                                crossAxisAlignment: CrossAxisAlignment.center,
                                children: <Widget>[
                                  CircleAvatar(),
                                  SizedBox(width: 20.0,),
                                  Container(
                                    width: 180.0,
                                    child: Column(
                                      crossAxisAlignment: CrossAxisAlignment.start,
                                      children: <Widget>[
                                        Text('This month\'s rent', style: TextStyle(
                                          fontSize: 18.0,
                                          fontFamily: 'Lato Bold',),),
                                        Text('Working my way through graduate school need some help covering rent please',
                                          softWrap: true,
                                          maxLines: 3,
                                          overflow: TextOverflow.ellipsis,
                                          style: TextStyle(
                                            color: Colors.grey,
                                            fontSize: 13.0,
                                            fontFamily: 'Lato Regular',
                                          ),),
                                      ],
                                    ),
                                  ),
                                  Column(
                                    crossAxisAlignment: CrossAxisAlignment.end,
                                    children: <Widget>[
                                      Icon(
                                        FeatherIcons.plusCircle,
                                        color: Color(0xFFF2C6AD8),
                                        size: 30.0,),
                                      Text('\$300', style: TextStyle(
                                        fontWeight: FontWeight.w600,
                                        fontFamily: 'Lato Regular',
                                        color: Color(0xFFFD8BC2C),
                                        fontSize: 40.0,),),
                                      Text('one-time', style: TextStyle(
                                        color: Color(0xFFFD8BC2C),
                                        fontFamily: 'Lato Regular',
                                        fontStyle: FontStyle.italic,
                                      )),//debt color
                                    ],
                                  ),
                                ],
                              ),
                              Padding(
                                padding: const EdgeInsets.only(left:55.0, top: 10.0,),
                                child: Row(
                                  children: <Widget>[
                                    FaIcon(
                                      FontAwesomeIcons.mapMarkerAlt,
                                      color: Colors.grey,
                                      size: 14.0,),
                                    SizedBox(width: 5.0,),
                                    Text('Trenton, NJ', style: TextStyle(
                                      color:Colors.grey,
                                      fontFamily: 'Lato Light',),),
                                    SizedBox(width: 14.0,),
                                    FaIcon(
                                      FontAwesomeIcons.tag,
                                      color: Colors.grey,
                                      size: 14.0,
                                    ),
                                    SizedBox(width: 5.0,),
                                    Text('Utilities, Emergency', style: TextStyle(
                                      color:Colors.grey,
                                      fontFamily: 'Lato Light',),),
                                  ],
                                ),
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
                            width: 22.0,
                            child: SvgPicture.asset('icons/dollar-sign@3x.svg',)),
                        Text('RANGES', style: TextStyle(fontSize: 14.0, fontFamily: 'Lato Light'),),
                      ],
                    ),
                    Row(
                      children: <Widget>[
                        SizedBox(
                            height: 16.0,
                            width: 30.0,
                            child: SvgPicture.asset('icons/category-icon@3x.svg',)),
                        Text('CATEGORY', style: TextStyle(fontSize: 14.0, fontFamily: 'Lato Light'),),
                      ],
                    ),
                    Row(
                      children: <Widget>[
                        SizedBox(
                            height: 18.0,
                            width: 30.0,
                            child: SvgPicture.asset('icons/map-pin-icon@3x.svg',)),
                        Text('LOCATION', style: TextStyle(fontSize: 14.0, fontFamily: 'Lato Light'),),
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
