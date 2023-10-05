import 'package:dio/dio.dart';

class DioHelper {
  static Dio dio = Dio();

  static init() {
    Dio dio = Dio(
      BaseOptions(
        baseUrl: "http://trustproducts.store/",
        receiveDataWhenStatusError: true,
      ),
    );
  }

  static Future<Response> getData({
    required String url,
    String? token,
    Map<String, dynamic>? query,
  }) async {
    dio.options.queryParameters = {};
    dio.options.headers = {
      'Accept': 'application/json',
      'ISHRAHLI-API-KEY': 'ishrahli_key_MVQOBEPdWDjRVCdo',
      'Authorization': 'Bearer $token',
      // 'token': token,
    };
    return await dio.get(
      url,
    );
  }

  static Future<Response> postData({
    required String url,
    Map<String, dynamic>? query,
    required Map<String, dynamic> data,
    String? token,
  }) async {
    dio.options.headers = {
      'Authorization': token,
      // 'token': token,
      'Accept': 'application/json',
      'ISHRAHLI-API-KEY': 'ishrahli_key_MVQOBEPdWDjRVCdo'
    };
    return dio.post(
      url,
      queryParameters: query,
      data: data,
    );
  }

//get the transations from api
  // Future<List<dynamic>> getAllTransactions() async {
  //   try {
  //     Response response = await dio.get('transactions');
  //     print(response.data.toString());
  //     return response.data;
  //   } catch (error) {
  //     print(error.toString());
  //     return [];
  //   }
  // }
}
