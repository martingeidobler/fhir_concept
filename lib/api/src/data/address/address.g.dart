// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'address.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

Address _$AddressFromJson(Map<String, dynamic> json) => Address(
      city: json['city'] as String?,
      country: json['country'] as String?,
      line: (json['line'] as List<dynamic>?)?.map((e) => e as String).toList(),
      postalCode: json['postalCode'] as String?,
      use: json['use'] as String?,
      period: (json['period'] as Map<String, dynamic>?)?.map(
        (k, e) => MapEntry(k, e as String),
      ),
      state: json['state'] as String?,
      district: json['district'] as String?,
      text: json['text'] as String?,
      type: json['type'] as String?,
    );

Map<String, dynamic> _$AddressToJson(Address instance) => <String, dynamic>{
      'use': instance.use,
      'line': instance.line,
      'city': instance.city,
      'postalCode': instance.postalCode,
      'country': instance.country,
      'type': instance.type,
      'text': instance.text,
      'district': instance.district,
      'state': instance.state,
      'period': instance.period,
    };
