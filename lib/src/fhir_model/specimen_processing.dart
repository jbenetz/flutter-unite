import 'extension.dart';
import 'fhir_object_factory.dart';
import 'element.dart';
import 'codeable_concept.dart';
import 'reference.dart';
import 'period.dart';
/// A sample to be used for analysis.
class SpecimenProcessing {
    /// Unique id for the element within a resource (for internal references). This may be any string value that does not contain spaces.
    String id;
    /// May be used to represent additional information that is not part of the basic definition of the element. To make the use of extensions safe and manageable, there is a strict set of governance  applied to the definition and use of extensions. Though any implementer can define an extension, there is a set of requirements that SHALL be met as part of the definition of the extension.
    List<Extension> extension;
    /// May be used to represent additional information that is not part of the basic definition of the element and that modifies the understanding of the element in which it is contained and/or the understanding of the containing element's descendants. Usually modifier elements provide negation or qualification. To make the use of extensions safe and manageable, there is a strict set of governance applied to the definition and use of extensions. Though any implementer can define an extension, there is a set of requirements that SHALL be met as part of the definition of the extension. Applications processing a resource are required to check for modifier extensions.
    /// 
    /// Modifier extensions SHALL NOT change the meaning of any elements on Resource or DomainResource (including cannot change the meaning of modifierExtension itself).
    List<Extension> modifierExtension;
    /// Textual description of procedure.
    String description;
    /// Extensions for description
    Element extDescription;
    /// A coded value specifying the procedure used to process the specimen.
    CodeableConcept procedure;
    /// Material used in the processing step.
    List<Reference> additive;
    /// Extensions for timeDateTime
    Element extTimeDateTime;
    /// A record of the time or period when the specimen processing occurred.  For example the time of sample fixation or the period of time the sample was in formalin.
    Period timePeriod;
 
    SpecimenProcessing.fromJSON( Map json ){
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
        this.description = json['description'];
        this.extDescription = json['_description'] == null ? null : FHIRObjectFactory.buildFromJSON('Element', json['_description']);
        this.procedure = json['procedure'] == null ? null : FHIRObjectFactory.buildFromJSON('CodeableConcept', json['procedure']);
        this.additive = List<Reference>();
        if (json['additive'] != null && json['additive'].length > 0) {
          if( json['additive'] is List ){
            json['additive'].forEach((i){
              this.additive.add(FHIRObjectFactory.buildFromJSON('Reference', i));
            });
          } else {
            // this handles the case when the list only has one object and does not return as a list
            var i = json['additive'];
            this.additive.add(FHIRObjectFactory.buildFromJSON('Reference', i));
          }          
        }
        this.extTimeDateTime = json['_timeDateTime'] == null ? null : FHIRObjectFactory.buildFromJSON('Element', json['_timeDateTime']);
        this.timePeriod = json['timePeriod'] == null ? null : FHIRObjectFactory.buildFromJSON('Period', json['timePeriod']);
    }
}
