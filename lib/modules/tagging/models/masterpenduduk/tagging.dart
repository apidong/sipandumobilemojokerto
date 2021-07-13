import 'package:equatable/equatable.dart';
import 'package:json_annotation/json_annotation.dart';

import 'data.dart';

part 'tagging.g.dart';

@JsonSerializable()
class Tagging extends Equatable {
  @JsonKey(name: 'status')
  final bool? status;
  @JsonKey(name: 'data')
  final Data? data;

  const Tagging({this.status, this.data});

  factory Tagging.fromJson(Map<String, dynamic> json) {
    return _$TaggingFromJson(json);
  }

  Map<String, dynamic> toJson() => _$TaggingToJson(this);

  @override
  List<Object?> get props => [status, data];
}
