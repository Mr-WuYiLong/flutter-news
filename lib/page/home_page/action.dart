import 'package:fish_redux/fish_redux.dart';
import 'package:flutter/material.dart' hide Action;
import 'package:futter_demo1/model/new_channel.dart';

import 'channel_component/state.dart';
import 'news_component/state.dart';

//TODO replace with your own action
enum WeatherAction { onChannel,channel,show,onShow }

class WeatherActionCreator {
  static Action onChannel() {
    return const Action(WeatherAction.onChannel);
  }
  static Action channel(List<NewChannel> channelList)  {
    return Action(WeatherAction.channel,payload: {'tabs':channelList});
  }
  static Action show(List<NewsState> newsStateList,String channelId,int page)  {
    return Action(WeatherAction.show,payload: {'contentList':newsStateList,'channelId':channelId,'page':page});
  }

  static Action onShow(String channelId,{int currentPage}) {
    
    return Action(WeatherAction.onShow,payload: {'channelId':channelId,'currentPage':currentPage});
  }
}
