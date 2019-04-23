import 'meta.dart';
import 'fhir_object_factory.dart';
import 'element.dart';
import 'narrative.dart';
import 'extension.dart';
import 'identifier.dart';
import 'encounter_status_history.dart';
import 'coding.dart';
import 'encounter_class_history.dart';
import 'codeable_concept.dart';
import 'reference.dart';
import 'encounter_participant.dart';
import 'period.dart';
import 'duration.dart';
import 'encounter_diagnosis.dart';
import 'encounter_hospitalization.dart';
import 'encounter_location.dart';
/// An interaction between a patient and healthcare provider(s) for the purpose of providing healthcare service(s) or assessing the health status of a patient.
class Encounter {
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
    /// Identifier(s) by which this encounter is known.
    List<Identifier> identifier;
    /// planned | arrived | triaged | in-progress | onleave | finished | cancelled +.
    String status;
    /// Extensions for status
    Element extStatus;
    /// The status history permits the encounter resource to contain the status history without needing to read through the historical versions of the resource, or even have the server store them.
    List<EncounterStatusHistory> statusHistory;
    /// Concepts representing classification of patient encounter such as ambulatory (outpatient), inpatient, emergency, home health or others due to local variations.
    Coding class1;
    /// The class history permits the tracking of the encounters transitions without needing to go  through the resource history.  This would be used for a case where an admission starts of as an emergency encounter, then transitions into an inpatient scenario. Doing this and not restarting a new encounter ensures that any lab/diagnostic results can more easily follow the patient and not require re-processing and not get lost or cancelled during a kind of discharge from emergency to inpatient.
    List<EncounterClassHistory> classHistory;
    /// Specific type of encounter (e.g. e-mail consultation, surgical day-care, skilled nursing, rehabilitation).
    List<CodeableConcept> type;
    /// Broad categorization of the service that is to be provided (e.g. cardiology).
    CodeableConcept serviceType;
    /// Indicates the urgency of the encounter.
    CodeableConcept priority;
    /// The patient or group present at the encounter.
    Reference subject;
    /// Where a specific encounter should be classified as a part of a specific episode(s) of care this field should be used. This association can facilitate grouping of related encounters together for a specific purpose, such as government reporting, issue tracking, association via a common problem.  The association is recorded on the encounter as these are typically created after the episode of care and grouped on entry rather than editing the episode of care to append another encounter to it (the episode of care could span years).
    List<Reference> episodeOfCare;
    /// The request this encounter satisfies (e.g. incoming referral or procedure request).
    List<Reference> basedOn;
    /// The list of people responsible for providing the service.
    List<EncounterParticipant> participant;
    /// The appointment that scheduled this encounter.
    List<Reference> appointment;
    /// The start and end time of the encounter.
    Period period;
    /// Quantity of time the encounter lasted. This excludes the time during leaves of absence.
    Duration length;
    /// Reason the encounter takes place, expressed as a code. For admissions, this can be used for a coded admission diagnosis.
    List<CodeableConcept> reasonCode;
    /// Reason the encounter takes place, expressed as a code. For admissions, this can be used for a coded admission diagnosis.
    List<Reference> reasonReference;
    /// The list of diagnosis relevant to this encounter.
    List<EncounterDiagnosis> diagnosis;
    /// The set of accounts that may be used for billing for this Encounter.
    List<Reference> account;
    /// Details about the admission to a healthcare service.
    EncounterHospitalization hospitalization;
    /// List of locations where  the patient has been during this encounter.
    List<EncounterLocation> location;
    /// The organization that is primarily responsible for this Encounter's services. This MAY be the same as the organization on the Patient record, however it could be different, such as if the actor performing the services was from an external organization (which may be billed seperately) for an external consultation.  Refer to the example bundle showing an abbreviated set of Encounters for a colonoscopy.
    Reference serviceProvider;
    /// Another Encounter of which this encounter is a part of (administratively or in time).
    Reference partOf;
 
    Encounter.fromJSON( Map json ){
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
        this.statusHistory = List<EncounterStatusHistory>();
        if (json['statusHistory'] != null && json['statusHistory'].length > 0) {
          if( json['statusHistory'] is List ){
            json['statusHistory'].forEach((i){
              this.statusHistory.add(FHIRObjectFactory.buildFromJSON('EncounterStatusHistory', i));
            });
          } else {
            // this handles the case when the list only has one object and does not return as a list
            var i = json['statusHistory'];
            this.statusHistory.add(FHIRObjectFactory.buildFromJSON('EncounterStatusHistory', i));
          }          
        }
        this.class1 = json['class'] == null ? null : FHIRObjectFactory.buildFromJSON('Coding', json['class']);
        this.classHistory = List<EncounterClassHistory>();
        if (json['classHistory'] != null && json['classHistory'].length > 0) {
          if( json['classHistory'] is List ){
            json['classHistory'].forEach((i){
              this.classHistory.add(FHIRObjectFactory.buildFromJSON('EncounterClassHistory', i));
            });
          } else {
            // this handles the case when the list only has one object and does not return as a list
            var i = json['classHistory'];
            this.classHistory.add(FHIRObjectFactory.buildFromJSON('EncounterClassHistory', i));
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
        this.serviceType = json['serviceType'] == null ? null : FHIRObjectFactory.buildFromJSON('CodeableConcept', json['serviceType']);
        this.priority = json['priority'] == null ? null : FHIRObjectFactory.buildFromJSON('CodeableConcept', json['priority']);
        this.subject = json['subject'] == null ? null : FHIRObjectFactory.buildFromJSON('Reference', json['subject']);
        this.episodeOfCare = List<Reference>();
        if (json['episodeOfCare'] != null && json['episodeOfCare'].length > 0) {
          if( json['episodeOfCare'] is List ){
            json['episodeOfCare'].forEach((i){
              this.episodeOfCare.add(FHIRObjectFactory.buildFromJSON('Reference', i));
            });
          } else {
            // this handles the case when the list only has one object and does not return as a list
            var i = json['episodeOfCare'];
            this.episodeOfCare.add(FHIRObjectFactory.buildFromJSON('Reference', i));
          }          
        }
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
        this.participant = List<EncounterParticipant>();
        if (json['participant'] != null && json['participant'].length > 0) {
          if( json['participant'] is List ){
            json['participant'].forEach((i){
              this.participant.add(FHIRObjectFactory.buildFromJSON('EncounterParticipant', i));
            });
          } else {
            // this handles the case when the list only has one object and does not return as a list
            var i = json['participant'];
            this.participant.add(FHIRObjectFactory.buildFromJSON('EncounterParticipant', i));
          }          
        }
        this.appointment = List<Reference>();
        if (json['appointment'] != null && json['appointment'].length > 0) {
          if( json['appointment'] is List ){
            json['appointment'].forEach((i){
              this.appointment.add(FHIRObjectFactory.buildFromJSON('Reference', i));
            });
          } else {
            // this handles the case when the list only has one object and does not return as a list
            var i = json['appointment'];
            this.appointment.add(FHIRObjectFactory.buildFromJSON('Reference', i));
          }          
        }
        this.period = json['period'] == null ? null : FHIRObjectFactory.buildFromJSON('Period', json['period']);
        this.length = json['length'] == null ? null : FHIRObjectFactory.buildFromJSON('Duration', json['length']);
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
        this.diagnosis = List<EncounterDiagnosis>();
        if (json['diagnosis'] != null && json['diagnosis'].length > 0) {
          if( json['diagnosis'] is List ){
            json['diagnosis'].forEach((i){
              this.diagnosis.add(FHIRObjectFactory.buildFromJSON('EncounterDiagnosis', i));
            });
          } else {
            // this handles the case when the list only has one object and does not return as a list
            var i = json['diagnosis'];
            this.diagnosis.add(FHIRObjectFactory.buildFromJSON('EncounterDiagnosis', i));
          }          
        }
        this.account = List<Reference>();
        if (json['account'] != null && json['account'].length > 0) {
          if( json['account'] is List ){
            json['account'].forEach((i){
              this.account.add(FHIRObjectFactory.buildFromJSON('Reference', i));
            });
          } else {
            // this handles the case when the list only has one object and does not return as a list
            var i = json['account'];
            this.account.add(FHIRObjectFactory.buildFromJSON('Reference', i));
          }          
        }
        this.hospitalization = json['hospitalization'] == null ? null : FHIRObjectFactory.buildFromJSON('EncounterHospitalization', json['hospitalization']);
        this.location = List<EncounterLocation>();
        if (json['location'] != null && json['location'].length > 0) {
          if( json['location'] is List ){
            json['location'].forEach((i){
              this.location.add(FHIRObjectFactory.buildFromJSON('EncounterLocation', i));
            });
          } else {
            // this handles the case when the list only has one object and does not return as a list
            var i = json['location'];
            this.location.add(FHIRObjectFactory.buildFromJSON('EncounterLocation', i));
          }          
        }
        this.serviceProvider = json['serviceProvider'] == null ? null : FHIRObjectFactory.buildFromJSON('Reference', json['serviceProvider']);
        this.partOf = json['partOf'] == null ? null : FHIRObjectFactory.buildFromJSON('Reference', json['partOf']);
    }
}
