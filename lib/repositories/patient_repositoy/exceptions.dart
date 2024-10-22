abstract class PatientRepoException implements Exception {
  final Object error;
  const PatientRepoException(this.error);
}

class GetPatientByIdFailure extends PatientRepoException {
  const GetPatientByIdFailure(super.error);
}