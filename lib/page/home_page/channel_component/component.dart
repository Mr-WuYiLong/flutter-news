import 'package:fish_redux/fish_redux.dart';

import 'effect.dart';
import 'reducer.dart';
import 'state.dart';
import 'view.dart';
export 'state.dart';

class ChannelComponent extends Component<ChannelState> {
  ChannelComponent()
      : super(
            effect: buildEffect(),
            reducer: buildReducer(),
            view: buildView,
            dependencies: Dependencies<ChannelState>(
                adapter: null,
                slots: <String, Dependent<ChannelState>>{
                }),);

}
