import 'package:fish_redux/fish_redux.dart';
import 'package:flutter/material.dart';

import 'action.dart';
import 'state.dart';

Widget buildView(MineState state, Dispatch dispatch, ViewService viewService) {
  return Scaffold(
      appBar: AppBar(
        title: Text('我的'),
        centerTitle: true,
      ),
      body: SingleChildScrollView(
          child: Column(
        children: <Widget>[
          viewService.buildComponent('user'),
          Container(
            height: 10,
            margin: EdgeInsets.only(bottom: 10),
            color: Colors.grey[200],
          ),
          viewService.buildComponent('always')
        ],
      )));
}
