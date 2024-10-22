// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'name.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

Name _$NameFromJson(Map<String, dynamic> json) => Name(
      family: json['family'] as String?,
      given:
          (json['given'] as List<dynamic>?)?.map((e) => e as String).toList(),
      prefix:
          (json['prefix'] as List<dynamic>?)?.map((e) => e as String).toList(),
      suffix:
          (json['suffix'] as List<dynamic>?)?.map((e) => e as String).toList(),
      use: json['use'] as String?,
      period: (json['period'] as Map<String, dynamic>?)?.map(
        (k, e) => MapEntry(k, e as String),
      ),
    );

Map<String, dynamic> _$NameToJson(Name instance) => <String, dynamic>{
      'family': instance.family,
      'use': instance.use,
      'given': instance.given,
      'prefix': instance.prefix,
      'suffix': instance.suffix,
      'period': instance.period,
    };
