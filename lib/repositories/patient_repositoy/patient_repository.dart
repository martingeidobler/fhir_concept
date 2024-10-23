
import 'package:fhir_concept/api/src/client/fhir_api_client.dart';
import 'package:fhir_concept/api/src/data/patient_data/patient_data.dart';
import 'package:fhir_concept/repositories/patient_repositoy/exceptions.dart';

class PatientRepository {
  final FhirApiClient fhirApiClient;

  PatientRepository({
    required this.fhirApiClient,
  });

  Future<PatientData> getPatientById({
    required String patId
  }) async {
    try {
      return await fhirApiClient.getPatientData(patId: patId);
    } catch (e) {
      print(e.toString());
      throw GetPatientByIdFailure(e);
    }
  }

  /* Implement further requests to call the API client*/

  // search by id
  // search by name
  // create new patient

}