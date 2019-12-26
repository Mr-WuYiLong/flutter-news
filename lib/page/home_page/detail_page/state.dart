import 'package:fish_redux/fish_redux.dart';

class DetailState implements Cloneable<DetailState> {

  List<dynamic> content;
  
  @override
  DetailState clone() {
    return DetailState()
    ..content=content;
   
  }
}

DetailState initState(Map<String, dynamic> args) {
  DetailState detailState = DetailState();
  detailState.content=args['content'];
  detailState.content.insert(0, args['title']);
  return detailState;
}
