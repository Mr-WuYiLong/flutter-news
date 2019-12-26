import 'package:fish_redux/fish_redux.dart';

import 'action.dart';
import 'state.dart';

Reducer<WeatherState> buildReducer() {
  return asReducer(
    <Object, Reducer<WeatherState>>{
      WeatherAction.channel: _channel,
      WeatherAction.show: _show
    },
  );
}

WeatherState _channel(WeatherState state, Action action) {
  // print('reducer');
  final WeatherState newState = state.clone();
  newState.channelList = action.payload['tabs'];
  return newState;
}

WeatherState _show(WeatherState state, Action action) {
  final WeatherState newState = state.clone();
  if (newState.channelIndex != action.payload['channelId']) {
    newState.newsList.clear();
    newState.channelIndex = action.payload['channelId'];
  }
  newState.newsList.insertAll(0, action.payload['contentList']);
  newState.currentPage = action.payload['page'];
  return newState;
}
