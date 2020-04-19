import 'package:flutter/material.dart';
import 'package:flutter_feather_icons/flutter_feather_icons.dart';

class MessagesScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final dScreen = MediaQuery.of(context).size;
    return Column(
      mainAxisAlignment: MainAxisAlignment.end,
      crossAxisAlignment: CrossAxisAlignment.start,
      children: <Widget>[
        Padding(
          padding: const EdgeInsets.only(left: 28.0),
          child: Text('Messages', style: TextStyle(
            color: Color(0xFFF2C6AD8),
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
                  hintText: 'Search conversations',
                  hintStyle: TextStyle(color: Colors.black, fontFamily: 'Open Sans Light',),
                  contentPadding: EdgeInsets.symmetric(vertical: 10.0, horizontal: 20.0),
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.all(Radius.circular(20.0)),
                    //borderSide: BorderSide(color: Colors.black,) ,
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
                color: Colors.transparent,
              ),
              width: MediaQuery.of(context).size.width,
              height: MediaQuery.of(context).size.height * 0.60,
            ),
            Container(
              color: Colors.transparent,
              width: dScreen.width,
              height: dScreen.height * 0.60,
              child: ListView(
                padding: EdgeInsets.only(top: 0.0,),
                children: <Widget>[
                  Container(
                    padding: EdgeInsets.symmetric(vertical: 12.0,),
                    color: Color(0xFFFBFBFB),
                    child: ListTile(
                      leading: CircleAvatar(),
                      title: Text('Perry A.', style: TextStyle(
                        fontFamily: 'Lato Bold',
                        color: Color(0xFFF2C6AD8),
                        fontSize: 20.0,
                      ),),
                      subtitle: Text('Hey man I just wanted to check in with you about your repayment are you still on track?',
                        softWrap: true,
                        overflow: TextOverflow.ellipsis,
                        maxLines: 2,
                        style: TextStyle(
                        fontFamily: 'Lato Bold',
                        fontSize: 14.0,
                          color: Colors.black,
                      ),),
                      trailing: Column(
                        crossAxisAlignment: CrossAxisAlignment.center,
                        children: <Widget>[
                          Text('10:53 pm', style: TextStyle(fontFamily: 'Lato Bold',),),
                          SizedBox(height: 12.0,),
                          Container(
                            width: 20.0,
                            height: 20.0,
                            alignment: Alignment.center,
                            decoration: BoxDecoration(
                                color: Color(0xFFF2C6AD8),
                                shape: BoxShape.circle,
                            ),
                            child: Text('2', style: TextStyle(color: Colors.white,),),
                          ),
                        ],
                      ),
                    ),
                  ),
                  Container(
                    padding: EdgeInsets.symmetric(vertical: 12.0,),
                    color: Colors.white,
                    child: ListTile(
                      leading: CircleAvatar(),
                      title: Text('Henry K.', style: TextStyle(
                        fontFamily: 'Lato Regular',
                        color: Color(0xFFF2C6AD8),
                        fontSize: 20.0,
                      ),),
                      subtitle: Text('Yeah I just need to get an oil change and it is easier for me to tell the guy that his payment is inbound.',
                        softWrap: true,
                        overflow: TextOverflow.ellipsis,
                        maxLines: 2,
                        style: TextStyle(
                          fontFamily: 'Lato Regular',
                          fontSize: 14.0,
                          color: Colors.black,
                        ),),
                      trailing: Column(
                        crossAxisAlignment: CrossAxisAlignment.center,
                        children: <Widget>[
                          Text('5:00 pm', style: TextStyle(fontFamily: 'Lato Regular',),),
                          SizedBox(height: 12.0,),
                        ],
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ],
        )
      ],
    );
  }
}
