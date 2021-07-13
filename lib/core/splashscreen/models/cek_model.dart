import 'package:json_annotation/json_annotation.dart';

part 'cek_model.g.dart';

@JsonSerializable()
class CekModel {
  @JsonKey(name: 'status')
  bool? status;
  @JsonKey(name: 'message')
  String? message;

  CekModel({this.status, this.message});

  factory CekModel.fromJson(Map<String, dynamic> json) {
    return _$CekModelFromJson(json);
  }

  Map<String, dynamic> toJson() => _$CekModelToJson(this);
}
