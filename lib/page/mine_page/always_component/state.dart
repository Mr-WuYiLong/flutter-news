import 'package:fish_redux/fish_redux.dart';

class AlwaysState implements Cloneable<AlwaysState> {

  @override
  AlwaysState clone() {
    return AlwaysState();
  }
}

// AlwaysState initState(Map<String, dynamic> args) {
//   return AlwaysState();
// }
