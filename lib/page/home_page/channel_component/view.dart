import 'package:fish_redux/fish_redux.dart';
import 'package:flutter/material.dart';


import 'package:futter_demo1/widget/loading.dart';


import '../action.dart';
import 'action.dart';
import 'state.dart';

Widget buildView(
    ChannelState state, Dispatch dispatch, ViewService viewService) {
     
  return Container(
    color: Colors.white,
    height: 45,
    child: state.channelList?.length != 0?ListView.builder(
      // physics: const AlwaysScrollableScrollPhysics(),
      scrollDirection: Axis.horizontal,
      itemCount: state.channelList?.length,
      itemBuilder: (BuildContext context, int index) {
        
        return FlatButton(
          autofocus: true,
          textColor: state.channelIndex==state.channelList[index].channelId?Colors.red:Colors.black,
          splashColor: Colors.red,
          child: Text(state.channelList[index].name,),
          onPressed: () {
            dispatch(WeatherActionCreator.onShow(state.channelList[index].channelId));
          },
        );
      },
    ):Loading().show(),
  );
}


