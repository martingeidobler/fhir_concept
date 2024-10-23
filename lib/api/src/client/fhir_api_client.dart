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

  FhirApiClient({
    http.Client? httpClient,
  }) : this._(
          baseUrl: 'https://xyz.com/fhir',
          httpClient: httpClient,
        );

  FhirApiClient.localHost({
    http.Client? httpClient,
  }) : this._(
          baseUrl: 'http://localhost:8080/fhir',
          httpClient: httpClient,
        );

  /* If the address is set to //localcost: the emulator cannot access it, as
  *  the endpoint will not be on the phones localhost but connected on the machine */
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
    required String id,
  }) async {
    final uri = Uri.parse('$_baseUrl/Patient/$id');

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
