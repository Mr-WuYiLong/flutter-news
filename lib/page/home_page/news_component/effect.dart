import 'package:dio/dio.dart';
import 'package:fish_redux/fish_redux.dart';
import 'package:flutter/material.dart' hide Action;
import 'action.dart';
import 'state.dart';

Effect<NewsState> buildEffect() {
  return combineEffects(<Object, Effect<NewsState>>{
     NewsAction.onDetail: _onDetail,
  });
}

void _onDetail(Action action, Context<NewsState> ctx) async {
  
  //  Response res = await Dio().get(action.payload['link']);
  //  println(res.data);
  Navigator.of(ctx.context).pushNamed('detail',arguments: {
    'content':action.payload['content'],
    'title': action.payload['title']
  });
}
