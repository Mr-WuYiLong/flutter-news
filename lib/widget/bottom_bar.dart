
import 'package:flutter/material.dart';

class BottomBar extends StatefulWidget {
  BottomBar({Key key}) : super(key: key);

  @override
  _BottomBarState createState() => _BottomBarState();
}

class _BottomBarState extends State<BottomBar> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('小测试'),
      ),
      body: Text('data'),
      bottomNavigationBar: BottomNavigationBar(
        items: [
          BottomNavigationBarItem(
            title: Text('首页'),
            icon: Icon(Icons.home)
          ),
          BottomNavigationBarItem(
            title: Text('我的'),
            icon: Icon(Icons.person)
          ),
        ],
      ),
    );
  }
}
