import 'package:benjamin_portfolio/core/network/url_config.dart';
import 'package:dio/dio.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

import '../../shared/utils/logger.dart';
import 'api_error.dart';
import 'app_interceptor.dart';

final networkProvider = Provider<Network>((ref) => Network());

class Network {
  static const connectTimeOut = Duration(seconds: 120);
  static const receiverTimeOut = Duration(seconds: 120);
  late Dio dio;
  late bool showLog;

  final _dioBaseOptions = BaseOptions(
    connectTimeout: connectTimeOut,
    receiveTimeout: receiverTimeOut,
    baseUrl: UrlConfig.baseUrl,
    headers: {'Accept': 'application/json', 'Content-Type': 'application/json'},
  );

  Network({String? baseUrl, this.showLog = false}) {
    dio = Dio();
    dio.interceptors.add(ApiInterceptor());
    dio.options = _dioBaseOptions;
    if (baseUrl != null) dio.options.baseUrl = baseUrl;
    if (showLog) {
      dio.interceptors.add(
        LogInterceptor(requestBody: true, logPrint: printDioLogs),
      );
    }
  }

  Network.noInterceptor([String? baseUrl]) {
    dio = Dio();
    if (baseUrl != null) dio.options.baseUrl = baseUrl;
    dio.options = _dioBaseOptions;
  }

  /// Factory constructor used mainly for injecting an instance of [Dio] mock
  Network.test(this.dio);

  Future<Response> call(
    String path,
    RequestMethod method, {
    Map<String, dynamic>? queryParams,
    data,
    ResponseType responseType = ResponseType.json,
    bool showLog = true,
    bool useUrlEncoded = false,
  }) async {
    Response? response;
    var params = queryParams ?? {};
    final headerOverride = useUrlEncoded
        ? {
            'Accept': 'application/json',
            'Content-Type': 'application/x-www-form-urlencoded',
          }
        : null;

    try {
      switch (method) {
        case RequestMethod.post:
          response = await dio.post(
            path,
            queryParameters: params,
            data: data,
            options: Options(
              responseType: responseType,
              headers: headerOverride,
            ),
          );
          break;
        case RequestMethod.get:
          response = await dio.get(path, queryParameters: params);
          break;

        ///other request methode to be added here when needed
      }
      if (showLog) debugPrint("$path API response: $response");
      return response;
    } on DioException catch (error, stackTrace) {
      final apiError = ApiError.fromDioError(error);
      if (showLog) {
        debugPrint("$path: ${error.response?.statusCode} code");
        debugPrint("API response: ${error.response}");
      }
      return Future.error(apiError, stackTrace);
    } catch (_) {
      rethrow;
    }
  }

  Future<String?> getResponseType(String url) async {
    try {
      final res = await Dio().get(url);
      return res.headers.value("Content-Type");
    } catch (_) {}
    return null;
  }
}

enum RequestMethod {
  post,
  get,
}
