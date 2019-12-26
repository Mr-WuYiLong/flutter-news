import 'package:fish_redux/fish_redux.dart';

class NewsState implements Cloneable<NewsState> {
  /// 新闻标题
  String title;
  /// 新闻描述
  String desc;
  /// 新闻来源
  String source;
  /// 发布时间
  String pubDate;
  /// 新闻内容
  List<dynamic> allList;
  /// 新闻详情连接
  String link;
  List<dynamic> imageurls = List<dynamic>();
  NewsState({
    this.title,
    this.desc,
    this.source,
    this.pubDate,
    this.imageurls,
    this.allList,
    this.link
    });
  @override
  NewsState clone() {
    return NewsState()
    ..title=title
    ..desc=desc
    ..source=source
    ..pubDate=pubDate
    ..allList=allList
    ..link;
  }

  factory NewsState.fromJson(Map<String,dynamic> json) {
    return NewsState(
      title: json['title'],
      desc: json['desc'],
      source: json['source'],
      pubDate: json['pubDate'],
      imageurls: json['imageurls'],
      allList: json['allList'],
      link: json['link']
    );
  }
}
