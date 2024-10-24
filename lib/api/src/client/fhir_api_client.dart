import 'package:fhir_concept/api/src/data/patient_data/patient_data.dart';
import 'package:http/http.dart' as http;
import 'dart:convert';
import 'dart:io';

/// API Error management
class FhirConceptMalformedResponse implements Exception {
  const FhirConceptMalformedResponse({required this.error});

  final Object error;
}

class FhirConceptApiRequestFailure implements Exception {
  const FhirConceptApiRequestFailure({
    required this.statusCode,
    required this.body,
  });

  final int statusCode;
  final Map<String, dynamic> body;
}

class FhirApiClient {
  final String _baseUrl;
  final http.Client _httpClient;

  // The different Clients, based on what I am building for:

  //1. For the final app, where I have a online-endpoint
  FhirApiClient({
    http.Client? httpClient,
  }) : this._(
          baseUrl: 'https://xyz.com/fhir',
          httpClient: httpClient,
        );

  //2. For physical installations, where the endpoint is hosted on the device
  FhirApiClient.localHost({
    http.Client? httpClient,
  }) : this._(
          baseUrl: 'http://localhost:8080/fhir',
          httpClient: httpClient,
        );

  //3. For emulators, where localhost: would point towards the emulator, this is the
  //   IP address under which the emulator can reach the PC-hosted endpoint
  FhirApiClient.emulator({
    http.Client? httpClient,
  }) : this._(
          baseUrl: 'http://10.0.2.2:8080/fhir',
          httpClient: httpClient,
        );

  FhirApiClient._({
    required String baseUrl,
    http.Client? httpClient,
  })  : _baseUrl = baseUrl,
        _httpClient = httpClient ?? http.Client();

  Future<PatientData> getPatientData({
    required String patId,
  }) async {
    final uri = Uri.parse('$_baseUrl/Patient/$patId');

    http.Response? response = await _httpClient.get(uri);

    Map<String, dynamic> body;

    try {
      final bodyDecoded = utf8.decode(response!.bodyBytes);
      body = jsonDecode(bodyDecoded) as Map<String, dynamic>;
    } catch (error, stackTrace) {
      Error.throwWithStackTrace(
        FhirConceptMalformedResponse(error: error),
        stackTrace,
      );
    }

    if (response.statusCode != HttpStatus.ok) {
      throw FhirConceptApiRequestFailure(
          statusCode: response.statusCode, body: body);
    }

    return PatientData.fromJson(body);
  }

/* Implement further requests to the server*/

// search by id
// search by name
// create new patient
}
