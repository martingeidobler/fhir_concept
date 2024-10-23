part of 'home_bloc.dart';

enum HomePageStatus { initial, loading, loaded, failed } //

/// The PageState describes what the UI should display based on the current situation
/// the blocProvider causes a re-draw once these are changed.

@JsonSerializable()
class HomePageState extends Equatable {
  final HomePageStatus status;
  final PatientData? data;

  const HomePageState({
    required this.status,
    this.data,
  });

  const HomePageState.initial()
      : this(
          status: HomePageStatus.initial,
        );

  @override
  List<Object?> get props => [status, data];

  HomePageState copyWith({
    HomePageStatus? status,
    PatientData? data,
  }) {
    return HomePageState(
      status: status ?? this.status,
      data: data ?? this.data,
    );
  }

  factory HomePageState.fromJson(Map<String, dynamic> json) =>
      _$HomePageStateFromJson(json);

  Map<String, dynamic> toJson() => _$HomePageStateToJson(this);
}
