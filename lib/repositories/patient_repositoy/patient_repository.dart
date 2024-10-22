
import 'package:fhir_concept/api/src/client/fhir_api_client.dart';
import 'package:fhir_concept/api/src/data/patient_data/patient_data.dart';
import 'package:fhir_concept/repositories/patient_repositoy/exceptions.dart';

class PatientRepository {
  final FhirApiClient fhirApiClient;

  PatientRepository({
    required this.fhirApiClient,
  });

  Future<PatientData> getPatientById({
    required String id
  }) async {
    try {
      return await fhirApiClient.getPatientData(id: id);
    } catch (e) {
      throw GetPatientByIdFailure(e);
    }
  }

}