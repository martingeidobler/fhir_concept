import 'package:fhir_concept/features/home/bloc/home_bloc.dart';
import 'package:fhir_concept/features/home/bloc/home_events.dart';
import 'package:fhir_concept/features/home/bloc/home_states.dart';
import 'package:fhir_concept/features/home/view/patient_view.dart';
import 'package:fhir_concept/features/home/widgets/error_view.dart';
import 'package:fhir_concept/features/home/widgets/patient_data_widget.dart';
import 'package:fhir_concept/repositories/patient_repositoy/patient_repository.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("FHIR TEST APP")
      ),
      body:  Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            BlocProvider<HomeBloc>(
                create: (_) => HomeBloc(
                    patientRepository: context.read<PatientRepository>(),
                )..add(const HomePageOpened()),
              child: PatientView(),
            )
          ]
        ),
      ),
    );
  }


}
