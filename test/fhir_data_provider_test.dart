import 'package:flutter_test/flutter_test.dart';
import 'package:flutter_unite/flutter_unite.dart';

main() {
  // NOTE: The access token will need to be fetched manually right now.
  String accessToken =
      "kWdOEmJGAgEiq83XkQNPY4DYppPB1Q"; //Token:kWdOEmJGAgEiq83XkQNPY4DYppPB1Q
  String patientId = "20140000010000";
  String blueButtonEndPoint = "https://sandbox.bluebutton.cms.gov/v1";
  test('--- FHIR getUserInfo---', () async {
    var config = FHIRDataProviderConfig(fhirApiEndpoint: blueButtonEndPoint);
    var dataProvider = FHIRDataProvider()
      ..configure(config)
      ..authorized(accessToken);
    var user = await dataProvider.getUserInfo();
    print("$user");
  });

  test('--- FHIR getPatient---', () async {
    var config = FHIRDataProviderConfig(fhirApiEndpoint: blueButtonEndPoint);
    var dataProvider = FHIRDataProvider()
      ..configure(config)
      ..authorized(accessToken);
    var patient = await dataProvider.getPatient(patientId);
    expect(patient.name[0].family, equals("Doe"));
  });

  test('--- FHIR getEOB---', () async {
    var config = FHIRDataProviderConfig(fhirApiEndpoint: blueButtonEndPoint);
    var dataProvider = FHIRDataProvider()
      ..configure(config)
      ..authorized(accessToken);
    var eobList = await dataProvider.getEOB(patientId);
    //print(eobList);
    expect(eobList.length, equals(146));
    expect(
        eobList[0].item[0].adjudication[0].category.coding[0].display,
        equals(
            "Amount paid by Part D plan for the PDE (drug is covered by Part D)"));
    var item = eobList[0].item[0];
    expect(item.runtimeType.toString(), equals('ExplanationOfBenefitItem'));

    config.registerFHIRClass('ExplanationOfBenefitItem', (json) {
      var bbItem = BBExplanationOfBenefitItem.fromJSON(json);
      return bbItem;
    });
    eobList = await dataProvider.getEOB(patientId);
    var bbItem = eobList[0].item[0];
    expect(bbItem.runtimeType.toString(), equals('BBExplanationOfBenefitItem'));
    print(
        'Service Display: ${(bbItem as BBExplanationOfBenefitItem).service.coding[0].display}');
  });
}

class BBExplanationOfBenefitItem extends ExplanationOfBenefitItem {
  CodeableConcept service;

  BBExplanationOfBenefitItem.fromJSON(Map json) : super.fromJSON(json) {
    this.service = json['service'] == null
        ? null
        : FHIRObjectFactory.buildFromJSON('CodeableConcept', json['service']);
  }
}
