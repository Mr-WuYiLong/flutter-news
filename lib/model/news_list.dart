class NewsList {
  String title;
  String desc;
  String source;
  String pubDate;
  List<dynamic> imageurls = List<dynamic>();
  NewsList({this.title, this.desc, this.source, this.pubDate, this.imageurls});
  factory NewsList.fromJson(Map<String, dynamic> json) {
    return NewsList(
        title: json['title'],
        desc: json['desc'],
        source: json['source'],
        pubDate: json['pubDate'],
        imageurls: json['imageurls']);
  }
}
