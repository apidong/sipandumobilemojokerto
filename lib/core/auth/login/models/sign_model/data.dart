import 'package:json_annotation/json_annotation.dart';

import 'user.dart';

part 'data.g.dart';

@JsonSerializable()
class Data {
  @JsonKey(name: 'login')
  bool? login;
  @JsonKey(name: 'token')
  String? token;
  @JsonKey(name: 'user')
  User? user;

  Data({this.login, this.token, this.user});

  factory Data.fromJson(Map<String, dynamic> json) => _$DataFromJson(json);

  Map<String, dynamic> toJson() => _$DataToJson(this);
}
