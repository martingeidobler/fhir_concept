import 'package:fhir_concept/api/src/client/fhir_api_client.dart';
import 'package:fhir_concept/features/main/app.dart';
import 'package:fhir_concept/repositories/patient_repositoy/patient_repository.dart';
import 'package:flutter/cupertino.dart';

void main() {

  final fhirApiClient = FhirApiClient.localHost();
  final patientRepository = PatientRepository(fhirApiClient: fhirApiClient);

   runApp(App(patientRepository: patientRepository));
}