import 'package:json_annotation/json_annotation.dart';

import 'data.dart';

part 'sign_model.g.dart';

@JsonSerializable()
class SignModel {
  @JsonKey(name: 'status')
  bool? status;
  @JsonKey(name: 'data')
  Data? data;
  @JsonKey(name: 'message')
  String? message;

  SignModel({this.status, this.data, this.message});

  factory SignModel.fromJson(Map<String, dynamic> json) {
    print(json);
    return _$SignModelFromJson(json);
  }

  Map<String, dynamic> toJson() => _$SignModelToJson(this);
}
