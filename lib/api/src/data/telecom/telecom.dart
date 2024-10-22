import 'package:json_annotation/json_annotation.dart';
part 'telecom.g.dart';

@JsonSerializable()
class Telecom{
  final String? system;
  final String? value;
  final String? use;
  final int? rank;

  const Telecom ({
    required this.system,
    required this.value,
    required this.use,
    required this.rank,
  });

  factory Telecom.fromJson(Map<String, dynamic> json) => _$TelecomFromJson(json);
  Map<String, dynamic> toJson() => _$TelecomToJson(this);

}