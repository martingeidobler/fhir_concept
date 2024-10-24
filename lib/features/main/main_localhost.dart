import 'package:fhir_concept/api/src/client/fhir_api_client.dart';
import 'package:fhir_concept/features/main/app.dart';
import 'package:fhir_concept/features/main/bootstrap.dart';
import 'package:fhir_concept/repositories/patient_repositoy/patient_repository.dart';


/// the 2 main_files allow for different profiles and builds to run different
/// back-ends
void main() {
    bootstrap(() async {
        final fhirApiClient = FhirApiClient.localHost();
        final patientRepository = PatientRepository(fhirApiClient: fhirApiClient);
        return App(patientRepository: patientRepository,);
    });
}
