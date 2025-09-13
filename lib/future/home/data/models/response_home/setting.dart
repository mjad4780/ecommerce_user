import 'package:collection/collection.dart';
import 'package:json_annotation/json_annotation.dart';

part 'setting.g.dart';

@JsonSerializable()
class Setting {
  @JsonKey(name: 'setting_id')
  String? settingId;
  @JsonKey(name: 'setting_title')
  String? settingTitle;
  @JsonKey(name: 'setting_body')
  String? settingBody;
  @JsonKey(name: 'setting_datedelvery')
  String? settingDatedelvery;
  @JsonKey(name: 'setting_image')
  String? settingImage;

  Setting({
    this.settingId,
    this.settingTitle,
    this.settingBody,
    this.settingDatedelvery,
    this.settingImage,
  });

  factory Setting.fromJson(Map<String, dynamic> json) {
    return _$SettingFromJson(json);
  }

  Map<String, dynamic> toJson() => _$SettingToJson(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    if (other is! Setting) return false;
    final mapEquals = const DeepCollectionEquality().equals;
    return mapEquals(other.toJson(), toJson());
  }

  @override
  int get hashCode =>
      settingId.hashCode ^
      settingTitle.hashCode ^
      settingBody.hashCode ^
      settingDatedelvery.hashCode ^
      settingImage.hashCode;
}
