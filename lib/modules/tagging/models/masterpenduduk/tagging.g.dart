// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'tagging.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

Tagging _$TaggingFromJson(Map<String, dynamic> json) {
  return Tagging(
    status: json['status'] as bool?,
    data: json['data'] == null
        ? null
        : Data.fromJson(json['data'] as Map<String, dynamic>),
  );
}

Map<String, dynamic> _$TaggingToJson(Tagging instance) => <String, dynamic>{
      'status': instance.status,
      'data': instance.data,
    };
