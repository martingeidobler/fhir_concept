// import 'package:json_annotation/json_annotation.dart';
//
// part 'relationship.g.dart';
//
// @JsonSerializable()
// class Relationship{
//   final String? relationship;
//
//   const Relationship({
//     required this.relationship,
//   });
//
//   factory Relationship.fromJson(Map<String, dynamic> json) => _$NameFromJson(json);
//   Map<String, dynamic> toJson() => _$NameToJson(this);
//
//
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