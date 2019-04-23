import 'package:http/http.dart' as http;
//import 'package:http/http.dart';
import 'dart:convert';

import 'package:flutter_unite/flutter_unite.dart';

import 'package:meta/meta.dart';

class FHIRDataProvider {
  //////////
  /// Singleton
  static final FHIRDataProvider _singleton = FHIRDataProvider._internal();
  factory FHIRDataProvider() {
    return _singleton;
  }
  FHIRDataProvider._internal();

  ////////////
  ///Member Vars
  FHIRDataProviderConfig _config;
  String _authToken;

  configure(FHIRDataProviderConfig config) {
    this._config = config;
  }

  authorized(String accessToken) {
    this._authToken = accessToken;
  }

  _checkConfig() {
    if (this._config == null) {
      throw Exception("No FHIRDataProviderConfig has been set.");
    }
  }

  _checkAuth() {
    if (this._authToken == null) {
      throw Exception("No Authorization Token set.");
    }
  }

  /// Get User Info - This might be specific to Blue Button only.
  Future<Map<String, dynamic>> getUserInfo() async {
    _checkConfig();
    _checkAuth();

    var userInfoURL =
        "${this._config.fhirApiEndpoint}${this._config.fhirApiUserinfoUri}";
    var authHeader = "Bearer ${this._authToken}";

    final response =
        await http.get(userInfoURL, headers: {"Authorization": authHeader});

    if (response.statusCode == 200) {
      // If server returns an OK response, parse the JSON
      return json.decode(response.body);
    } else {
      // If that response was not OK, throw an error.
      throw Exception('Failed to get User Info. [Code:${response.statusCode}]');
    }
  }

  Future<Patient> getPatient(String patientId) async {
    var patientURL =
        "${this._config.fhirApiEndpoint}${this._config.fhirApiPatientUri}$patientId";
    var authHeader = "Bearer ${this._authToken}";

    final response =
        await http.get(patientURL, headers: {"Authorization": authHeader});

    if (response.statusCode == 200) {
      // If server returns an OK response, parse the JSON
      return Patient.fromJSON(json.decode(response.body));
    } else {
      // If that response was not OK, throw an error.
      throw Exception('Failed to get patient. [Code:${response.statusCode}]');
    }
  }

//API has a limit of 50. .so needs to call it multiple times to fetch all data. NextURL diocates
  Future<List<ExplanationOfBenefit>> getEOB(String patientId) async {
    var eobURL = "${this._config.fhirApiEndpoint}${this._config.fhirApiEobUri}" +
        "?patient=$patientId&startIndex=0&count=${this._config.fhirApiPageCountMax}";
    var authHeader = "Bearer ${this._authToken}";
    List<ExplanationOfBenefit> eobList = [];
    FHIRPagedResponse<ExplanationOfBenefit> pagedResponse = FHIRPagedResponse(
        await http.get(eobURL, headers: {"Authorization": authHeader}));

    eobList.addAll(pagedResponse.entry);

    //now page thru and get all eobs
    String nextPageUrl = pagedResponse.nextUrlLink;
    while (nextPageUrl != null) {
      pagedResponse = FHIRPagedResponse(await http.get(
          pagedResponse.nextUrlLink,
          headers: {"Authorization": authHeader}));

      eobList.addAll(pagedResponse.entry); //accumulate benefit entries
      nextPageUrl = pagedResponse.nextUrlLink;
    }
    return eobList;
  }
}

class FHIRDataProviderConfig {
  var fhirApiEndpoint;
  var fhirApiUserinfoUri;
  var fhirApiPatientUri;
  var fhirApiEobUri;
  var fhirApiPageCountMax;

  FHIRDataProviderConfig(
      {@required this.fhirApiEndpoint,
      this.fhirApiUserinfoUri = "/connect/userinfo",
      this.fhirApiEobUri = "/fhir/ExplanationOfBenefit",
      this.fhirApiPageCountMax = 50,
      this.fhirApiPatientUri = "/fhir/Patient/"});

  void registerFHIRClass(String baseFHIRClassName, CreateFHIRObject fn) {
    FHIRObjectFactory.registerClass(baseFHIRClassName, fn);
  }
}

class FHIRPagedResponse<T> {
  String resourceType;
  String id;
  String selfUrlLink;
  String nextUrlLink;
  String previousUrlLink;
  String firstUrlLink;
  String lastUrlLink;
  int total;
  List<T> entry;

  FHIRPagedResponse(http.Response httpResponse) {
    if (httpResponse != null && httpResponse.statusCode == 200) {
      var jsonResponse = json.decode(httpResponse.body);
      id = jsonResponse['id'];
      total = jsonResponse['total'];
      entry = [];
      _getAsList(jsonResponse['entry']).forEach((i) {
        entry.add(_fromJsonResouce(i));
      });

      List links = _getAsList(jsonResponse['link']);
      links.forEach((link) {
        switch (link['relation']) {
          case 'self':
            {
              this.selfUrlLink = link['url'];
            }
            break;
          case 'next':
            {
              this.nextUrlLink = link['url'];
            }
            break;
          case 'previous':
            {
              this.previousUrlLink = link['url'];
            }
            break;
          case 'first':
            {
              this.firstUrlLink = link['url'];
            }
            break;
          case 'last':
            {
              this.lastUrlLink = link['url'];
            }
            break;
        }
      });
    } else {
      throw Exception('Failed to get EOB Entries');
    }
  }

  static Object _fromJsonResouce(Map<String, dynamic> json) {
    if (json != null &&
        json['resource'] != null &&
        json['resource']['resourceType'] != null) {
      switch (json['resource']['resourceType']) {
        case 'ExplanationOfBenefit':
          {
            return ExplanationOfBenefit.fromJSON(json['resource']);
          }
          break;
        default:
          {
            throw new Exception("Unknown resource type: ${json['resource']}");
          }
      }
    }
    return null;
  }

  static List _getAsList(dynamic obj) {
    if (obj == null) {
      return [];
    } else if (obj is List) {
      return obj;
    } else {
      return [obj];
    }
  }
}
