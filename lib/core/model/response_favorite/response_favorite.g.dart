// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'response_favorite.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

ResponseFavorite _$ResponseFavoriteFromJson(Map<String, dynamic> json) =>
    ResponseFavorite(
      item1view: json['item1view'] == null
          ? null
          : Item1view.fromJson(json['item1view'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$ResponseFavoriteToJson(ResponseFavorite instance) =>
    <String, dynamic>{
      'item1view': instance.item1view,
    };
