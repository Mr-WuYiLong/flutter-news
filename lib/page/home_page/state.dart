import 'package:fish_redux/fish_redux.dart';
import 'package:flutter/material.dart';
import 'package:futter_demo1/model/new_channel.dart';
import 'channel_component/component.dart';
import 'news_component/state.dart';

class WeatherState extends MutableSource implements Cloneable<WeatherState> {
  List<NewChannel> channelList;
  List<NewsState>  newsList;
  String channelIndex;
  int currentPage;
  ScrollController scrollController;
  @override
  WeatherState clone() {
    return WeatherState()
      ..channelList = channelList
      ..newsList = newsList
      ..channelIndex=channelIndex
      ..currentPage=currentPage;
  }

  @override
  Object getItemData(int index) { 
    return newsList[index];
  }

  @override
  String getItemType(int index) {
    return 'news';
  }

  @override
  int get itemCount => newsList?.length??0;

  @override
  void setItemData(int index, Object data) {
    newsList[index] = data;
  }
}

WeatherState initState(String args) {
  WeatherState weatherState = new WeatherState();
  weatherState.channelList = List<NewChannel>();
  weatherState.currentPage = 1;
  weatherState.newsList =  List<NewsState>();
  weatherState.scrollController = ScrollController();
  return weatherState;
}

// 频道组件
ConnOp<WeatherState, ChannelState> channelConnector() {
  // print('object');
  return ConnOp<WeatherState, ChannelState>(
      get: (WeatherState state) => ChannelState()
      ..channelList=state.channelList
      ..channelIndex=state.channelIndex,
      set: (WeatherState state, ChannelState channelState) => null);
}

// class ChannelConnector extends ConnOp<WeatherState, ChannelState> with ReselectMixin<WeatherState, ChannelState> {
//   @override
//   ChannelState computed(WeatherState state) {

//     return ChannelState()
//     ..channelList=state.channelList;
//   }

//   @override
//   List factors(WeatherState state) {
//     // TODO: implement factors
//     return [state.channelList];
//   }

// }
