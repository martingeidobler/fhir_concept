import 'package:json_annotation/json_annotation.dart';
part 'name.g.dart';

@JsonSerializable()
class Name{
  final String? family;
  final String? use;
  final List<String>? given;
  final List<String>? prefix;
  final List<String>? suffix;
  final Map<String, String>? period;

  const Name({
    required this.family,
    required this.given,
    required this.prefix,
    required this.suffix,
    required this.use,
    required this.period,
  });

  factory Name.fromJson(Map<String, dynamic> json) => _$NameFromJson(json);
  Map<String, dynamic> toJson() => _$NameToJson(this);

}