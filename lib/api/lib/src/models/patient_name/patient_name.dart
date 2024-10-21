import 'package:json_annotation/json_annotation.dart';
part 'patient_name.g.dart';

@JsonSerializable()
class PatientName{
  final String family;
  final List<String> given;
  final List<String>? prefix;
  final List<String>? suffix;

  const PatientName({
    required this.family,
    required this.given,
    required this.prefix,
    required this.suffix
  });

  factory PatientName.fromJson(Map<String, dynamic> json) => _$PatientNameFromJson(json);
  Map<String, dynamic> toJson() => _$PatientNameToJson(this);

}