import 'package:fish_redux/fish_redux.dart';
import 'package:flutter/material.dart';
import 'package:futter_demo1/router/routes.dart';

import 'action.dart';
import 'state.dart';

Widget buildView(BottombarState state, Dispatch dispatch, ViewService viewService) {
  //  AbstractRoutes routes = Routes.getRoutes();
  return Scaffold(
      body: Routes.getRoutes().buildPage(state.list[state.index], null),
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
        unselectedItemColor: Colors.black,
        selectedItemColor: Colors.red,
        currentIndex: state.index,
        onTap: (int index) => dispatch(BottombarActionCreator.onSelectPage(index)),
      ),
      
    );
}
