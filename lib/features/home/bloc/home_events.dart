part of 'home_bloc.dart';

/// These are the events (as the name may hint at) that can happen on the page.
/// they are used as triggers to change states

@immutable
abstract class HomeEvent extends Equatable {
  const HomeEvent();

  @override
  List<Object?> get props => [];
}

class LoadPatientDataEvent extends HomeEvent {
  const LoadPatientDataEvent();
}

class LoadedPatientDataEvent extends HomeEvent {
  final PatientData data;

  const LoadedPatientDataEvent({
    required this.data,
  });

  @override
  List<Object?> get props => [data];
}

class HomePageInitial extends HomeEvent {
  const HomePageInitial();
}
