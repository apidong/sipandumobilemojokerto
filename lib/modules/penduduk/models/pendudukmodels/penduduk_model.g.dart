// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'penduduk_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

PendudukModel _$PendudukModelFromJson(Map<String, dynamic> json) {
  return PendudukModel(
    status: json['status'] as bool?,
    data: json['data'] == null
        ? null
        : Data.fromJson(json['data'] as Map<String, dynamic>),
  );
}

Map<String, dynamic> _$PendudukModelToJson(PendudukModel instance) =>
    <String, dynamic>{
      'status': instance.status,
      'data': instance.data,
    };
