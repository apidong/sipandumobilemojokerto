import 'package:json_annotation/json_annotation.dart';

part 'user.g.dart';

@JsonSerializable()
class User {
  @JsonKey(name: 'username')
  String? username;
  @JsonKey(name: 'email')
  String? email;
  @JsonKey(name: 'id')
  String? id;
  @JsonKey(name: 'password')
  String? password;
  @JsonKey(name: 'active')
  String? active;
  @JsonKey(name: 'last_login')
  String? lastLogin;

  User({
    this.username,
    this.email,
    this.id,
    this.password,
    this.active,
    this.lastLogin,
  });

  factory User.fromJson(Map<String, dynamic> json) => _$UserFromJson(json);

  Map<String, dynamic> toJson() => _$UserToJson(this);
}
