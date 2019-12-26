import 'package:fish_redux/fish_redux.dart';

//TODO replace with your own action
enum AlwaysAction { action }

class AlwaysActionCreator {
  static Action onAction() {
    return const Action(AlwaysAction.action);
  }
}
