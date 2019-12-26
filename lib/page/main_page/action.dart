import 'package:fish_redux/fish_redux.dart';

//TODO replace with your own action
enum BottombarAction { onSelectPage,selectPage}

class BottombarActionCreator {
  static Action onSelectPage(int index) {
    return Action(BottombarAction.onSelectPage,payload: index);
  }
  static Action selectPage(int index) {
    return Action(BottombarAction.selectPage,payload: index);
  }
}
