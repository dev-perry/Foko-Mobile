import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:foko/widgets/SpotButton.dart';
import 'package:provider/provider.dart';
import 'package:foko/providers/navigation.dart';

enum TabItem {explore, activity, action, messages, account}

Map<TabItem, int> index = {
  TabItem.explore : 0,
  TabItem.activity : 1,
  TabItem.action : 2,
  TabItem.messages : 3,
  TabItem.account : 4,
};

Map<TabItem, Widget> tabName = {
  TabItem.explore : Text('Explore'),
  TabItem.activity: Text('Acitivity'),
  TabItem.action : Text('Loan Action'),
  TabItem.messages : Text('Messages'),
  TabItem.account : Text('Account')
};

Map<TabItem, Widget> tabIcon = {
  TabItem.explore : SvgPicture.asset('icons/globe@3x.svg'),
  TabItem.activity : SvgPicture.asset('icons/money-bag@3x.svg'),
  TabItem.action : SpotButton(),
  TabItem.messages : SvgPicture.asset('icons/message-circle@3x.svg'),
  TabItem.account : SvgPicture.asset('icons/ui-options@3x.svg'),
};

class BottomNavigation extends StatelessWidget {
  BottomNavigation({this.currentTab, this.onSelectTab});
  final TabItem currentTab;
  final ValueChanged<TabItem> onSelectTab;

  @override
  Widget build(BuildContext context) {

    void handleTap(TabItem tab){
      onSelectTab(tab);
      var pos = index[tab];
      Provider.of<Navigation>(context, listen: false).updateView(pos);
    }

    return BottomNavigationBar(
      elevation: 2.0,
      backgroundColor: Colors.white,
      showUnselectedLabels: false,
      showSelectedLabels: false,
      type: BottomNavigationBarType.fixed,
      items: [
        _buildItem(tabItem: TabItem.explore),
        _buildItem(tabItem: TabItem.activity),
        _buildItem(tabItem: TabItem.action),
        _buildItem(tabItem: TabItem.messages),
        _buildItem(tabItem: TabItem.account),
      ],
      onTap: (index){
        handleTap(TabItem.values[index]);
      }
    );
  }
}

BottomNavigationBarItem _buildItem({TabItem tabItem}){
  Widget title = tabName[tabItem];
  Widget icon = tabIcon[tabItem];

  return BottomNavigationBarItem(
    icon: icon,
    title: title,
  );
}

//Adapted from: https://medium.com/coding-with-flutter/flutter-case-study-multiple-navigators-with-bottomnavigationbar-90eb6caa6dbf
