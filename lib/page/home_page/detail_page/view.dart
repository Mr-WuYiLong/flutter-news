import 'package:fish_redux/fish_redux.dart';
import 'package:flutter/material.dart';

import 'action.dart';
import 'state.dart';
Widget buildView(DetailState state, Dispatch dispatch, ViewService viewService) {
 
  return Scaffold(
    appBar: AppBar(
      title: Text('今日大事件'),
    ),
    body:Padding(
      padding: EdgeInsets.fromLTRB(10, 20, 10, 20),
      child: ListView.builder(
      itemCount: state.content.length,
      itemBuilder: (BuildContext context, int index) {
      return state.content[index] is Map?Padding(padding: EdgeInsets.fromLTRB(5, 10, 5, 10),child: Image.network(state.content[index]['url'],fit: BoxFit.cover,),): Padding(
        padding: index==0?EdgeInsets.only(bottom: 20):EdgeInsets.all(0),
        child: Text(state.content[index],textAlign: index==0?TextAlign.center:TextAlign.start, style: TextStyle(
        fontSize: index==0?20:18,
        fontWeight:index==0?FontWeight.bold:FontWeight.normal,
        
      ),),
      );
     },
    ),
    )
  );
}


