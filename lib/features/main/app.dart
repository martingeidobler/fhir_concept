import 'package:fhir_concept/features/home/bloc/home_bloc.dart';
import 'package:fhir_concept/features/home/view/home_page.dart';
import 'package:fhir_concept/repositories/patient_repositoy/patient_repository.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class App extends StatelessWidget {
  final PatientRepository patientRepository;

  const App({
    required this.patientRepository,
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return MultiBlocProvider(
        providers: [
          BlocProvider<HomeBloc>(
            create: (BuildContext context) =>
                HomeBloc(patientRepository: patientRepository),
          )
        ],
        child: const MaterialApp(
          home: HomePage(),
        ));
  }
}
