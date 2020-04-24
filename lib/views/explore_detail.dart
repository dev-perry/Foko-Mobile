import 'package:flutter/material.dart';

class ExploreDetail extends StatelessWidget {
  ExploreDetail({this.data});
  final Map data;

  @override
  Widget build(BuildContext context) {
    final dScreen = MediaQuery.of(context).size;

    return Column(
      mainAxisAlignment: MainAxisAlignment.end,
      crossAxisAlignment: CrossAxisAlignment.start,
      children: <Widget>[
        Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Text((data['installment']) ? 'INSTALLMENT' : 'ONE-TIME', style: TextStyle(
              fontFamily: 'Lato Light',
              fontSize: 18.0,
              color: Colors.white,
            ),),
            Text('\$${data['amount']}', style: TextStyle(
              fontFamily: 'Lato Regular',
              fontSize: 80.0,
              color: Colors.white,
              fontWeight: FontWeight.w400,
            ),),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: <Widget>[
                Container(
                  height: 10.0,
                  width: 10.0,
                  decoration: BoxDecoration(
                    color: (data['offer']) ? Color(0xFFF59D82C) : Color(0xFFFD8BC2C),
                    borderRadius: BorderRadius.circular(30.0),
                  ),
                ),
                SizedBox(width: 6.0,),
                Text((data['offer']) ? 'OFFER':'REQUEST', style: TextStyle(
                  color: Colors.white,
                  fontFamily: 'Lato Light',
                ),),
                SizedBox(width: 12.0,),
                Container(
                  height: 10.0,
                  width: 10.0,
                  decoration: BoxDecoration(
                    color: Color(0xFFF2CBFD8),
                    borderRadius: BorderRadius.circular(30.0),
                  ),
                ),
                SizedBox(width: 6.0,),
                Text('45% FUNDED', style: TextStyle(
                  color: Colors.white,
                  fontFamily: 'Lato Light',
                ),)
              ],
            )
          ],
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
              top: 60.0,
              child: Container(
                color: Colors.greenAccent,
                width: dScreen.width,
                height: dScreen.height,
                child: ListView(
                  children: <Widget>[
                    Padding(
                      padding: const EdgeInsets.only(top: 20.0),
                      child: Text('DESCRIPTION', style: TextStyle(
                        fontFamily: 'Lato Light',
                        color: Color(0xFFF2C6AD8),
                        fontSize: 15.0,
                      )),
                    ),
                    Text(
                      data['desc'],
                      style: TextStyle(
                        fontFamily: 'Lato Regular',
                        color: Color(0xFFF515151),
                        fontSize: 15.0,
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.only(top: 20.0),
                      child: Text('MEDIA', style: TextStyle(
                        fontFamily: 'Lato Light',
                        color: Color(0xFFF2C6AD8),
                        fontSize: 15.0,
                      )),
                    ),
                    Container(
                      height: 100.0,
                      child: ListView(
                        scrollDirection: Axis.horizontal,
                        children: <Widget>[
                          Container(
                            height: 100.0,
                            width: 100.0,
                            child: Image.network('https://images.pexels.com/photos/210019/pexels-photo-210019.jpeg?auto=compress&cs=tinysrgb&dpr=1&w=500'),
                          ),
                          Container(
                            height: 100.0,
                            width: 100.0,
                            child: Image.network('https://www.drivespark.com/images/2020-03/ferrari-portofino-exterior-53.jpg'),
                          ),
                          Container(
                            height: 100.0,
                            width: 100.0,
                            child: Image.network('https://images.pexels.com/photos/210019/pexels-photo-210019.jpeg?auto=compress&cs=tinysrgb&dpr=1&w=500'),
                          ),
                          Container(
                            height: 100.0,
                            width: 100.0,
                            child: Image.network('https://www.drivespark.com/images/2020-03/ferrari-portofino-exterior-53.jpg'),
                          ),
                          Container(
                            height: 100.0,
                            width: 100.0,
                            child: Image.network('https://images.pexels.com/photos/210019/pexels-photo-210019.jpeg?auto=compress&cs=tinysrgb&dpr=1&w=500'),
                          ),
                        ],
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.symmetric(vertical: 10.0),
                      child: Text('DETAILS', style: TextStyle(
                        fontFamily: 'Lato Light',
                        color: Color(0xFFF2C6AD8),
                        fontSize: 15.0,
                      )),
                    ),
                    Container(
                      height: 150.0,
                      decoration: BoxDecoration(
                        color: Color(0xFFF2C6AD8),
                        borderRadius: BorderRadius.circular(20.0)
                      ),
                    )
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
                ),
                child: Center(child: Text(data['title'], style: TextStyle(fontSize: 20.0, fontFamily: 'Lato Bold'),)),
              ),
            ),
          ],
        ),
      ],
    );
  }
}
