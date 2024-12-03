import 'package:flutter_rest_api/model/model.dart';
import 'package:dio/dio.dart';

import '../shared/constant.dart';

Dio dio() {
  Dio dio = Dio();
  return dio;
}

class ApiService {
  Future<ApiModel> callOffsetApi(int offset) async {
    String url = Constant.dataEndpoint +
        Constant.dataOffsetParameter +
        offset.toString() +
        Constant.fixedDataLimitParameter;
    var response = await dio().get(url);
    return ApiModel.fromJson(response.data);
  }

  Future<OneDataModel> callOneDataApi(int itemIndex) async {
    String url = Constant.oneDataEndpoint + itemIndex.toString();
    var response = await dio().get(url);
    return OneDataModel.fromJson(response.data);
  }
}
