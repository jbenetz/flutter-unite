import 'extension.dart';
import 'fhir_object_factory.dart';
import 'codeable_concept.dart';
import 'immunization_recommendation_date_criterion.dart';
import 'element.dart';
import 'reference.dart';
/// A patient's point-in-time set of recommendations (i.e. forecasting) according to a published schedule with optional supporting justification.
class ImmunizationRecommendationRecommendation {
    /// Unique id for the element within a resource (for internal references). This may be any string value that does not contain spaces.
    String id;
    /// May be used to represent additional information that is not part of the basic definition of the element. To make the use of extensions safe and manageable, there is a strict set of governance  applied to the definition and use of extensions. Though any implementer can define an extension, there is a set of requirements that SHALL be met as part of the definition of the extension.
    List<Extension> extension;
    /// May be used to represent additional information that is not part of the basic definition of the element and that modifies the understanding of the element in which it is contained and/or the understanding of the containing element's descendants. Usually modifier elements provide negation or qualification. To make the use of extensions safe and manageable, there is a strict set of governance applied to the definition and use of extensions. Though any implementer can define an extension, there is a set of requirements that SHALL be met as part of the definition of the extension. Applications processing a resource are required to check for modifier extensions.
    /// 
    /// Modifier extensions SHALL NOT change the meaning of any elements on Resource or DomainResource (including cannot change the meaning of modifierExtension itself).
    List<Extension> modifierExtension;
    /// Vaccine(s) or vaccine group that pertain to the recommendation.
    List<CodeableConcept> vaccineCode;
    /// The targeted disease for the recommendation.
    CodeableConcept targetDisease;
    /// Vaccine(s) which should not be used to fulfill the recommendation.
    List<CodeableConcept> contraindicatedVaccineCode;
    /// Indicates the patient status with respect to the path to immunity for the target disease.
    CodeableConcept forecastStatus;
    /// The reason for the assigned forecast status.
    List<CodeableConcept> forecastReason;
    /// Vaccine date recommendations.  For example, earliest date to administer, latest date to administer, etc.
    List<ImmunizationRecommendationDateCriterion> dateCriterion;
    /// Contains the description about the protocol under which the vaccine was administered.
    String description;
    /// Extensions for description
    Element extDescription;
    /// One possible path to achieve presumed immunity against a disease - within the context of an authority.
    String series;
    /// Extensions for series
    Element extSeries;
    /// Extensions for doseNumberPositiveInt
    Element extDoseNumberPositiveInt;
    /// Extensions for doseNumberString
    Element extDoseNumberString;
    /// Extensions for seriesDosesPositiveInt
    Element extSeriesDosesPositiveInt;
    /// Extensions for seriesDosesString
    Element extSeriesDosesString;
    /// Immunization event history and/or evaluation that supports the status and recommendation.
    List<Reference> supportingImmunization;
    /// Patient Information that supports the status and recommendation.  This includes patient observations, adverse reactions and allergy/intolerance information.
    List<Reference> supportingPatientInformation;
 
    ImmunizationRecommendationRecommendation.fromJSON( Map json ){
        this.id = json['id'];
        this.extension = List<Extension>();
        if (json['extension'] != null && json['extension'].length > 0) {
          if( json['extension'] is List ){
            json['extension'].forEach((i){
              this.extension.add(FHIRObjectFactory.buildFromJSON('Extension', i));
            });
          } else {
            // this handles the case when the list only has one object and does not return as a list
            var i = json['extension'];
            this.extension.add(FHIRObjectFactory.buildFromJSON('Extension', i));
          }          
        }
        this.modifierExtension = List<Extension>();
        if (json['modifierExtension'] != null && json['modifierExtension'].length > 0) {
          if( json['modifierExtension'] is List ){
            json['modifierExtension'].forEach((i){
              this.modifierExtension.add(FHIRObjectFactory.buildFromJSON('Extension', i));
            });
          } else {
            // this handles the case when the list only has one object and does not return as a list
            var i = json['modifierExtension'];
            this.modifierExtension.add(FHIRObjectFactory.buildFromJSON('Extension', i));
          }          
        }
        this.vaccineCode = List<CodeableConcept>();
        if (json['vaccineCode'] != null && json['vaccineCode'].length > 0) {
          if( json['vaccineCode'] is List ){
            json['vaccineCode'].forEach((i){
              this.vaccineCode.add(FHIRObjectFactory.buildFromJSON('CodeableConcept', i));
            });
          } else {
            // this handles the case when the list only has one object and does not return as a list
            var i = json['vaccineCode'];
            this.vaccineCode.add(FHIRObjectFactory.buildFromJSON('CodeableConcept', i));
          }          
        }
        this.targetDisease = json['targetDisease'] == null ? null : FHIRObjectFactory.buildFromJSON('CodeableConcept', json['targetDisease']);
        this.contraindicatedVaccineCode = List<CodeableConcept>();
        if (json['contraindicatedVaccineCode'] != null && json['contraindicatedVaccineCode'].length > 0) {
          if( json['contraindicatedVaccineCode'] is List ){
            json['contraindicatedVaccineCode'].forEach((i){
              this.contraindicatedVaccineCode.add(FHIRObjectFactory.buildFromJSON('CodeableConcept', i));
            });
          } else {
            // this handles the case when the list only has one object and does not return as a list
            var i = json['contraindicatedVaccineCode'];
            this.contraindicatedVaccineCode.add(FHIRObjectFactory.buildFromJSON('CodeableConcept', i));
          }          
        }
        this.forecastStatus = json['forecastStatus'] == null ? null : FHIRObjectFactory.buildFromJSON('CodeableConcept', json['forecastStatus']);
        this.forecastReason = List<CodeableConcept>();
        if (json['forecastReason'] != null && json['forecastReason'].length > 0) {
          if( json['forecastReason'] is List ){
            json['forecastReason'].forEach((i){
              this.forecastReason.add(FHIRObjectFactory.buildFromJSON('CodeableConcept', i));
            });
          } else {
            // this handles the case when the list only has one object and does not return as a list
            var i = json['forecastReason'];
            this.forecastReason.add(FHIRObjectFactory.buildFromJSON('CodeableConcept', i));
          }          
        }
        this.dateCriterion = List<ImmunizationRecommendationDateCriterion>();
        if (json['dateCriterion'] != null && json['dateCriterion'].length > 0) {
          if( json['dateCriterion'] is List ){
            json['dateCriterion'].forEach((i){
              this.dateCriterion.add(FHIRObjectFactory.buildFromJSON('ImmunizationRecommendationDateCriterion', i));
            });
          } else {
            // this handles the case when the list only has one object and does not return as a list
            var i = json['dateCriterion'];
            this.dateCriterion.add(FHIRObjectFactory.buildFromJSON('ImmunizationRecommendationDateCriterion', i));
          }          
        }
        this.description = json['description'];
        this.extDescription = json['_description'] == null ? null : FHIRObjectFactory.buildFromJSON('Element', json['_description']);
        this.series = json['series'];
        this.extSeries = json['_series'] == null ? null : FHIRObjectFactory.buildFromJSON('Element', json['_series']);
        this.extDoseNumberPositiveInt = json['_doseNumberPositiveInt'] == null ? null : FHIRObjectFactory.buildFromJSON('Element', json['_doseNumberPositiveInt']);
        this.extDoseNumberString = json['_doseNumberString'] == null ? null : FHIRObjectFactory.buildFromJSON('Element', json['_doseNumberString']);
        this.extSeriesDosesPositiveInt = json['_seriesDosesPositiveInt'] == null ? null : FHIRObjectFactory.buildFromJSON('Element', json['_seriesDosesPositiveInt']);
        this.extSeriesDosesString = json['_seriesDosesString'] == null ? null : FHIRObjectFactory.buildFromJSON('Element', json['_seriesDosesString']);
        this.supportingImmunization = List<Reference>();
        if (json['supportingImmunization'] != null && json['supportingImmunization'].length > 0) {
          if( json['supportingImmunization'] is List ){
            json['supportingImmunization'].forEach((i){
              this.supportingImmunization.add(FHIRObjectFactory.buildFromJSON('Reference', i));
            });
          } else {
            // this handles the case when the list only has one object and does not return as a list
            var i = json['supportingImmunization'];
            this.supportingImmunization.add(FHIRObjectFactory.buildFromJSON('Reference', i));
          }          
        }
        this.supportingPatientInformation = List<Reference>();
        if (json['supportingPatientInformation'] != null && json['supportingPatientInformation'].length > 0) {
          if( json['supportingPatientInformation'] is List ){
            json['supportingPatientInformation'].forEach((i){
              this.supportingPatientInformation.add(FHIRObjectFactory.buildFromJSON('Reference', i));
            });
          } else {
            // this handles the case when the list only has one object and does not return as a list
            var i = json['supportingPatientInformation'];
            this.supportingPatientInformation.add(FHIRObjectFactory.buildFromJSON('Reference', i));
          }          
        }
    }
}
