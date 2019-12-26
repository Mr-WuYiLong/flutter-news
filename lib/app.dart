import 'package:fish_redux/fish_redux.dart';
import 'package:flutter/material.dart';

import 'router/routes.dart';


Widget createApp() {
  AbstractRoutes routes = Routes.getRoutes();
  return MaterialApp(
    title: '内容app',
    theme: ThemeData(
      primarySwatch: Colors.red
    ),
    home: routes.buildPage('main', null),
    onGenerateRoute: (RouteSettings setting) {
      
      return MaterialPageRoute(builder: (BuildContext context) {
          return routes.buildPage(setting.name, setting.arguments);
      });
    },
    
  );
}
