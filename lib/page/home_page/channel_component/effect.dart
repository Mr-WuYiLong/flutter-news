import 'package:dio/dio.dart';
import 'package:fish_redux/fish_redux.dart';
import 'package:futter_demo1/model/system.dart';
import 'package:futter_demo1/utils/request.dart';
import '../action.dart';
import 'action.dart';
import 'state.dart';

Effect<ChannelState> buildEffect() {
  return combineEffects(<Object, Effect<ChannelState>>{
    // ChannelAction.onShow: _onShow,
    // Lifecycle.initState: _init
  });
}

// void _init(Action action,Context<ChannelState> ctx) {

//     _onShow(action, ctx);
// }
