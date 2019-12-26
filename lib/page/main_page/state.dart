import 'package:fish_redux/fish_redux.dart';

class BottombarState implements Cloneable<BottombarState> {
  /// 选取导航标识
  int index;
  /// 导航列表
  List<String> list;
  @override
  BottombarState clone() {
    return BottombarState()
    ..index=index
    ..list=list;
  }
}

BottombarState initState(Map<String, dynamic> args) {
  BottombarState bottombarState = BottombarState();
  bottombarState.index = 0;
  bottombarState.list = ['home','mine'];
  return bottombarState;
}
