import 'package:fish_redux/fish_redux.dart';
import 'effect.dart';
import 'news_adapter/adapter.dart';
import 'reducer.dart';
import 'state.dart';
import 'view.dart';
import 'channel_component/component.dart';

class WeatherPage extends Page<WeatherState, String> {
  WeatherPage()
      : super(
            initState: initState,
            effect: buildEffect(),
            reducer: buildReducer(),
            view: buildView,
            dependencies: Dependencies<WeatherState>(
                adapter: NoneConn<WeatherState>()+NewsAdapter(),
                slots: <String, Dependent<WeatherState>>{
                  'channel': channelConnector()+ChannelComponent()
                }),
            middleware: <Middleware<WeatherState>>[
            ],);

}
