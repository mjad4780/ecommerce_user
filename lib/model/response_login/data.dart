import 'package:collection/collection.dart';
import 'package:json_annotation/json_annotation.dart';

part 'data.g.dart';

@JsonSerializable()
class Data {
  @JsonKey(name: 'user_id')
  final int? userId;
  @JsonKey(name: 'user_name')
  final String? userName;
  @JsonKey(name: 'user_email')
  final String? userEmail;
  @JsonKey(name: 'user_phone')
  final int? userPhone;
  @JsonKey(name: 'user_verymycode')
  final int? userVerymycode;
  @JsonKey(name: 'user_improve')
  final int? userImprove;
  @JsonKey(name: 'user_create')
  final String? userCreate;
  final String? password;

  const Data({
    this.userId,
    this.userName,
    this.userEmail,
    this.userPhone,
    this.userVerymycode,
    this.userImprove,
    this.userCreate,
    this.password,
  });

  factory Data.fromJson(Map<String, dynamic> json) => _$DataFromJson(json);

  Map<String, dynamic> toJson() => _$DataToJson(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    if (other is! Data) return false;
    final mapEquals = const DeepCollectionEquality().equals;
    return mapEquals(other.toJson(), toJson());
  }

  @override
  int get hashCode =>
      userId.hashCode ^
      userName.hashCode ^
      userEmail.hashCode ^
      userPhone.hashCode ^
      userVerymycode.hashCode ^
      userImprove.hashCode ^
      userCreate.hashCode ^
      password.hashCode;
}
