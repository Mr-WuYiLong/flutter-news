import 'package:fish_redux/fish_redux.dart';
import 'package:flutter/material.dart';

import 'action.dart';
import 'state.dart';

Widget buildView(NewsState state, Dispatch dispatch, ViewService viewService) {
//  println('object8888');
  return ListTile(
    // isThreeLine: true,
    // contentPadding: EdgeInsets.all(value),
    // dense: true,
    title: Text(state.title),
    subtitle: Row(
      children: <Widget>[
        Flexible(
          child: Text(state.source ?? ''),
        ),
        SizedBox(
          width: 5,
        ),
        Flexible(
          child: Text(state.pubDate ?? '',),
        )
      ],
    ),
    trailing: state.imageurls.length > 0 && state.imageurls[0]['url'] != 'https://news.163.com/19/1226/13/anonymous'
        ? Image.network(state.imageurls[0]['url'],width: 100,)
        : null,
        // onTap: () {
        //   state.link
        // },
     onTap: () => dispatch(NewsActionCreator.onDetail(state.allList,state.title)),
  );
}

Widget _buildImage(String url) {
  return Container(
    child: Image.network(url,),
    width: 100,
   
  );
}
