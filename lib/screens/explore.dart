import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:flutter_feather_icons/flutter_feather_icons.dart';
import 'package:foko/widgets/LoanList.dart';

class ExploreScreen extends StatelessWidget {
  ExploreScreen({this.nav});
  final Function nav;

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
                child: LoanList(nav: nav),
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