// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'patient_data.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

PatientData _$PatientDataFromJson(Map<String, dynamic> json) => PatientData(
      resourceType: json['resourceType'] as String?,
      id: json['id'] as String?,
      name: (json['name'] as List<dynamic>?)
          ?.map((e) => Name.fromJson(e as Map<String, dynamic>))
          .toList(),
      gender: $enumDecodeNullable(_$GenderEnumMap, json['gender']),
      birthDate: json['birthDate'] == null
          ? null
          : DateTime.parse(json['birthDate'] as String),
      telecom: (json['telecom'] as List<dynamic>?)
          ?.map((e) => Telecom.fromJson(e as Map<String, dynamic>))
          .toList(),
      address: (json['address'] as List<dynamic>?)
          ?.map((e) => Address.fromJson(e as Map<String, dynamic>))
          .toList(),
      active: json['active'] as bool?,
      deceased: json['deceased'] as bool?,
      deceasedDateTime: json['deceasedDateTime'] == null
          ? null
          : DateTime.parse(json['deceasedDateTime'] as String),
    );

Map<String, dynamic> _$PatientDataToJson(PatientData instance) =>
    <String, dynamic>{
      'resourceType': instance.resourceType,
      'id': instance.id,
      'name': instance.name?.map((e) => e.toJson()).toList(),
      'gender': _$GenderEnumMap[instance.gender],
      'birthDate': instance.birthDate?.toIso8601String(),
      'telecom': instance.telecom?.map((e) => e.toJson()).toList(),
      'address': instance.address?.map((e) => e.toJson()).toList(),
      'active': instance.active,
      'deceased': instance.deceased,
      'deceasedDateTime': instance.deceasedDateTime?.toIso8601String(),
    };

const _$GenderEnumMap = {
  Gender.male: 'male',
  Gender.female: 'female',
};
