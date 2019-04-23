import 'meta.dart';
import 'fhir_object_factory.dart';
import 'element.dart';
import 'narrative.dart';
import 'extension.dart';
import 'identifier.dart';
import 'codeable_concept.dart';
import 'reference.dart';
import 'age.dart';
import 'period.dart';
import 'range.dart';
import 'condition_stage.dart';
import 'condition_evidence.dart';
import 'annotation.dart';
/// A clinical condition, problem, diagnosis, or other event, situation, issue, or clinical concept that has risen to a level of concern.
class Condition {
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
    /// Business identifiers assigned to this condition by the performer or other systems which remain constant as the resource is updated and propagates from server to server.
    List<Identifier> identifier;
    /// The clinical status of the condition.
    CodeableConcept clinicalStatus;
    /// The verification status to support the clinical status of the condition.
    CodeableConcept verificationStatus;
    /// A category assigned to the condition.
    List<CodeableConcept> category;
    /// A subjective assessment of the severity of the condition as evaluated by the clinician.
    CodeableConcept severity;
    /// Identification of the condition, problem or diagnosis.
    CodeableConcept code;
    /// The anatomical location where this condition manifests itself.
    List<CodeableConcept> bodySite;
    /// Indicates the patient or group who the condition record is associated with.
    Reference subject;
    /// The Encounter during which this Condition was created or to which the creation of this record is tightly associated.
    Reference encounter;
    /// Extensions for onsetDateTime
    Element extOnsetDateTime;
    /// Estimated or actual date or date-time  the condition began, in the opinion of the clinician.
    Age onsetAge;
    /// Estimated or actual date or date-time  the condition began, in the opinion of the clinician.
    Period onsetPeriod;
    /// Estimated or actual date or date-time  the condition began, in the opinion of the clinician.
    Range onsetRange;
    /// Extensions for onsetString
    Element extOnsetString;
    /// Extensions for abatementDateTime
    Element extAbatementDateTime;
    /// The date or estimated date that the condition resolved or went into remission. This is called "abatement" because of the many overloaded connotations associated with "remission" or "resolution" - Conditions are never really resolved, but they can abate.
    Age abatementAge;
    /// The date or estimated date that the condition resolved or went into remission. This is called "abatement" because of the many overloaded connotations associated with "remission" or "resolution" - Conditions are never really resolved, but they can abate.
    Period abatementPeriod;
    /// The date or estimated date that the condition resolved or went into remission. This is called "abatement" because of the many overloaded connotations associated with "remission" or "resolution" - Conditions are never really resolved, but they can abate.
    Range abatementRange;
    /// Extensions for abatementString
    Element extAbatementString;
    /// The recordedDate represents when this particular Condition record was created in the system, which is often a system-generated date.
    DateTime recordedDate;
    /// Extensions for recordedDate
    Element extRecordedDate;
    /// Individual who recorded the record and takes responsibility for its content.
    Reference recorder;
    /// Individual who is making the condition statement.
    Reference asserter;
    /// Clinical stage or grade of a condition. May include formal severity assessments.
    List<ConditionStage> stage;
    /// Supporting evidence / manifestations that are the basis of the Condition's verification status, such as evidence that confirmed or refuted the condition.
    List<ConditionEvidence> evidence;
    /// Additional information about the Condition. This is a general notes/comments entry  for description of the Condition, its diagnosis and prognosis.
    List<Annotation> note;
 
    Condition.fromJSON( Map json ){
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
        this.clinicalStatus = json['clinicalStatus'] == null ? null : FHIRObjectFactory.buildFromJSON('CodeableConcept', json['clinicalStatus']);
        this.verificationStatus = json['verificationStatus'] == null ? null : FHIRObjectFactory.buildFromJSON('CodeableConcept', json['verificationStatus']);
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
        this.severity = json['severity'] == null ? null : FHIRObjectFactory.buildFromJSON('CodeableConcept', json['severity']);
        this.code = json['code'] == null ? null : FHIRObjectFactory.buildFromJSON('CodeableConcept', json['code']);
        this.bodySite = List<CodeableConcept>();
        if (json['bodySite'] != null && json['bodySite'].length > 0) {
          if( json['bodySite'] is List ){
            json['bodySite'].forEach((i){
              this.bodySite.add(FHIRObjectFactory.buildFromJSON('CodeableConcept', i));
            });
          } else {
            // this handles the case when the list only has one object and does not return as a list
            var i = json['bodySite'];
            this.bodySite.add(FHIRObjectFactory.buildFromJSON('CodeableConcept', i));
          }          
        }
        this.subject = json['subject'] == null ? null : FHIRObjectFactory.buildFromJSON('Reference', json['subject']);
        this.encounter = json['encounter'] == null ? null : FHIRObjectFactory.buildFromJSON('Reference', json['encounter']);
        this.extOnsetDateTime = json['_onsetDateTime'] == null ? null : FHIRObjectFactory.buildFromJSON('Element', json['_onsetDateTime']);
        this.onsetAge = json['onsetAge'] == null ? null : FHIRObjectFactory.buildFromJSON('Age', json['onsetAge']);
        this.onsetPeriod = json['onsetPeriod'] == null ? null : FHIRObjectFactory.buildFromJSON('Period', json['onsetPeriod']);
        this.onsetRange = json['onsetRange'] == null ? null : FHIRObjectFactory.buildFromJSON('Range', json['onsetRange']);
        this.extOnsetString = json['_onsetString'] == null ? null : FHIRObjectFactory.buildFromJSON('Element', json['_onsetString']);
        this.extAbatementDateTime = json['_abatementDateTime'] == null ? null : FHIRObjectFactory.buildFromJSON('Element', json['_abatementDateTime']);
        this.abatementAge = json['abatementAge'] == null ? null : FHIRObjectFactory.buildFromJSON('Age', json['abatementAge']);
        this.abatementPeriod = json['abatementPeriod'] == null ? null : FHIRObjectFactory.buildFromJSON('Period', json['abatementPeriod']);
        this.abatementRange = json['abatementRange'] == null ? null : FHIRObjectFactory.buildFromJSON('Range', json['abatementRange']);
        this.extAbatementString = json['_abatementString'] == null ? null : FHIRObjectFactory.buildFromJSON('Element', json['_abatementString']);
        if( json['recordedDate'] != null ) { this.recordedDate = DateTime.parse(json['recordedDate']);}
        this.extRecordedDate = json['_recordedDate'] == null ? null : FHIRObjectFactory.buildFromJSON('Element', json['_recordedDate']);
        this.recorder = json['recorder'] == null ? null : FHIRObjectFactory.buildFromJSON('Reference', json['recorder']);
        this.asserter = json['asserter'] == null ? null : FHIRObjectFactory.buildFromJSON('Reference', json['asserter']);
        this.stage = List<ConditionStage>();
        if (json['stage'] != null && json['stage'].length > 0) {
          if( json['stage'] is List ){
            json['stage'].forEach((i){
              this.stage.add(FHIRObjectFactory.buildFromJSON('ConditionStage', i));
            });
          } else {
            // this handles the case when the list only has one object and does not return as a list
            var i = json['stage'];
            this.stage.add(FHIRObjectFactory.buildFromJSON('ConditionStage', i));
          }          
        }
        this.evidence = List<ConditionEvidence>();
        if (json['evidence'] != null && json['evidence'].length > 0) {
          if( json['evidence'] is List ){
            json['evidence'].forEach((i){
              this.evidence.add(FHIRObjectFactory.buildFromJSON('ConditionEvidence', i));
            });
          } else {
            // this handles the case when the list only has one object and does not return as a list
            var i = json['evidence'];
            this.evidence.add(FHIRObjectFactory.buildFromJSON('ConditionEvidence', i));
          }          
        }
        this.note = List<Annotation>();
        if (json['note'] != null && json['note'].length > 0) {
          if( json['note'] is List ){
            json['note'].forEach((i){
              this.note.add(FHIRObjectFactory.buildFromJSON('Annotation', i));
            });
          } else {
            // this handles the case when the list only has one object and does not return as a list
            var i = json['note'];
            this.note.add(FHIRObjectFactory.buildFromJSON('Annotation', i));
          }          
        }
    }
}
