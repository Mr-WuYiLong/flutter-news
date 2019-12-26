import 'package:fish_redux/fish_redux.dart';
import 'package:flutter/material.dart';

import 'action.dart';
import 'state.dart';

Widget buildView(
    AlwaysState state, Dispatch dispatch, ViewService viewService) {
  return Column(
    
  
    children: <Widget>[
      Text('常用功能',style: TextStyle(
        fontWeight: FontWeight.w500,
        fontSize: 20,
        // color: Colors.red
      ),),
      
      GridView.count(
        mainAxisSpacing: 0,
        crossAxisCount: 4,
        padding: EdgeInsets.only(top: 20),
        // childAspectRatio: 1.0,
        // crossAxisSpacing: 50,
        shrinkWrap: true,
        children: <Widget>[
          IconText(icon: Icons.notifications_none,text: '消息通知',),
          IconText(icon: Icons.mail_outline,text: '私信',),
          IconText(icon: Icons.star_border,text: '收藏',),
          IconText(icon: Icons.schedule,text: '阅读历史',),
          IconText(icon: Icons.attach_money,text: '钱包',),
          IconText(icon: Icons.info_outline,text: '用户反馈',),
          IconText(icon: Icons.lock_outline,text: '免流量服务',),
          IconText(icon: Icons.settings_applications,text: '系统设置',),

        ],
      ),
    ],
  );
}

class IconText extends StatelessWidget {
  final IconData icon;
  final String text;
  const IconText({Key key,this.icon,this.text}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: <Widget>[
        Icon(icon),
        Text(text)
      ],
    );
  }
}
