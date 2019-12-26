import 'package:dio/dio.dart';


BaseOptions options = BaseOptions(
    baseUrl: "https://route.showapi.com",
    connectTimeout: 5000,
    receiveTimeout: 3000,
);

Dio dio = Dio(options);
