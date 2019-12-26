import 'package:fish_redux/fish_redux.dart';
import 'package:flutter/material.dart';
import 'package:futter_demo1/model/new_channel.dart';

class ChannelState implements Cloneable<ChannelState> {

  // 频道列表
  List<NewChannel> channelList;
  // 频道选中标识
  String channelIndex;
  @override
  ChannelState clone() {
    return ChannelState()
    ..channelList=channelList
    ..channelIndex = channelIndex;
  }
}

