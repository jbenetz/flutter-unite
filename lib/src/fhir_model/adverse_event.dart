import 'meta.dart';
import 'fhir_object_factory.dart';
import 'element.dart';
import 'narrative.dart';
import 'extension.dart';
import 'identifier.dart';
import 'codeable_concept.dart';
import 'reference.dart';
import 'adverse_event_suspect_entity.dart';
/// Actual or  potential/avoided event causing unintended physical injury resulting from or contributed to by medical care, a research study or other healthcare setting factors that requires additional monitoring, treatment, or hospitalization, or that results in death.
class AdverseEvent {
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
    /// Business identifiers assigned to this adverse event by the performer or other systems which remain constant as the resource is updated and propagates from server to server.
    Identifier identifier;
    /// Whether the event actually happened, or just had the potential to. Note that this is independent of whether anyone was affected or harmed or how severely.
    String actuality;
    /// Extensions for actuality
    Element extActuality;
    /// The overall type of event, intended for search and filtering purposes.
    List<CodeableConcept> category;
    /// This element defines the specific type of event that occurred or that was prevented from occurring.
    CodeableConcept event;
    /// This subject or group impacted by the event.
    Reference subject;
    /// The Encounter during which AdverseEvent was created or to which the creation of this record is tightly associated.
    Reference encounter;
    /// The date (and perhaps time) when the adverse event occurred.
    DateTime date;
    /// Extensions for date
    Element extDate;
    /// Estimated or actual date the AdverseEvent began, in the opinion of the reporter.
    DateTime detected;
    /// Extensions for detected
    Element extDetected;
    /// The date on which the existence of the AdverseEvent was first recorded.
    DateTime recordedDate;
    /// Extensions for recordedDate
    Element extRecordedDate;
    /// Includes information about the reaction that occurred as a result of exposure to a substance (for example, a drug or a chemical).
    List<Reference> resultingCondition;
    /// The information about where the adverse event occurred.
    Reference location;
    /// Assessment whether this event was of real importance.
    CodeableConcept seriousness;
    /// Describes the severity of the adverse event, in relation to the subject. Contrast to AdverseEvent.seriousness - a severe rash might not be serious, but a mild heart problem is.
    CodeableConcept severity;
    /// Describes the type of outcome from the adverse event.
    CodeableConcept outcome;
    /// Information on who recorded the adverse event.  May be the patient or a practitioner.
    Reference recorder;
    /// Parties that may or should contribute or have contributed information to the adverse event, which can consist of one or more activities.  Such information includes information leading to the decision to perform the activity and how to perform the activity (e.g. consultant), information that the activity itself seeks to reveal (e.g. informant of clinical history), or information about what activity was performed (e.g. informant witness).
    List<Reference> contributor;
    /// Describes the entity that is suspected to have caused the adverse event.
    List<AdverseEventSuspectEntity> suspectEntity;
    /// AdverseEvent.subjectMedicalHistory.
    List<Reference> subjectMedicalHistory;
    /// AdverseEvent.referenceDocument.
    List<Reference> referenceDocument;
    /// AdverseEvent.study.
    List<Reference> study;
 
    AdverseEvent.fromJSON( Map json ){
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
        this.identifier = json['identifier'] == null ? null : FHIRObjectFactory.buildFromJSON('Identifier', json['identifier']);
        this.actuality = json['actuality'];
        this.extActuality = json['_actuality'] == null ? null : FHIRObjectFactory.buildFromJSON('Element', json['_actuality']);
        this.category = List<CodeableConcept>();
        if (json['category'] != null && json['category'].length > 0) {
          if( json['category'] is List ){
            json['category'].forEach((i){
              this.category.add(FHIRObjectFactory.buildFromJSON('CodeableConcept', i));
            });
          } else {
            // this handles the case when the list only has one object and does not return as a list
            var i = json['category'];
            this.category.add(FHIRObjectFactory.buildFromJSON('CodeableConcept', i));
          }          
        }
        this.event = json['event'] == null ? null : FHIRObjectFactory.buildFromJSON('CodeableConcept', json['event']);
        this.subject = json['subject'] == null ? null : FHIRObjectFactory.buildFromJSON('Reference', json['subject']);
        this.encounter = json['encounter'] == null ? null : FHIRObjectFactory.buildFromJSON('Reference', json['encounter']);
        if( json['date'] != null ) { this.date = DateTime.parse(json['date']);}
        this.extDate = json['_date'] == null ? null : FHIRObjectFactory.buildFromJSON('Element', json['_date']);
        if( json['detected'] != null ) { this.detected = DateTime.parse(json['detected']);}
        this.extDetected = json['_detected'] == null ? null : FHIRObjectFactory.buildFromJSON('Element', json['_detected']);
        if( json['recordedDate'] != null ) { this.recordedDate = DateTime.parse(json['recordedDate']);}
        this.extRecordedDate = json['_recordedDate'] == null ? null : FHIRObjectFactory.buildFromJSON('Element', json['_recordedDate']);
        this.resultingCondition = List<Reference>();
        if (json['resultingCondition'] != null && json['resultingCondition'].length > 0) {
          if( json['resultingCondition'] is List ){
            json['resultingCondition'].forEach((i){
              this.resultingCondition.add(FHIRObjectFactory.buildFromJSON('Reference', i));
            });
          } else {
            // this handles the case when the list only has one object and does not return as a list
            var i = json['resultingCondition'];
            this.resultingCondition.add(FHIRObjectFactory.buildFromJSON('Reference', i));
          }          
        }
        this.location = json['location'] == null ? null : FHIRObjectFactory.buildFromJSON('Reference', json['location']);
        this.seriousness = json['seriousness'] == null ? null : FHIRObjectFactory.buildFromJSON('CodeableConcept', json['seriousness']);
        this.severity = json['severity'] == null ? null : FHIRObjectFactory.buildFromJSON('CodeableConcept', json['severity']);
        this.outcome = json['outcome'] == null ? null : FHIRObjectFactory.buildFromJSON('CodeableConcept', json['outcome']);
        this.recorder = json['recorder'] == null ? null : FHIRObjectFactory.buildFromJSON('Reference', json['recorder']);
        this.contributor = List<Reference>();
        if (json['contributor'] != null && json['contributor'].length > 0) {
          if( json['contributor'] is List ){
            json['contributor'].forEach((i){
              this.contributor.add(FHIRObjectFactory.buildFromJSON('Reference', i));
            });
          } else {
            // this handles the case when the list only has one object and does not return as a list
            var i = json['contributor'];
            this.contributor.add(FHIRObjectFactory.buildFromJSON('Reference', i));
          }          
        }
        this.suspectEntity = List<AdverseEventSuspectEntity>();
        if (json['suspectEntity'] != null && json['suspectEntity'].length > 0) {
          if( json['suspectEntity'] is List ){
            json['suspectEntity'].forEach((i){
              this.suspectEntity.add(FHIRObjectFactory.buildFromJSON('AdverseEventSuspectEntity', i));
            });
          } else {
            // this handles the case when the list only has one object and does not return as a list
            var i = json['suspectEntity'];
            this.suspectEntity.add(FHIRObjectFactory.buildFromJSON('AdverseEventSuspectEntity', i));
          }          
        }
        this.subjectMedicalHistory = List<Reference>();
        if (json['subjectMedicalHistory'] != null && json['subjectMedicalHistory'].length > 0) {
          if( json['subjectMedicalHistory'] is List ){
            json['subjectMedicalHistory'].forEach((i){
              this.subjectMedicalHistory.add(FHIRObjectFactory.buildFromJSON('Reference', i));
            });
          } else {
            // this handles the case when the list only has one object and does not return as a list
            var i = json['subjectMedicalHistory'];
            this.subjectMedicalHistory.add(FHIRObjectFactory.buildFromJSON('Reference', i));
          }          
        }
        this.referenceDocument = List<Reference>();
        if (json['referenceDocument'] != null && json['referenceDocument'].length > 0) {
          if( json['referenceDocument'] is List ){
            json['referenceDocument'].forEach((i){
              this.referenceDocument.add(FHIRObjectFactory.buildFromJSON('Reference', i));
            });
          } else {
            // this handles the case when the list only has one object and does not return as a list
            var i = json['referenceDocument'];
            this.referenceDocument.add(FHIRObjectFactory.buildFromJSON('Reference', i));
          }          
        }
        this.study = List<Reference>();
        if (json['study'] != null && json['study'].length > 0) {
          if( json['study'] is List ){
            json['study'].forEach((i){
              this.study.add(FHIRObjectFactory.buildFromJSON('Reference', i));
            });
          } else {
            // this handles the case when the list only has one object and does not return as a list
            var i = json['study'];
            this.study.add(FHIRObjectFactory.buildFromJSON('Reference', i));
          }          
        }
    }
}
