// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'telecom.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

Telecom _$TelecomFromJson(Map<String, dynamic> json) => Telecom(
      system: json['system'] as String?,
      value: json['value'] as String?,
      use: json['use'] as String?,
      rank: (json['rank'] as num?)?.toInt(),
    );

Map<String, dynamic> _$TelecomToJson(Telecom instance) => <String, dynamic>{
      'system': instance.system,
      'value': instance.value,
      'use': instance.use,
      'rank': instance.rank,
    };
