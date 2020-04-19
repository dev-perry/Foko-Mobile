import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:foko/screens/account.dart';
import 'package:foko/screens/action.dart';
import 'package:foko/screens/activity.dart';
import 'package:foko/screens/explore.dart';
import 'package:foko/screens/messages.dart';


class AppFrame extends StatefulWidget {
  @override
  _AppFrameState createState() => _AppFrameState();
}

class _AppFrameState extends State<AppFrame> {
  int _currentIndex = 0;



  final List<Widget> _children = [
   ExploreScreen(),
    ActivityScreen(),
    null,
    MessagesScreen(),
    AccountScreen()
  ];

  void onTapped(index){
    if(index != 2){
      setState(() {
        _currentIndex = index;
      });
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: (_currentIndex == 3 || _currentIndex == 4) ? Colors.white : Color(0xFFF2C6AD8),//main color
      bottomNavigationBar: BottomNavigationBar(
        elevation: 1.0,
        backgroundColor: Colors.white,
        type: BottomNavigationBarType.fixed,
        showSelectedLabels: false,
        showUnselectedLabels: false,
        onTap: onTapped,
        currentIndex: _currentIndex,
        items: <BottomNavigationBarItem>[
          BottomNavigationBarItem(
            title: Text('Explore'),
              icon: SvgPicture.asset('icons/globe@3x.svg'),
          ),
          BottomNavigationBarItem(
            title: Text('Activity'),
            icon: SvgPicture.asset('icons/money-bag@3x.svg'),
          ),
          BottomNavigationBarItem(
            title: Text('Loan Action'),
            icon: FloatingActionButton(
              onPressed: (){
                showModalBottomSheet(
                  backgroundColor: Colors.transparent,
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(100.0),
                ),
                  useRootNavigator: true,
                    context: context,
                    builder: (context) => SingleChildScrollView(
                      child: LendingActionScreen(),
                      padding: EdgeInsets.only(bottom: MediaQuery.of(context).viewInsets.bottom,),
                    ),
                );
              },
              backgroundColor:Color(0xFFF2C6AD8),
              child: SvgPicture.asset('icons/Oval@3x.svg'),
            ),
          ),
          BottomNavigationBarItem(
            title: Text('Chat'),
            icon: SvgPicture.asset('icons/message-circle@3x.svg'),
          ),
          BottomNavigationBarItem(
            title: Text('Account'),
            icon: SvgPicture.asset('icons/ui-options@3x.svg'),
          ),
        ],
      ),
      body: SafeArea(child: _children[_currentIndex]),
    );
  }
}
