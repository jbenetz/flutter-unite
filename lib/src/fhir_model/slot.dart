import 'meta.dart';
import 'fhir_object_factory.dart';
import 'element.dart';
import 'narrative.dart';
import 'extension.dart';
import 'identifier.dart';
import 'codeable_concept.dart';
import 'reference.dart';
/// A slot of time on a schedule that may be available for booking appointments.
class Slot {
    /// The logical id of the resource, as used in the URL for the resource. Once assigned, this value never changes.
    String id;
    /// The metadata about the resource. This is content that is maintained by the infrastructure. Changes to the content might not always be associated with version changes to the resource.
    Meta meta;
    /// A reference to a set of rules that were followed when the resource was constructed, and which must be understood when processing the content. Often, this is a reference to an implementation guide that defines the special rules along with other profiles etc.
    String implicitRules;
    /// Extensions for implicitRules
    Element extImplicitRules;
    /// The base language in which the resource is written.
    String language;
    /// Extensions for language
    Element extLanguage;
    /// A human-readable narrative that contains a summary of the resource and can be used to represent the content of the resource to a human. The narrative need not encode all the structured data, but is required to contain sufficient detail to make it "clinically safe" for a human to just read the narrative. Resource definitions may define what content should be represented in the narrative to ensure clinical safety.
    Narrative text;
    /// May be used to represent additional information that is not part of the basic definition of the resource. To make the use of extensions safe and manageable, there is a strict set of governance  applied to the definition and use of extensions. Though any implementer can define an extension, there is a set of requirements that SHALL be met as part of the definition of the extension.
    List<Extension> extension;
    /// May be used to represent additional information that is not part of the basic definition of the resource and that modifies the understanding of the element that contains it and/or the understanding of the containing element's descendants. Usually modifier elements provide negation or qualification. To make the use of extensions safe and manageable, there is a strict set of governance applied to the definition and use of extensions. Though any implementer is allowed to define an extension, there is a set of requirements that SHALL be met as part of the definition of the extension. Applications processing a resource are required to check for modifier extensions.
    /// 
    /// Modifier extensions SHALL NOT change the meaning of any elements on Resource or DomainResource (including cannot change the meaning of modifierExtension itself).
    List<Extension> modifierExtension;
    /// External Ids for this item.
    List<Identifier> identifier;
    /// A broad categorization of the service that is to be performed during this appointment.
    List<CodeableConcept> serviceCategory;
    /// The type of appointments that can be booked into this slot (ideally this would be an identifiable service - which is at a location, rather than the location itself). If provided then this overrides the value provided on the availability resource.
    List<CodeableConcept> serviceType;
    /// The specialty of a practitioner that would be required to perform the service requested in this appointment.
    List<CodeableConcept> specialty;
    /// The style of appointment or patient that may be booked in the slot (not service type).
    CodeableConcept appointmentType;
    /// The schedule resource that this slot defines an interval of status information.
    Reference schedule;
    /// busy | free | busy-unavailable | busy-tentative | entered-in-error.
    String status;
    /// Extensions for status
    Element extStatus;
    /// Date/Time that the slot is to begin.
    DateTime start;
    /// Extensions for start
    Element extStart;
    /// Date/Time that the slot is to conclude.
    DateTime end;
    /// Extensions for end
    Element extEnd;
    /// This slot has already been overbooked, appointments are unlikely to be accepted for this time.
    bool overbooked;
    /// Extensions for overbooked
    Element extOverbooked;
    /// Comments on the slot to describe any extended information. Such as custom constraints on the slot.
    String comment;
    /// Extensions for comment
    Element extComment;
 
    Slot.fromJSON( Map json ){
        this.id = json['id'];
        this.meta = json['meta'] == null ? null : FHIRObjectFactory.buildFromJSON('Meta', json['meta']);
        this.implicitRules = json['implicitRules'];
        this.extImplicitRules = json['_implicitRules'] == null ? null : FHIRObjectFactory.buildFromJSON('Element', json['_implicitRules']);
        this.language = json['language'];
        this.extLanguage = json['_language'] == null ? null : FHIRObjectFactory.buildFromJSON('Element', json['_language']);
        this.text = json['text'] == null ? null : FHIRObjectFactory.buildFromJSON('Narrative', json['text']);
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
        this.identifier = List<Identifier>();
        if (json['identifier'] != null && json['identifier'].length > 0) {
          if( json['identifier'] is List ){
            json['identifier'].forEach((i){
              this.identifier.add(FHIRObjectFactory.buildFromJSON('Identifier', i));
            });
          } else {
            // this handles the case when the list only has one object and does not return as a list
            var i = json['identifier'];
            this.identifier.add(FHIRObjectFactory.buildFromJSON('Identifier', i));
          }          
        }
        this.serviceCategory = List<CodeableConcept>();
        if (json['serviceCategory'] != null && json['serviceCategory'].length > 0) {
          if( json['serviceCategory'] is List ){
            json['serviceCategory'].forEach((i){
              this.serviceCategory.add(FHIRObjectFactory.buildFromJSON('CodeableConcept', i));
            });
          } else {
            // this handles the case when the list only has one object and does not return as a list
            var i = json['serviceCategory'];
            this.serviceCategory.add(FHIRObjectFactory.buildFromJSON('CodeableConcept', i));
          }          
        }
        this.serviceType = List<CodeableConcept>();
        if (json['serviceType'] != null && json['serviceType'].length > 0) {
          if( json['serviceType'] is List ){
            json['serviceType'].forEach((i){
              this.serviceType.add(FHIRObjectFactory.buildFromJSON('CodeableConcept', i));
            });
          } else {
            // this handles the case when the list only has one object and does not return as a list
            var i = json['serviceType'];
            this.serviceType.add(FHIRObjectFactory.buildFromJSON('CodeableConcept', i));
          }          
        }
        this.specialty = List<CodeableConcept>();
        if (json['specialty'] != null && json['specialty'].length > 0) {
          if( json['specialty'] is List ){
            json['specialty'].forEach((i){
              this.specialty.add(FHIRObjectFactory.buildFromJSON('CodeableConcept', i));
            });
          } else {
            // this handles the case when the list only has one object and does not return as a list
            var i = json['specialty'];
            this.specialty.add(FHIRObjectFactory.buildFromJSON('CodeableConcept', i));
          }          
        }
        this.appointmentType = json['appointmentType'] == null ? null : FHIRObjectFactory.buildFromJSON('CodeableConcept', json['appointmentType']);
        this.schedule = json['schedule'] == null ? null : FHIRObjectFactory.buildFromJSON('Reference', json['schedule']);
        this.status = json['status'];
        this.extStatus = json['_status'] == null ? null : FHIRObjectFactory.buildFromJSON('Element', json['_status']);
        if( json['start'] != null ) { this.start = DateTime.parse(json['start']);}
        this.extStart = json['_start'] == null ? null : FHIRObjectFactory.buildFromJSON('Element', json['_start']);
        if( json['end'] != null ) { this.end = DateTime.parse(json['end']);}
        this.extEnd = json['_end'] == null ? null : FHIRObjectFactory.buildFromJSON('Element', json['_end']);
        this.overbooked = json['overbooked'];
        this.extOverbooked = json['_overbooked'] == null ? null : FHIRObjectFactory.buildFromJSON('Element', json['_overbooked']);
        this.comment = json['comment'];
        this.extComment = json['_comment'] == null ? null : FHIRObjectFactory.buildFromJSON('Element', json['_comment']);
    }
}
