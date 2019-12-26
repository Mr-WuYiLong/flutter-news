import 'package:fish_redux/fish_redux.dart';

import 'effect.dart';
import 'reducer.dart';
import 'state.dart';
import 'view.dart';

/// 常用功能组件
class AlwaysComponent extends Component<AlwaysState> {
  AlwaysComponent()
      : super(
            effect: buildEffect(),
            reducer: buildReducer(),
            view: buildView,
            dependencies: Dependencies<AlwaysState>(
                adapter: null,
                slots: <String, Dependent<AlwaysState>>{
                }),);

}
