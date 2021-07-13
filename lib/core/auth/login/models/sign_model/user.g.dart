// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'user.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

User _$UserFromJson(Map<String, dynamic> json) {
  return User(
    username: json['username'] as String?,
    email: json['email'] as String?,
    id: json['id'] as String?,
    password: json['password'] as String?,
    active: json['active'] as String?,
    lastLogin: json['last_login'] as String?,
  );
}

Map<String, dynamic> _$UserToJson(User instance) => <String, dynamic>{
      'username': instance.username,
      'email': instance.email,
      'id': instance.id,
      'password': instance.password,
      'active': instance.active,
      'last_login': instance.lastLogin,
    };
