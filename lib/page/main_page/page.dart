import 'package:fish_redux/fish_redux.dart';

import 'effect.dart';
import 'reducer.dart';
import 'state.dart';
import 'view.dart';

class MainPage extends Page<BottombarState, Map<String, dynamic>> {
  MainPage()
      : super(
            initState: initState,
            effect: buildEffect(),
            reducer: buildReducer(),
            view: buildView,
            dependencies: Dependencies<BottombarState>(
                adapter: null,
                slots: <String, Dependent<BottombarState>>{
                }),
            middleware: <Middleware<BottombarState>>[
            ],);

}
