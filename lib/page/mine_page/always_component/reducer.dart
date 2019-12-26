import 'package:fish_redux/fish_redux.dart';

import 'action.dart';
import 'state.dart';

Reducer<AlwaysState> buildReducer() {
  return asReducer(
    <Object, Reducer<AlwaysState>>{
      AlwaysAction.action: _onAction,
    },
  );
}

AlwaysState _onAction(AlwaysState state, Action action) {
  final AlwaysState newState = state.clone();
  return newState;
}
