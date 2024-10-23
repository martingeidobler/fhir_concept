import 'package:fhir_concept/api/src/client/fhir_api_client.dart';
import 'package:fhir_concept/features/main/app.dart';
import 'package:fhir_concept/features/main/bootstrap.dart';
import 'package:fhir_concept/repositories/patient_repositoy/patient_repository.dart';


void main() {
    bootstrap(() async {
        final fhirApiClient = FhirApiClient.emulator();
        final patientRepository = PatientRepository(fhirApiClient: fhirApiClient);
        return App(patientRepository: patientRepository,);
    });
}
