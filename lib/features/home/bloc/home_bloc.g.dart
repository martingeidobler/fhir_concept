// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'home_bloc.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

HomePageState _$HomePageStateFromJson(Map<String, dynamic> json) =>
    HomePageState(
      status: $enumDecode(_$HomePageStatusEnumMap, json['status']),
      data: json['data'] == null
          ? null
          : PatientData.fromJson(json['data'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$HomePageStateToJson(HomePageState instance) =>
    <String, dynamic>{
      'status': _$HomePageStatusEnumMap[instance.status]!,
      'data': instance.data,
    };

const _$HomePageStatusEnumMap = {
  HomePageStatus.initial: 'initial',
  HomePageStatus.loading: 'loading',
  HomePageStatus.loaded: 'loaded',
  HomePageStatus.failed: 'failed',
};
