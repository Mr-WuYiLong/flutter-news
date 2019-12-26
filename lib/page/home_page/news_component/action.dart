import 'package:fish_redux/fish_redux.dart';

//TODO replace with your own action
enum NewsAction {onDetail}

class NewsActionCreator {
   static Action onDetail(List<dynamic> content,String title) {
    return Action(NewsAction.onDetail,payload: {'content':content,'title':title});
  }
}
