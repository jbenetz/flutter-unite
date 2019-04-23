import 'extension.dart';
import 'fhir_object_factory.dart';
import 'codeable_concept.dart';
import 'reference.dart';
import 'element.dart';
import 'period.dart';
/// A booking of a healthcare event among patient(s), practitioner(s), related person(s) and/or device(s) for a specific date/time. This may result in one or more Encounter(s).
class AppointmentParticipant {
    /// Unique id for the element within a resource (for internal references). This may be any string value that does not contain spaces.
    String id;
    /// May be used to represent additional information that is not part of the basic definition of the element. To make the use of extensions safe and manageable, there is a strict set of governance  applied to the definition and use of extensions. Though any implementer can define an extension, there is a set of requirements that SHALL be met as part of the definition of the extension.
    List<Extension> extension;
    /// May be used to represent additional information that is not part of the basic definition of the element and that modifies the understanding of the element in which it is contained and/or the understanding of the containing element's descendants. Usually modifier elements provide negation or qualification. To make the use of extensions safe and manageable, there is a strict set of governance applied to the definition and use of extensions. Though any implementer can define an extension, there is a set of requirements that SHALL be met as part of the definition of the extension. Applications processing a resource are required to check for modifier extensions.
    /// 
    /// Modifier extensions SHALL NOT change the meaning of any elements on Resource or DomainResource (including cannot change the meaning of modifierExtension itself).
    List<Extension> modifierExtension;
    /// Role of participant in the appointment.
    List<CodeableConcept> type;
    /// A Person, Location/HealthcareService or Device that is participating in the appointment.
    Reference actor;
    /// Whether this participant is required to be present at the meeting. This covers a use-case where two doctors need to meet to discuss the results for a specific patient, and the patient is not required to be present.
    String required;
    /// Extensions for required
    Element extRequired;
    /// Participation status of the actor.
    String status;
    /// Extensions for status
    Element extStatus;
    /// Participation period of the actor.
    Period period;
 
    AppointmentParticipant.fromJSON( Map json ){
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
        this.type = List<CodeableConcept>();
        if (json['type'] != null && json['type'].length > 0) {
          if( json['type'] is List ){
            json['type'].forEach((i){
              this.type.add(FHIRObjectFactory.buildFromJSON('CodeableConcept', i));
            });
          } else {
            // this handles the case when the list only has one object and does not return as a list
            var i = json['type'];
            this.type.add(FHIRObjectFactory.buildFromJSON('CodeableConcept', i));
          }          
        }
        this.actor = json['actor'] == null ? null : FHIRObjectFactory.buildFromJSON('Reference', json['actor']);
        this.required = json['required'];
        this.extRequired = json['_required'] == null ? null : FHIRObjectFactory.buildFromJSON('Element', json['_required']);
        this.status = json['status'];
        this.extStatus = json['_status'] == null ? null : FHIRObjectFactory.buildFromJSON('Element', json['_status']);
        this.period = json['period'] == null ? null : FHIRObjectFactory.buildFromJSON('Period', json['period']);
    }
}
