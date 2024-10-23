import 'package:fhir_concept/features/home/bloc/home_bloc.dart';
import 'package:fhir_concept/features/home/view/patient_view.dart';
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
      body:  const Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            PatientView()
          ]
        ),
      ),
    );
  }


}
