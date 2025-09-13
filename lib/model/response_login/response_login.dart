import 'package:json_annotation/json_annotation.dart';

import 'data.dart';

part 'response_login.g.dart';

@JsonSerializable()
class ResponseLogin {
  final String? status;
  final String? messege;

  final Data? data;

  const ResponseLogin({this.status, this.messege, this.data});

  factory ResponseLogin.fromJson(Map<String, dynamic> json) {
    return _$ResponseLoginFromJson(json);
  }

  Map<String, dynamic> toJson() => _$ResponseLoginToJson(this);

  // @override
  // bool operator ==(Object other) {
  //   if (identical(other, this)) return true;
  //   if (other is! ResponseLogin) return false;
  //   final mapEquals = const DeepCollectionEquality().equals;
  //   return mapEquals(other.toJson(), toJson());
  // }

  // @override
  // int get hashCode => status.hashCode ^ data.hashCode;
}
