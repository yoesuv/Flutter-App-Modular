import 'package:dio/dio.dart';
import 'package:flutter/material.dart';

class LoggingInterceptor extends Interceptor{

  @override
  void onResponse(Response response, ResponseInterceptorHandler handler) {
    super.onResponse(response, handler);
    debugPrint('\n\n');
    debugPrint('<--- HTTP CODE : ${response.statusCode} URL : ${response.realUri.toString()}');
    debugPrint('Headers: ');
    debugPrint('Response : ${response.data}', wrapWidth: 1024);
    debugPrint('<--- END HTTP');
  }

}