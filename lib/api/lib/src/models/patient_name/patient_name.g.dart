// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'patient_name.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

PatientName _$PatientNameFromJson(Map<String, dynamic> json) => PatientName(
      family: json['family'] as String,
      given: (json['given'] as List<dynamic>).map((e) => e as String).toList(),
      prefix:
          (json['prefix'] as List<dynamic>?)?.map((e) => e as String).toList(),
      suffix:
          (json['suffix'] as List<dynamic>?)?.map((e) => e as String).toList(),
    );

Map<String, dynamic> _$PatientNameToJson(PatientName instance) =>
    <String, dynamic>{
      'family': instance.family,
      'given': instance.given,
      'prefix': instance.prefix,
      'suffix': instance.suffix,
    };
