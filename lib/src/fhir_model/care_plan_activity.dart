import 'extension.dart';
import 'fhir_object_factory.dart';
import 'codeable_concept.dart';
import 'reference.dart';
import 'annotation.dart';
import 'care_plan_detail.dart';
/// Describes the intention of how one or more practitioners intend to deliver care for a particular patient, group or community for a period of time, possibly limited to care for a specific condition or set of conditions.
class CarePlanActivity {
    /// Unique id for the element within a resource (for internal references). This may be any string value that does not contain spaces.
    String id;
    /// May be used to represent additional information that is not part of the basic definition of the element. To make the use of extensions safe and manageable, there is a strict set of governance  applied to the definition and use of extensions. Though any implementer can define an extension, there is a set of requirements that SHALL be met as part of the definition of the extension.
    List<Extension> extension;
    /// May be used to represent additional information that is not part of the basic definition of the element and that modifies the understanding of the element in which it is contained and/or the understanding of the containing element's descendants. Usually modifier elements provide negation or qualification. To make the use of extensions safe and manageable, there is a strict set of governance applied to the definition and use of extensions. Though any implementer can define an extension, there is a set of requirements that SHALL be met as part of the definition of the extension. Applications processing a resource are required to check for modifier extensions.
    /// 
    /// Modifier extensions SHALL NOT change the meaning of any elements on Resource or DomainResource (including cannot change the meaning of modifierExtension itself).
    List<Extension> modifierExtension;
    /// Identifies the outcome at the point when the status of the activity is assessed.  For example, the outcome of an education activity could be patient understands (or not).
    List<CodeableConcept> outcomeCodeableConcept;
    /// Details of the outcome or action resulting from the activity.  The reference to an "event" resource, such as Procedure or Encounter or Observation, is the result/outcome of the activity itself.  The activity can be conveyed using CarePlan.activity.detail OR using the CarePlan.activity.reference (a reference to a “request” resource).
    List<Reference> outcomeReference;
    /// Notes about the adherence/status/progress of the activity.
    List<Annotation> progress;
    /// The details of the proposed activity represented in a specific resource.
    Reference reference;
    /// A simple summary of a planned activity suitable for a general care plan system (e.g. form driven) that doesn't know about specific resources such as procedure etc.
    CarePlanDetail detail;
 
    CarePlanActivity.fromJSON( Map json ){
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
        this.outcomeCodeableConcept = List<CodeableConcept>();
        if (json['outcomeCodeableConcept'] != null && json['outcomeCodeableConcept'].length > 0) {
          if( json['outcomeCodeableConcept'] is List ){
            json['outcomeCodeableConcept'].forEach((i){
              this.outcomeCodeableConcept.add(FHIRObjectFactory.buildFromJSON('CodeableConcept', i));
            });
          } else {
            // this handles the case when the list only has one object and does not return as a list
            var i = json['outcomeCodeableConcept'];
            this.outcomeCodeableConcept.add(FHIRObjectFactory.buildFromJSON('CodeableConcept', i));
          }          
        }
        this.outcomeReference = List<Reference>();
        if (json['outcomeReference'] != null && json['outcomeReference'].length > 0) {
          if( json['outcomeReference'] is List ){
            json['outcomeReference'].forEach((i){
              this.outcomeReference.add(FHIRObjectFactory.buildFromJSON('Reference', i));
            });
          } else {
            // this handles the case when the list only has one object and does not return as a list
            var i = json['outcomeReference'];
            this.outcomeReference.add(FHIRObjectFactory.buildFromJSON('Reference', i));
          }          
        }
        this.progress = List<Annotation>();
        if (json['progress'] != null && json['progress'].length > 0) {
          if( json['progress'] is List ){
            json['progress'].forEach((i){
              this.progress.add(FHIRObjectFactory.buildFromJSON('Annotation', i));
            });
          } else {
            // this handles the case when the list only has one object and does not return as a list
            var i = json['progress'];
            this.progress.add(FHIRObjectFactory.buildFromJSON('Annotation', i));
          }          
        }
        this.reference = json['reference'] == null ? null : FHIRObjectFactory.buildFromJSON('Reference', json['reference']);
        this.detail = json['detail'] == null ? null : FHIRObjectFactory.buildFromJSON('CarePlanDetail', json['detail']);
    }
}
