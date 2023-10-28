import 'package:dio/dio.dart';

class ApiInterceptor extends Interceptor {
  factory ApiInterceptor() => _instance;
  static final ApiInterceptor _instance = ApiInterceptor._internal();

  ApiInterceptor._internal();

  @override
  Future onRequest(
    RequestOptions options,
    RequestInterceptorHandler handler,
  ) async {
    String? accessToken;
    if (accessToken != null) {
      options.headers.addAll({"AuthToken": accessToken});
    }
    return super.onRequest(options, handler);
  }

  @override
  Future<void> onResponse(
    Response response,
    ResponseInterceptorHandler handler,
  ) async {
    return super.onResponse(response, handler);
  }

  @override
  void onError(DioException err, ErrorInterceptorHandler handler) {
    if (err.response?.statusCode == 403) {
      ///session expired
      throw "session has expired, Login to continue";
    }
    handler.next(err);
  }
}
