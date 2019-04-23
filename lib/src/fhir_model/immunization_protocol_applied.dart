import 'extension.dart';
import 'fhir_object_factory.dart';
import 'element.dart';
import 'reference.dart';
import 'codeable_concept.dart';
/// Describes the event of a patient being administered a vaccine or a record of an immunization as reported by a patient, a clinician or another party.
class ImmunizationProtocolApplied {
    /// Unique id for the element within a resource (for internal references). This may be any string value that does not contain spaces.
    String id;
    /// May be used to represent additional information that is not part of the basic definition of the element. To make the use of extensions safe and manageable, there is a strict set of governance  applied to the definition and use of extensions. Though any implementer can define an extension, there is a set of requirements that SHALL be met as part of the definition of the extension.
    List<Extension> extension;
    /// May be used to represent additional information that is not part of the basic definition of the element and that modifies the understanding of the element in which it is contained and/or the understanding of the containing element's descendants. Usually modifier elements provide negation or qualification. To make the use of extensions safe and manageable, there is a strict set of governance applied to the definition and use of extensions. Though any implementer can define an extension, there is a set of requirements that SHALL be met as part of the definition of the extension. Applications processing a resource are required to check for modifier extensions.
    /// 
    /// Modifier extensions SHALL NOT change the meaning of any elements on Resource or DomainResource (including cannot change the meaning of modifierExtension itself).
    List<Extension> modifierExtension;
    /// One possible path to achieve presumed immunity against a disease - within the context of an authority.
    String series;
    /// Extensions for series
    Element extSeries;
    /// Indicates the authority who published the protocol (e.g. ACIP) that is being followed.
    Reference authority;
    /// The vaccine preventable disease the dose is being administered against.
    List<CodeableConcept> targetDisease;
    /// Extensions for doseNumberPositiveInt
    Element extDoseNumberPositiveInt;
    /// Extensions for doseNumberString
    Element extDoseNumberString;
    /// Extensions for seriesDosesPositiveInt
    Element extSeriesDosesPositiveInt;
    /// Extensions for seriesDosesString
    Element extSeriesDosesString;
 
    ImmunizationProtocolApplied.fromJSON( Map json ){
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
        this.series = json['series'];
        this.extSeries = json['_series'] == null ? null : FHIRObjectFactory.buildFromJSON('Element', json['_series']);
        this.authority = json['authority'] == null ? null : FHIRObjectFactory.buildFromJSON('Reference', json['authority']);
        this.targetDisease = List<CodeableConcept>();
        if (json['targetDisease'] != null && json['targetDisease'].length > 0) {
          if( json['targetDisease'] is List ){
            json['targetDisease'].forEach((i){
              this.targetDisease.add(FHIRObjectFactory.buildFromJSON('CodeableConcept', i));
            });
          } else {
            // this handles the case when the list only has one object and does not return as a list
            var i = json['targetDisease'];
            this.targetDisease.add(FHIRObjectFactory.buildFromJSON('CodeableConcept', i));
          }          
        }
        this.extDoseNumberPositiveInt = json['_doseNumberPositiveInt'] == null ? null : FHIRObjectFactory.buildFromJSON('Element', json['_doseNumberPositiveInt']);
        this.extDoseNumberString = json['_doseNumberString'] == null ? null : FHIRObjectFactory.buildFromJSON('Element', json['_doseNumberString']);
        this.extSeriesDosesPositiveInt = json['_seriesDosesPositiveInt'] == null ? null : FHIRObjectFactory.buildFromJSON('Element', json['_seriesDosesPositiveInt']);
        this.extSeriesDosesString = json['_seriesDosesString'] == null ? null : FHIRObjectFactory.buildFromJSON('Element', json['_seriesDosesString']);
    }
}
