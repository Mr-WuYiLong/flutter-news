import 'package:fish_redux/fish_redux.dart';

import 'always_component/component.dart';
import 'effect.dart';
import 'reducer.dart';
import 'state.dart';
import 'user_component/component.dart';
import 'view.dart';

class MinePage extends Page<MineState, Map<String, dynamic>> {
  MinePage()
      : super(
            initState: initState,
            effect: buildEffect(),
            reducer: buildReducer(),
            view: buildView,
            dependencies: Dependencies<MineState>(
                adapter: null,
                slots: <String, Dependent<MineState>>{
                  'user': UserConnector()+UserComponent(),
                  'always': AlwaysConnector()+AlwaysComponent()
                }),
            middleware: <Middleware<MineState>>[
            ],);

}
