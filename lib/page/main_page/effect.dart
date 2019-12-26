import 'package:fish_redux/fish_redux.dart';
import 'action.dart';
import 'state.dart';

Effect<BottombarState> buildEffect() {
  return combineEffects(<Object, Effect<BottombarState>>{
    BottombarAction.onSelectPage: _onSelectPage,
  });
}

void _onSelectPage(Action action, Context<BottombarState> ctx) {
  
  ctx.dispatch(BottombarActionCreator.selectPage(action.payload));
}
