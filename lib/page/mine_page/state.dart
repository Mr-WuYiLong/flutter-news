import 'package:fish_redux/fish_redux.dart';

import 'always_component/state.dart';
import 'user_component/state.dart';

class MineState implements Cloneable<MineState> {

  @override
  MineState clone() {
    return MineState();
  }
}

MineState initState(Map<String, dynamic> args) {
  return MineState();
}


// 用户信息组件
class UserConnector extends ConnOp<MineState,UserState> {
 @override
  UserState get(MineState state) => UserState();

  @override
  void set(MineState state, UserState subState) =>null;
}

// 常用功能组件
class AlwaysConnector extends ConnOp<MineState,AlwaysState> {
 @override
  AlwaysState get(MineState state) => AlwaysState();

  @override
  void set(MineState state, AlwaysState subState) =>null;
}
