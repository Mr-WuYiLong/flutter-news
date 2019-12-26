import 'package:fish_redux/fish_redux.dart';

import 'action.dart';
import 'state.dart';

Reducer<BottombarState> buildReducer() {
  return asReducer(
    <Object, Reducer<BottombarState>>{
       BottombarAction.selectPage: _selectPage,
    },
  );
}

BottombarState _selectPage(BottombarState state, Action action) {
  final BottombarState newState = state.clone();
  newState.index=action.payload;
  return newState;
}
