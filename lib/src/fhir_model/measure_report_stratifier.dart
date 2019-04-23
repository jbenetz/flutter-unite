import 'extension.dart';
import 'fhir_object_factory.dart';
import 'codeable_concept.dart';
import 'measure_report_stratum.dart';
/// The MeasureReport resource contains the results of the calculation of a measure; and optionally a reference to the resources involved in that calculation.
class MeasureReportStratifier {
    /// Unique id for the element within a resource (for internal references). This may be any string value that does not contain spaces.
    String id;
    /// May be used to represent additional information that is not part of the basic definition of the element. To make the use of extensions safe and manageable, there is a strict set of governance  applied to the definition and use of extensions. Though any implementer can define an extension, there is a set of requirements that SHALL be met as part of the definition of the extension.
    List<Extension> extension;
    /// May be used to represent additional information that is not part of the basic definition of the element and that modifies the understanding of the element in which it is contained and/or the understanding of the containing element's descendants. Usually modifier elements provide negation or qualification. To make the use of extensions safe and manageable, there is a strict set of governance applied to the definition and use of extensions. Though any implementer can define an extension, there is a set of requirements that SHALL be met as part of the definition of the extension. Applications processing a resource are required to check for modifier extensions.
    /// 
    /// Modifier extensions SHALL NOT change the meaning of any elements on Resource or DomainResource (including cannot change the meaning of modifierExtension itself).
    List<Extension> modifierExtension;
    /// The meaning of this stratifier, as defined in the measure definition.
    List<CodeableConcept> code;
    /// This element contains the results for a single stratum within the stratifier. For example, when stratifying on administrative gender, there will be four strata, one for each possible gender value.
    List<MeasureReportStratum> stratum;
 
    MeasureReportStratifier.fromJSON( Map json ){
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
        this.code = List<CodeableConcept>();
        if (json['code'] != null && json['code'].length > 0) {
          if( json['code'] is List ){
            json['code'].forEach((i){
              this.code.add(FHIRObjectFactory.buildFromJSON('CodeableConcept', i));
            });
          } else {
            // this handles the case when the list only has one object and does not return as a list
            var i = json['code'];
            this.code.add(FHIRObjectFactory.buildFromJSON('CodeableConcept', i));
          }          
        }
        this.stratum = List<MeasureReportStratum>();
        if (json['stratum'] != null && json['stratum'].length > 0) {
          if( json['stratum'] is List ){
            json['stratum'].forEach((i){
              this.stratum.add(FHIRObjectFactory.buildFromJSON('MeasureReportStratum', i));
            });
          } else {
            // this handles the case when the list only has one object and does not return as a list
            var i = json['stratum'];
            this.stratum.add(FHIRObjectFactory.buildFromJSON('MeasureReportStratum', i));
          }          
        }
    }
}
