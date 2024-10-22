import 'package:fhir_concept/api/src/data/address/address.dart';
import 'package:fhir_concept/api/src/data/patient_name/name.dart';
import 'package:fhir_concept/api/src/data/telecom/telecom.dart';
import 'package:fhir_concept/api/src/data/enums.dart';
import 'package:json_annotation/json_annotation.dart';
part 'patient_data.g.dart';

@JsonSerializable(explicitToJson: true)
class PatientData {
  final String? resourceType;
  final String? id;
  final List<Name>? name;
  final Gender? gender;
  final DateTime? birthDate;
  final List<Telecom>? telecom;
  final List<Address>? address;
  final bool? active;
  final bool? deceased;
  final DateTime? deceasedDateTime;

  const PatientData ({
    required this.resourceType,
    required this.id,
    required this.name,
    required this.gender,
    required this.birthDate,
    required this.telecom,
    required this.address,
    required this.active,
    required this.deceased,
    required this.deceasedDateTime,
  });

  factory PatientData.fromJson(Map<String, dynamic> json) => _$PatientDataFromJson(json);
  Map<String, dynamic> toJson() => _$PatientDataToJson(this);
}