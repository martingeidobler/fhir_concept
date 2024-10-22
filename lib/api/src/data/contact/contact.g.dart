// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'contact.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

Contact _$ContactFromJson(Map<String, dynamic> json) => Contact(
      name: json['name'] == null
          ? null
          : Name.fromJson(json['name'] as Map<String, dynamic>),
      address: json['address'] == null
          ? null
          : Address.fromJson(json['address'] as Map<String, dynamic>),
      telecom: json['telecom'] == null
          ? null
          : Telecom.fromJson(json['telecom'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$ContactToJson(Contact instance) => <String, dynamic>{
      'name': instance.name?.toJson(),
      'telecom': instance.telecom?.toJson(),
      'address': instance.address?.toJson(),
    };
