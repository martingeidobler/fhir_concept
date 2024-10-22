part of 'home_bloc.dart';


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

class HomePageOpened extends HomeEvent {
  const HomePageOpened();
}
