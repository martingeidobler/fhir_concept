import 'package:fhir_concept/api/src/data/patient_data/patient_data.dart';
import 'package:fhir_concept/features/home/bloc/home_bloc.dart';
import 'package:fhir_concept/features/home/widgets/patient_data_widget.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class PatientView extends StatefulWidget {
  const PatientView({super.key});

  @override
  State<PatientView> createState() => _PatientViewState();
}

class _PatientViewState extends State<PatientView> {
  late TextEditingController _controller;
  String textFieldValue = '';

  @override
  void initState() {
    super.initState();
    _controller = TextEditingController();
  }

  @override
  void dispose() {
    _controller.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    final bloc = context.select((HomeBloc bloc) => bloc);
    final data = context.select((HomeBloc bloc) => bloc.state.data);
    final status = context.select((HomeBloc bloc) => bloc.state.status);

    // as described in the home state page, these is where the UI decides what to
    // based on what state the bloc holds.
    if (status == HomePageStatus.initial) {
      return Column(
        children: [
          SizedBox(
            width: 250,
            child: TextField(
              controller: _controller,
              onChanged: (value) {
                setState(() {
                  textFieldValue = value;
                });
              },
              decoration: const InputDecoration(
                labelText: "patientID",
                border: OutlineInputBorder(),
              ),
            ),
          ),
          ElevatedButton(
            onPressed: () {
              bloc.add(LoadPatientDataEvent(textFieldValue));
            },
            child: const Text('Press to load patient data'),
          ),
        ],
      );
    } else if (status == HomePageStatus.failed) {
      return ElevatedButton(
        onPressed: () {
          bloc.add(ErrorOkClick());
        },
        child: const Text('Something went wrong. try again?'),
      );
    } else if (status == HomePageStatus.loading) {
      return const CircularProgressIndicator();
    } else if (status == HomePageStatus.loaded && data != null) {
      return PatientDataWidget(data: data);
    } else {
      return const Text('illegal state');
    }
  }

  Widget patientDetails(PatientData data) {
    List<Widget> patientDataWidgetList = [];

    patientDataWidgetList.add(PatientDataWidget(data: data));

    return Column(
      children: patientDataWidgetList,
    );
  }
}
