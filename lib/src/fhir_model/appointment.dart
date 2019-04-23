import 'meta.dart';
import 'fhir_object_factory.dart';
import 'element.dart';
import 'narrative.dart';
import 'extension.dart';
import 'identifier.dart';
import 'codeable_concept.dart';
import 'reference.dart';
import 'appointment_participant.dart';
import 'period.dart';
/// A booking of a healthcare event among patient(s), practitioner(s), related person(s) and/or device(s) for a specific date/time. This may result in one or more Encounter(s).
class Appointment {
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
    /// This records identifiers associated with this appointment concern that are defined by business processes and/or used to refer to it when a direct URL reference to the resource itself is not appropriate (e.g. in CDA documents, or in written / printed documentation).
    List<Identifier> identifier;
    /// The overall status of the Appointment. Each of the participants has their own participation status which indicates their involvement in the process, however this status indicates the shared status.
    String status;
    /// Extensions for status
    Element extStatus;
    /// The coded reason for the appointment being cancelled. This is often used in reporting/billing/futher processing to determine if further actions are required, or specific fees apply.
    CodeableConcept cancelationReason;
    /// A broad categorization of the service that is to be performed during this appointment.
    List<CodeableConcept> serviceCategory;
    /// The specific service that is to be performed during this appointment.
    List<CodeableConcept> serviceType;
    /// The specialty of a practitioner that would be required to perform the service requested in this appointment.
    List<CodeableConcept> specialty;
    /// The style of appointment or patient that has been booked in the slot (not service type).
    CodeableConcept appointmentType;
    /// The coded reason that this appointment is being scheduled. This is more clinical than administrative.
    List<CodeableConcept> reasonCode;
    /// Reason the appointment has been scheduled to take place, as specified using information from another resource. When the patient arrives and the encounter begins it may be used as the admission diagnosis. The indication will typically be a Condition (with other resources referenced in the evidence.detail), or a Procedure.
    List<Reference> reasonReference;
    /// The priority of the appointment. Can be used to make informed decisions if needing to re-prioritize appointments. (The iCal Standard specifies 0 as undefined, 1 as highest, 9 as lowest priority).
    int priority;
    /// Extensions for priority
    Element extPriority;
    /// The brief description of the appointment as would be shown on a subject line in a meeting request, or appointment list. Detailed or expanded information should be put in the comment field.
    String description;
    /// Extensions for description
    Element extDescription;
    /// Additional information to support the appointment provided when making the appointment.
    List<Reference> supportingInformation;
    /// Date/Time that the appointment is to take place.
    DateTime start;
    /// Extensions for start
    Element extStart;
    /// Date/Time that the appointment is to conclude.
    DateTime end;
    /// Extensions for end
    Element extEnd;
    /// Number of minutes that the appointment is to take. This can be less than the duration between the start and end times.  For example, where the actual time of appointment is only an estimate or if a 30 minute appointment is being requested, but any time would work.  Also, if there is, for example, a planned 15 minute break in the middle of a long appointment, the duration may be 15 minutes less than the difference between the start and end.
    int minutesDuration;
    /// Extensions for minutesDuration
    Element extMinutesDuration;
    /// The slots from the participants' schedules that will be filled by the appointment.
    List<Reference> slot;
    /// The date that this appointment was initially created. This could be different to the meta.lastModified value on the initial entry, as this could have been before the resource was created on the FHIR server, and should remain unchanged over the lifespan of the appointment.
    DateTime created;
    /// Extensions for created
    Element extCreated;
    /// Additional comments about the appointment.
    String comment;
    /// Extensions for comment
    Element extComment;
    /// While Appointment.comment contains information for internal use, Appointment.patientInstructions is used to capture patient facing information about the Appointment (e.g. please bring your referral or fast from 8pm night before).
    String patientInstruction;
    /// Extensions for patientInstruction
    Element extPatientInstruction;
    /// The service request this appointment is allocated to assess (e.g. incoming referral or procedure request).
    List<Reference> basedOn;
    /// List of participants involved in the appointment.
    List<AppointmentParticipant> participant;
    /// A set of date ranges (potentially including times) that the appointment is preferred to be scheduled within.
    /// 
    /// The duration (usually in minutes) could also be provided to indicate the length of the appointment to fill and populate the start/end times for the actual allocated time. However, in other situations the duration may be calculated by the scheduling system.
    List<Period> requestedPeriod;
 
    Appointment.fromJSON( Map json ){
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
        this.status = json['status'];
        this.extStatus = json['_status'] == null ? null : FHIRObjectFactory.buildFromJSON('Element', json['_status']);
        this.cancelationReason = json['cancelationReason'] == null ? null : FHIRObjectFactory.buildFromJSON('CodeableConcept', json['cancelationReason']);
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
        this.reasonCode = List<CodeableConcept>();
        if (json['reasonCode'] != null && json['reasonCode'].length > 0) {
          if( json['reasonCode'] is List ){
            json['reasonCode'].forEach((i){
              this.reasonCode.add(FHIRObjectFactory.buildFromJSON('CodeableConcept', i));
            });
          } else {
            // this handles the case when the list only has one object and does not return as a list
            var i = json['reasonCode'];
            this.reasonCode.add(FHIRObjectFactory.buildFromJSON('CodeableConcept', i));
          }          
        }
        this.reasonReference = List<Reference>();
        if (json['reasonReference'] != null && json['reasonReference'].length > 0) {
          if( json['reasonReference'] is List ){
            json['reasonReference'].forEach((i){
              this.reasonReference.add(FHIRObjectFactory.buildFromJSON('Reference', i));
            });
          } else {
            // this handles the case when the list only has one object and does not return as a list
            var i = json['reasonReference'];
            this.reasonReference.add(FHIRObjectFactory.buildFromJSON('Reference', i));
          }          
        }
        this.priority = json['priority'];
        this.extPriority = json['_priority'] == null ? null : FHIRObjectFactory.buildFromJSON('Element', json['_priority']);
        this.description = json['description'];
        this.extDescription = json['_description'] == null ? null : FHIRObjectFactory.buildFromJSON('Element', json['_description']);
        this.supportingInformation = List<Reference>();
        if (json['supportingInformation'] != null && json['supportingInformation'].length > 0) {
          if( json['supportingInformation'] is List ){
            json['supportingInformation'].forEach((i){
              this.supportingInformation.add(FHIRObjectFactory.buildFromJSON('Reference', i));
            });
          } else {
            // this handles the case when the list only has one object and does not return as a list
            var i = json['supportingInformation'];
            this.supportingInformation.add(FHIRObjectFactory.buildFromJSON('Reference', i));
          }          
        }
        if( json['start'] != null ) { this.start = DateTime.parse(json['start']);}
        this.extStart = json['_start'] == null ? null : FHIRObjectFactory.buildFromJSON('Element', json['_start']);
        if( json['end'] != null ) { this.end = DateTime.parse(json['end']);}
        this.extEnd = json['_end'] == null ? null : FHIRObjectFactory.buildFromJSON('Element', json['_end']);
        this.minutesDuration = json['minutesDuration'];
        this.extMinutesDuration = json['_minutesDuration'] == null ? null : FHIRObjectFactory.buildFromJSON('Element', json['_minutesDuration']);
        this.slot = List<Reference>();
        if (json['slot'] != null && json['slot'].length > 0) {
          if( json['slot'] is List ){
            json['slot'].forEach((i){
              this.slot.add(FHIRObjectFactory.buildFromJSON('Reference', i));
            });
          } else {
            // this handles the case when the list only has one object and does not return as a list
            var i = json['slot'];
            this.slot.add(FHIRObjectFactory.buildFromJSON('Reference', i));
          }          
        }
        if( json['created'] != null ) { this.created = DateTime.parse(json['created']);}
        this.extCreated = json['_created'] == null ? null : FHIRObjectFactory.buildFromJSON('Element', json['_created']);
        this.comment = json['comment'];
        this.extComment = json['_comment'] == null ? null : FHIRObjectFactory.buildFromJSON('Element', json['_comment']);
        this.patientInstruction = json['patientInstruction'];
        this.extPatientInstruction = json['_patientInstruction'] == null ? null : FHIRObjectFactory.buildFromJSON('Element', json['_patientInstruction']);
        this.basedOn = List<Reference>();
        if (json['basedOn'] != null && json['basedOn'].length > 0) {
          if( json['basedOn'] is List ){
            json['basedOn'].forEach((i){
              this.basedOn.add(FHIRObjectFactory.buildFromJSON('Reference', i));
            });
          } else {
            // this handles the case when the list only has one object and does not return as a list
            var i = json['basedOn'];
            this.basedOn.add(FHIRObjectFactory.buildFromJSON('Reference', i));
          }          
        }
        this.participant = List<AppointmentParticipant>();
        if (json['participant'] != null && json['participant'].length > 0) {
          if( json['participant'] is List ){
            json['participant'].forEach((i){
              this.participant.add(FHIRObjectFactory.buildFromJSON('AppointmentParticipant', i));
            });
          } else {
            // this handles the case when the list only has one object and does not return as a list
            var i = json['participant'];
            this.participant.add(FHIRObjectFactory.buildFromJSON('AppointmentParticipant', i));
          }          
        }
        this.requestedPeriod = List<Period>();
        if (json['requestedPeriod'] != null && json['requestedPeriod'].length > 0) {
          if( json['requestedPeriod'] is List ){
            json['requestedPeriod'].forEach((i){
              this.requestedPeriod.add(FHIRObjectFactory.buildFromJSON('Period', i));
            });
          } else {
            // this handles the case when the list only has one object and does not return as a list
            var i = json['requestedPeriod'];
            this.requestedPeriod.add(FHIRObjectFactory.buildFromJSON('Period', i));
          }          
        }
    }
}
