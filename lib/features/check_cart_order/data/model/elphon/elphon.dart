import 'package:json_annotation/json_annotation.dart';

import 'associated_object.dart';

part 'elphon.g.dart';

@JsonSerializable()
class Elphon {
  String? id;
  String? object;
  @JsonKey(name: 'associated_objects')
  List<AssociatedObject>? associatedObjects;
  int? created;
  int? expires;
  bool? livemode;
  String? secret;

  Elphon({
    this.id,
    this.object,
    this.associatedObjects,
    this.created,
    this.expires,
    this.livemode,
    this.secret,
  });

  factory Elphon.fromJson(Map<String, dynamic> json) {
    return _$ElphonFromJson(json);
  }

  Map<String, dynamic> toJson() => _$ElphonToJson(this);
}
