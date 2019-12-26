import 'package:fish_redux/fish_redux.dart';
import 'package:futter_demo1/page/home_page/news_component/component.dart';


import '../state.dart';

class NewsAdapter extends SourceFlowAdapter<WeatherState> {
  NewsAdapter()
      : super(
          pool: <String, Component<Object>>{
            'news': NewsComponent()
          },
  
        );
}
