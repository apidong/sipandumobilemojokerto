import 'package:json_annotation/json_annotation.dart';

import 'data.dart';

part 'penduduk_model.g.dart';

@JsonSerializable()
class PendudukModel {
  @JsonKey(name: 'status')
  bool? status;
  @JsonKey(name: 'data')
  Data? data;

  PendudukModel({this.status, this.data});

  factory PendudukModel.fromJson(Map<String, dynamic> json) {
    return _$PendudukModelFromJson(json);
  }

  Map<String, dynamic> toJson() => _$PendudukModelToJson(this);
}
