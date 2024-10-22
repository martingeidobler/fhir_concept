import 'package:fhir_concept/api/src/data/address/address.dart';
import 'package:fhir_concept/api/src/data/patient_name/name.dart';
import 'package:fhir_concept/api/src/data/telecom/telecom.dart';
import 'package:json_annotation/json_annotation.dart';
part 'contact.g.dart';

@JsonSerializable(explicitToJson: true)
class Contact{
  final Name? name;
  final Telecom? telecom;
  final Address? address;

  const Contact({
    required this.name,
    required this.address,
    required this.telecom,
});

  factory Contact.fromJson(Map<String, dynamic> json) => _$ContactFromJson(json);
  Map<String, dynamic> toJson() => _$ContactToJson(this);
}