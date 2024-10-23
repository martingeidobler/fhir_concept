// import 'package:fhir_concept/api/src/data/address/address.dart';
// import 'package:fhir_concept/api/src/data/contact/contact.dart';
// import 'package:fhir_concept/api/src/data/patient_name/name.dart';
// import 'package:fhir_concept/api/src/data/telecom/telecom.dart';
// import 'package:fhir_concept/api/src/data/ressources.dart';
// import 'package:json_annotation/json_annotation.dart';
//
// @JsonSerializable(explicitToJson: true)
// class PatientContactData {
//   final List<Relationship>? relationship;
//   final String? id;
//   final List<Name>? name;
//   final Gender? gender;
//   final DateTime? birthDate;
//   final List<Telecom>? telecom;
//   final List<Address>? address;
//   final bool? active;
//   final bool? deceased;
//   final DateTime? deceasedDateTime;
//   final List<Contact>? contact;
//
//   const PatientData ({
//     required this.resourceType,
//     required this.id,
//     required this.name,
//     required this.gender,
//     required this.birthDate,
//     required this.telecom,
//     required this.address,
//     required this.active,
//     required this.deceased,
//     required this.deceasedDateTime,
//     required this.contact,
//   });
//
//   factory PatientData.fromJson(Map<String, dynamic> json) => _$PatientDataFromJson(json);
//   Map<String, dynamic> toJson() => _$PatientDataToJson(this);
// }
//
// // to-do replace english values with localization keys
// abstract class Relation {
//   static Map<String, String> relationMap = {
//     'BP':'Billing contact person',
//     'CP':'Contact person',
//     'EP':'Emergency contact person',
//     'PR':'Person preparing referral',
//     'E':'Employer',
//     'C':'Emergency Contact',
//     'F':'Federal Agency',
//     'I':'Insurance Company',
//     'N':'Next of Kin',
//     'S':'State Agency',
//     'O':'Other',
//     'U':'Unknown',
//   };
// }
