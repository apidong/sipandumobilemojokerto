// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'cek_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

CekModel _$CekModelFromJson(Map<String, dynamic> json) {
  return CekModel(
    status: json['status'] as bool?,
    message: json['message'] as String?,
  );
}

Map<String, dynamic> _$CekModelToJson(CekModel instance) => <String, dynamic>{
      'status': instance.status,
      'message': instance.message,
    };
