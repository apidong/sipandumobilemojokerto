import 'package:json_annotation/json_annotation.dart';

import 'data.dart';

part 'tagging.g.dart';

@JsonSerializable()
class Tagging {
  @JsonKey(name: 'status')
  bool? status;
  @JsonKey(name: 'data')
  Data? data;

  Tagging({this.status, this.data});

  factory Tagging.fromJson(Map<String, dynamic> json) {
    print(json);
    return _$TaggingFromJson(json);
  }

  Map<String, dynamic> toJson() => _$TaggingToJson(this);
}
