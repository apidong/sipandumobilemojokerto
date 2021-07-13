import 'package:equatable/equatable.dart';
import 'package:json_annotation/json_annotation.dart';

import 'data_keluarga.dart';

part 'data.g.dart';

@JsonSerializable()
class Data extends Equatable {
  @JsonKey(name: 'data_keluarga')
  final List<DataKeluarga>? dataKeluarga;
  @JsonKey(name: 'total')
  final int? total;

  const Data({this.dataKeluarga, this.total});

  factory Data.fromJson(Map<String, dynamic> json) => _$DataFromJson(json);

  Map<String, dynamic> toJson() => _$DataToJson(this);

  @override
  List<Object?> get props => [dataKeluarga, total];
}
