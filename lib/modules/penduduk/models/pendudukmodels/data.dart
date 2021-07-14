import 'package:json_annotation/json_annotation.dart';

import 'data_keluarga.dart';

part 'data.g.dart';

@JsonSerializable()
class Data {
  @JsonKey(name: 'data_keluarga')
  List<DataKeluarga>? dataKeluarga;
  @JsonKey(name: 'total')
  int? total;

  Data({this.dataKeluarga, this.total});

  factory Data.fromJson(Map<String, dynamic> json) => _$DataFromJson(json);

  Map<String, dynamic> toJson() => _$DataToJson(this);
}
