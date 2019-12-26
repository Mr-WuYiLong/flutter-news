import 'dart:convert';

import 'package:fish_redux/fish_redux.dart';
import 'package:dio/dio.dart';
// import 'package:flutter/material.dart'  hide Action;
import 'package:futter_demo1/model/new_channel.dart';
import 'package:futter_demo1/model/system.dart';
import 'action.dart';
import 'news_component/state.dart';
import 'state.dart';
import '../../utils/request.dart';

Effect<WeatherState> buildEffect() {
  return combineEffects(<Object, Effect<WeatherState>>{
    Lifecycle.initState: _onChannel,
    WeatherAction.onShow: _onShow,
  });
}

void _onChannel(Action action, Context<WeatherState> ctx) async {
   println('effect');
   // 频道列表
    Response res = await dio.get('/109-34', queryParameters: System().toJson());
    List<NewChannel> channelList = List<NewChannel>();
    for (var item in res.data['showapi_res_body']['channelList']) {
      channelList.add(NewChannel.fromJson(item));
    }
    
    _onShow(action, ctx);
    ctx.dispatch(WeatherActionCreator.channel(channelList));
}

void _onShow(Action action, Context<WeatherState> ctx) async {
  Map<String, dynamic> map = System().toJson();
  map['channelId'] = action.payload != null?action.payload['channelId']:'5572a108b3cdc86cf39001cd';
  // 判断是否上拉刷新
  if(ctx.state.channelIndex != map['channelId']) {
      map['page'] = 1;
  }else {
    map['page'] = ++ctx.state.currentPage;
  }
  // 每页20
  map['maxResult'] = 20;
  Response res = await dio.get('/109-35', queryParameters: map);
  List<NewsState> list = List<NewsState>();
  //  println('hhhhhhh'+res.data['showapi_res_body']['pagebean']['contentlist'][0].toString());
  for (var item in res.data['showapi_res_body']['pagebean']['contentlist']) {
    list.add(NewsState.fromJson(item));
  }
  
  ctx.dispatch(WeatherActionCreator.show(list, map['channelId'],map['page']),);
}




