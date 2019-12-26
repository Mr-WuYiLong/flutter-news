import 'package:fish_redux/fish_redux.dart';
import 'package:flutter/material.dart';

import 'action.dart';
import 'state.dart';

Widget buildView(
    WeatherState state, Dispatch dispatch, ViewService viewService) {
  ListAdapter listAdapter = viewService.buildAdapter();
 
  return 
    Scaffold(
      appBar: AppBar(
        title: Text('今日大事件'),
        centerTitle: true,
        actions: <Widget>[
          IconButton(
            icon: Icon(Icons.search),
            onPressed: () {},
          ),
        ],
      ),
      body: Column(
        
        children: <Widget>[
          
          viewService.buildComponent('channel'),  
          Expanded(
            child: RefreshIndicator(
              onRefresh: () async {
                
               dispatch(WeatherActionCreator.onShow(state.channelIndex,currentPage:state.currentPage));
              },
              child: Scrollbar(
                child: ListView.separated(
                // 分割线
            separatorBuilder: (BuildContext context, int index) {
              return Divider(height: 2,);
            },
            itemCount: listAdapter.itemCount,
            itemBuilder: listAdapter.itemBuilder,
            // controller: state.scrollController,
          ),
              )
            )
          )
        ],
      ),
      // bottomNavigationBar: ,
      
      );

}
