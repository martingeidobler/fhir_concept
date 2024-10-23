import 'package:fhir_concept/api/src/data/patient_data/patient_data.dart';
import 'package:fhir_concept/features/home/bloc/home_bloc.dart';
import 'package:fhir_concept/features/home/widgets/patient_data_widget.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class PatientView extends StatelessWidget {
  const PatientView({super.key});

  @override
  Widget build(BuildContext context) {
    final bloc = context.select((HomeBloc bloc) => bloc);
    final data = context.select((HomeBloc bloc) => bloc.state.data);
    final status = context.select((HomeBloc bloc) => bloc.state.status);

    // as described in the home state page, these is where the UI decides what to
    // based on what state the bloc holds.
    if (status == HomePageStatus.initial) {
      return ElevatedButton(
        onPressed: () {
          bloc.add(const LoadPatientDataEvent());
        },
        child: const Text('Press to load patient data'),
      );
    } else if (status == HomePageStatus.failed) {
      return const Text('error'); //todo errorhandling
    } else if (status == HomePageStatus.loading) {
      return const CircularProgressIndicator();
    } else if (status == HomePageStatus.loaded && data != null) {
      return PatientDataWidget(data: data);
    } else {
      return const Text('illegal state');
    }
  }

  Widget patientDetails(PatientData data){
    List<Widget> patientDataWidgetList = [];

    patientDataWidgetList.add(PatientDataWidget(data: data));

    return Column (
      children: patientDataWidgetList,
    );
  }
}
