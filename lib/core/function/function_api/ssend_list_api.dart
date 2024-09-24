import 'package:ecommerce_user/core/extensions/extention_navigator.dart';

import '../../../future/home/data/models/response_home/size.dart';

sendListApi(String input) {
  return input.replaceAll('[', '').replaceAll(']', '');
}

List<String> replacListIsEnpty(List<String> data) {
  List<String> datas = [];
  if (data.isNullOrEmpty()) {
    return datas;
  } else {
    datas.clear();
    return datas = data.where((image) => image.isNotEmpty).toList();
  }
}

replacMapsColorIsEnpty(List<Size> data) {
  List<String> datas = [];
  if (data.isNullOrEmpty()) {
    return datas;
  } else {
    for (var item in data) {
      datas.add(item.color!);
      datas.removeWhere((item) => item == '');
    }
    return datas;
  }
}

replacMapsSizeIsEnpty(List<Size> data) {
  List<String> datas = [];

  if (data.isNullOrEmpty()) {
    return datas;
  } else {
    for (var item in data) {
      datas.add(item.size!);
      datas.removeWhere((item) => item == '');
    }
    return datas;
  }
}
