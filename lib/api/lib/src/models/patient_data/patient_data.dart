import 'package:fhir_concept/api/lib/src/models/address/address.dart';
import 'package:fhir_concept/api/lib/src/models/enums.dart';
import 'package:fhir_concept/api/lib/src/models/patient_name/patient_name.dart';
import 'package:fhir_concept/api/lib/src/models/telecom/telecom.dart';
import 'package:json_annotation/json_annotation.dart';
part 'patient_data.g.dart';

@JsonSerializable(explicitToJson: true)
class PatientData {
  final String resourceType;
  final String id;
  final List<PatientName> name;
  final Gender gender;
  final DateTime birthDate;
  final List<Telecom> telecom;
  final List<Address> address;

  const PatientData ({
    required this.resourceType,
    required this.id,
    required this.name,
    required this.gender,
    required this.birthDate,
    required this.telecom,
    required this.address,
  });

  factory PatientData.fromJson(Map<String, dynamic> json) => _$PatientDataFromJson(json);
  Map<String, dynamic> toJson() => _$PatientDataToJson(this);
}