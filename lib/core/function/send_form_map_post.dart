import 'package:dio/dio.dart';

formDataPost(Map<String, dynamic> map) {
  dynamic dd = FormData.fromMap(map);
  return dd;
}


// Map<String, dynamic> map = {
//       "id": getIt<CacheHelper>().getData(key: 'id'),