import 'dart:async';

import 'package:fhir_concept/repositories/patient_repositoy/patient_repository.dart';
import 'package:equatable/equatable.dart';
import 'package:fhir_concept/api/src/data/patient_data/patient_data.dart';
import 'package:flutter/material.dart';
import 'package:hydrated_bloc/hydrated_bloc.dart';
import 'package:json_annotation/json_annotation.dart';

part 'home_events.dart';
part 'home_states.dart';
part 'home_bloc.g.dart';

class HomeBloc extends HydratedBloc<HomeEvent, HomePageState> {
  final PatientRepository patientRepository;
  final String patientId;

  HomeBloc({
    required this.patientRepository,
    required this.patientId,
  }) : super(const HomePageState.initial()) {
    on<LoadPatientDataEvent>(_onLoadPatientDataRequested);
  }

  FutureOr<void> _onLoadPatientDataRequested(
      LoadPatientDataEvent event,
      Emitter<HomePageState> emit
      ) async {
    try {
      emit(state.copyWith(status: HomePageStatus.loading));

      final patientData = await patientRepository.getPatientById(id: id);

      emit(state.copyWith(status: HomePageStatus.loaded, data: patientData));

    } catch (e) {
      emit(state.copyWith(status: HomePageStatus.failed));
      addError(e);
    }
  }

  @override
  String get id => patientId;





  @override
  fromJson(Map<String, dynamic> json) {
    // TODO: implement fromJson
    throw UnimplementedError();
  }

  @override
  Map<String, dynamic>? toJson(state) {
    // TODO: implement toJson
    throw UnimplementedError();
  }
}