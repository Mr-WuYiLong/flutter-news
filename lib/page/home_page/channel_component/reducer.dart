import 'package:fish_redux/fish_redux.dart';

import 'action.dart';
import 'state.dart';

Reducer<ChannelState> buildReducer() {
  return asReducer(
    <Object, Reducer<ChannelState>>{
      // ChannelAction.channel: _channel,
    },
  );
}

// ChannelState _channel(ChannelState state, Action action) {
//   print('ppppp${action.payload.length}');
//   final ChannelState newState = state.clone();
//   newState.channelList = action.payload;
//   return newState;
// }
