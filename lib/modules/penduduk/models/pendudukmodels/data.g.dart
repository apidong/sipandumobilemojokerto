// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'data.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

Data _$DataFromJson(Map<String, dynamic> json) {
  return Data(
    dataKeluarga: (json['data_keluarga'] as List<dynamic>?)
        ?.map((e) => DataKeluarga.fromJson(e as Map<String, dynamic>))
        .toList(),
    total: json['total'] as int?,
  );
}

Map<String, dynamic> _$DataToJson(Data instance) => <String, dynamic>{
      'data_keluarga': instance.dataKeluarga,
      'total': instance.total,
    };
