/// 新闻频道
class NewChannel {
  String channelId;
  String name;
  NewChannel({this.channelId,this.name});

  factory NewChannel.fromJson(Map<String, dynamic> json) {
    return NewChannel(
      channelId: json['channelId'],
      name: json['name']
    );
  }
}
