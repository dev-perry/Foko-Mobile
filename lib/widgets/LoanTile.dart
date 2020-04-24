import 'package:flutter/material.dart';
import 'package:flutter_feather_icons/flutter_feather_icons.dart';
import 'package:foko/widgets/UserAvatar.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class LoanTile extends StatelessWidget {

  LoanTile({this.id, this.uid, this.title, this.amount, this.desc, this.installment, this.offer, this.nav});

  final String id;
  final String uid;
  final String title;
  final int amount;
  final String desc;
  final bool installment;
  final bool offer;
  final Function nav;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(bottom: 20.0),
      child: Container(
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
            onPressed: () => nav(id),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.center,
              children: <Widget>[
                Row(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: <Widget>[
                    UserAvatar(id: uid,),
                    SizedBox(width: 20.0,),
                    Container(
                      width: 180.0,
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: <Widget>[
                          Text(title, style: TextStyle(
                            fontSize: 18.0,
                            fontFamily: 'Lato Bold',),),
                          Text(desc,
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
                        Text('\$$amount', style: TextStyle(
                          fontWeight: FontWeight.w600,
                          fontFamily: 'Lato Regular',
                          color: (offer) ? Color(0xFFF59D82C) : Color(0xFFFD8BC2C),
                          fontSize: 40.0,),),
                        Text((installment) ? 'installment':'one-time', style: TextStyle(
                          color: (offer) ? Color(0xFFF59D82C): Color(0xFFFD8BC2C),
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
    );
  }
}
