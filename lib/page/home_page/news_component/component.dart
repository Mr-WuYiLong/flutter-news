import 'package:fish_redux/fish_redux.dart';

import 'effect.dart';
import 'reducer.dart';
import 'state.dart';
import 'view.dart';

class NewsComponent extends Component<NewsState> {
  NewsComponent()
      : super(
            effect: buildEffect(),
            reducer: buildReducer(),
            view: buildView,
            dependencies: Dependencies<NewsState>(
                adapter: null,
                slots: <String, Dependent<NewsState>>{
                }),);

}
