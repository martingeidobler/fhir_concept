// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'managing_organization.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

ManagingOrganization _$ManagingOrganizationFromJson(
        Map<String, dynamic> json) =>
    ManagingOrganization(
      reference: (json['reference'] as Map<String, dynamic>?)?.map(
        (k, e) => MapEntry(k, e as String),
      ),
    );

Map<String, dynamic> _$ManagingOrganizationToJson(
        ManagingOrganization instance) =>
    <String, dynamic>{
      'reference': instance.reference,
    };
