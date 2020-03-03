import 'package:booking_beauty/Screens/Home.dart';
import 'package:booking_beauty/Screens/homenavigator.dart';
import 'package:flutter/material.dart';
class BottomNavigate extends StatelessWidget {
  
  const BottomNavigate({Key key,}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
   bottomNavigationBar:BottomNavigationBarExample() ,
    );
  }
}


class BottomNavigationBarExample extends StatefulWidget {
  const BottomNavigationBarExample({Key key,}) : super(key: key);

  @override
  State<StatefulWidget> createState() => _BottomNavigationBarExampleState();
}

class _BottomNavigationBarExampleState
    extends State<BottomNavigationBarExample> {
  int _currentTabIndex = 0;

  @override
  Widget build(BuildContext context) {
    final _kTabPages = <Widget>[
      HomeNavigator(),
      Center(child: Icon(Icons.search, size: 64.0, color: Colors.cyan)),
      Center(child: Icon(Icons.touch_app, size: 64.0, color: Colors.blue)),
    ];
    final _kBottmonNavBarItems = <BottomNavigationBarItem>[
      BottomNavigationBarItem(icon: Icon(
                  Icons.home,
                  color: Colors.red,
                ), title: Text('Home'),),
      BottomNavigationBarItem(icon: Icon(
                  Icons.search,
                  color: Colors.red,
                ),title: Text('Search')),
      BottomNavigationBarItem(icon: Icon(
                  Icons.touch_app,
                  color: Colors.red,
                ), title: Text('Appointment')),
    ];
    assert(_kTabPages.length == _kBottmonNavBarItems.length);
    final bottomNavBar = Visibility(
      visible: true,
      child: 
    BottomNavigationBar(
      
      items: _kBottmonNavBarItems,
      currentIndex: _currentTabIndex,
      type: BottomNavigationBarType.fixed,
      onTap: (int index) {
        setState(() {
          _currentTabIndex = index;
        });
      },
    ),
    );
    return Scaffold(
      body: _kTabPages[_currentTabIndex],
      bottomNavigationBar: bottomNavBar,
    );
  }
}

