import 'package:fish_redux/fish_redux.dart';
import 'package:flutter/material.dart';

import 'action.dart';
import 'state.dart';

Widget buildView(UserState state, Dispatch dispatch, ViewService viewService) {
  return Padding(
    padding: EdgeInsets.all(10),
    child: Row(
      children: <Widget>[
        CircleAvatar(
          child: Text('M'),
        ),
        SizedBox(width: 20,),
        Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: <Widget>[
            Text('龙泉诗',style: TextStyle(
              fontWeight: FontWeight.bold,
              fontSize: 20
            ),),
            Row(
              children: <Widget>[
                Text('头条'),
                SizedBox(width: 3,),
                Text('51',style: TextStyle(
                  fontWeight: FontWeight.w500,
                  
                ),),
                SizedBox(width: 10,),
                Text('关注'),
                SizedBox(width: 3,),
                Text('11',style: TextStyle(
                  fontWeight: FontWeight.w500,
                  
                ),),
                SizedBox(width: 10,),
                Text('粉丝'),
                SizedBox(width: 3,),
                Text('1000',style: TextStyle(
                  fontWeight: FontWeight.w500,     
                ),),
              ],
            )
          ],
        )
      ],
    ),
  );
}



