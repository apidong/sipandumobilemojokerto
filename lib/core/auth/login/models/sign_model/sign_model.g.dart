// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'sign_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

SignModel _$SignModelFromJson(Map<String, dynamic> json) {
  print(json['status']);
  return SignModel(
    status: json['status'] as bool?,
    data: json['data'] == null
        ? null
        : Data.fromJson(json['data'] as Map<String, dynamic>),
    message: json['message'] as String?,
  );
}

Map<String, dynamic> _$SignModelToJson(SignModel instance) => <String, dynamic>{
      'status': instance.status,
      'data': instance.data,
      'message': instance.message,
    };
