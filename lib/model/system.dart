
import 'package:date_format/date_format.dart';

/// 系统
class System {
  String _showapiAppid = '129045';
  String _showapiSign = 'c8a7efc9fea64ded9fda1b550ba269f8';
  String _showapiTimestamp = formatDate(DateTime.now(),[yyyy,mm,dd,hh,mm,ss]);

  Map<String,dynamic> toJson() {
    return {
      'showapi_appid': _showapiAppid,
      'showapi_sign' : _showapiSign,
      'showapi_timestamp': _showapiTimestamp
    };
  }
}
