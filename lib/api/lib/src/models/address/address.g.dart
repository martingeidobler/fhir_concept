// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'address.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

Address _$AddressFromJson(Map<String, dynamic> json) => Address(
      city: json['city'] as String,
      country: json['country'] as String,
      line: (json['line'] as List<dynamic>).map((e) => e as String).toList(),
      postalCode: json['postalCode'] as String,
      use: json['use'] as String,
    );

Map<String, dynamic> _$AddressToJson(Address instance) => <String, dynamic>{
      'use': instance.use,
      'line': instance.line,
      'city': instance.city,
      'postalCode': instance.postalCode,
      'country': instance.country,
    };
