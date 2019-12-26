import 'package:fish_redux/fish_redux.dart';
import 'package:futter_demo1/page/home_page/detail_page/page.dart';
import 'package:futter_demo1/page/home_page/page.dart';

import 'package:futter_demo1/page/main_page/page.dart';
import '../page/mine_page/page.dart';

class Routes {
  /// 定义路由界面
  static AbstractRoutes getRoutes() {
    AbstractRoutes routes = PageRoutes(pages: {
      'home': WeatherPage(),
      'detail': DetailPage(),
      'main': MainPage(),
      'mine': MinePage()
    });
    return routes;
  }
}
