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
import 'annotation.dart';
import 'allergy_intolerance_reaction.dart';
/// Risk of harmful or undesirable, physiological response which is unique to an individual and associated with exposure to a substance.
class AllergyIntolerance {
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
    /// Business identifiers assigned to this AllergyIntolerance by the performer or other systems which remain constant as the resource is updated and propagates from server to server.
    List<Identifier> identifier;
    /// The clinical status of the allergy or intolerance.
    CodeableConcept clinicalStatus;
    /// Assertion about certainty associated with the propensity, or potential risk, of a reaction to the identified substance (including pharmaceutical product).
    CodeableConcept verificationStatus;
    /// Identification of the underlying physiological mechanism for the reaction risk.
    String type;
    /// Extensions for type
    Element extType;
    /// Extensions for category
    List<Element> extCategory;
    /// Estimate of the potential clinical harm, or seriousness, of the reaction to the identified substance.
    String criticality;
    /// Extensions for criticality
    Element extCriticality;
    /// Code for an allergy or intolerance statement (either a positive or a negated/excluded statement).  This may be a code for a substance or pharmaceutical product that is considered to be responsible for the adverse reaction risk (e.g., "Latex"), an allergy or intolerance condition (e.g., "Latex allergy"), or a negated/excluded code for a specific substance or class (e.g., "No latex allergy") or a general or categorical negated statement (e.g.,  "No known allergy", "No known drug allergies").  Note: the substance for a specific reaction may be different from the substance identified as the cause of the risk, but it must be consistent with it. For instance, it may be a more specific substance (e.g. a brand medication) or a composite product that includes the identified substance. It must be clinically safe to only process the 'code' and ignore the 'reaction.substance'.  If a receiving system is unable to confirm that AllergyIntolerance.reaction.substance falls within the semantic scope of AllergyIntolerance.code, then the receiving system should ignore AllergyIntolerance.reaction.substance.
    CodeableConcept code;
    /// The patient who has the allergy or intolerance.
    Reference patient;
    /// The encounter when the allergy or intolerance was asserted.
    Reference encounter;
    /// Extensions for onsetDateTime
    Element extOnsetDateTime;
    /// Estimated or actual date,  date-time, or age when allergy or intolerance was identified.
    Age onsetAge;
    /// Estimated or actual date,  date-time, or age when allergy or intolerance was identified.
    Period onsetPeriod;
    /// Estimated or actual date,  date-time, or age when allergy or intolerance was identified.
    Range onsetRange;
    /// Extensions for onsetString
    Element extOnsetString;
    /// The recordedDate represents when this particular AllergyIntolerance record was created in the system, which is often a system-generated date.
    DateTime recordedDate;
    /// Extensions for recordedDate
    Element extRecordedDate;
    /// Individual who recorded the record and takes responsibility for its content.
    Reference recorder;
    /// The source of the information about the allergy that is recorded.
    Reference asserter;
    /// Represents the date and/or time of the last known occurrence of a reaction event.
    DateTime lastOccurrence;
    /// Extensions for lastOccurrence
    Element extLastOccurrence;
    /// Additional narrative about the propensity for the Adverse Reaction, not captured in other fields.
    List<Annotation> note;
    /// Details about each adverse reaction event linked to exposure to the identified substance.
    List<AllergyIntoleranceReaction> reaction;
 
    AllergyIntolerance.fromJSON( Map json ){
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
        this.type = json['type'];
        this.extType = json['_type'] == null ? null : FHIRObjectFactory.buildFromJSON('Element', json['_type']);
        this.extCategory = List<Element>();
        if (json['_category'] != null && json['_category'].length > 0) {
          if( json['_category'] is List ){
            json['_category'].forEach((i){
              this.extCategory.add(FHIRObjectFactory.buildFromJSON('Element', i));
            });
          } else {
            // this handles the case when the list only has one object and does not return as a list
            var i = json['_category'];
            this.extCategory.add(FHIRObjectFactory.buildFromJSON('Element', i));
          }          
        }
        this.criticality = json['criticality'];
        this.extCriticality = json['_criticality'] == null ? null : FHIRObjectFactory.buildFromJSON('Element', json['_criticality']);
        this.code = json['code'] == null ? null : FHIRObjectFactory.buildFromJSON('CodeableConcept', json['code']);
        this.patient = json['patient'] == null ? null : FHIRObjectFactory.buildFromJSON('Reference', json['patient']);
        this.encounter = json['encounter'] == null ? null : FHIRObjectFactory.buildFromJSON('Reference', json['encounter']);
        this.extOnsetDateTime = json['_onsetDateTime'] == null ? null : FHIRObjectFactory.buildFromJSON('Element', json['_onsetDateTime']);
        this.onsetAge = json['onsetAge'] == null ? null : FHIRObjectFactory.buildFromJSON('Age', json['onsetAge']);
        this.onsetPeriod = json['onsetPeriod'] == null ? null : FHIRObjectFactory.buildFromJSON('Period', json['onsetPeriod']);
        this.onsetRange = json['onsetRange'] == null ? null : FHIRObjectFactory.buildFromJSON('Range', json['onsetRange']);
        this.extOnsetString = json['_onsetString'] == null ? null : FHIRObjectFactory.buildFromJSON('Element', json['_onsetString']);
        if( json['recordedDate'] != null ) { this.recordedDate = DateTime.parse(json['recordedDate']);}
        this.extRecordedDate = json['_recordedDate'] == null ? null : FHIRObjectFactory.buildFromJSON('Element', json['_recordedDate']);
        this.recorder = json['recorder'] == null ? null : FHIRObjectFactory.buildFromJSON('Reference', json['recorder']);
        this.asserter = json['asserter'] == null ? null : FHIRObjectFactory.buildFromJSON('Reference', json['asserter']);
        if( json['lastOccurrence'] != null ) { this.lastOccurrence = DateTime.parse(json['lastOccurrence']);}
        this.extLastOccurrence = json['_lastOccurrence'] == null ? null : FHIRObjectFactory.buildFromJSON('Element', json['_lastOccurrence']);
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
        this.reaction = List<AllergyIntoleranceReaction>();
        if (json['reaction'] != null && json['reaction'].length > 0) {
          if( json['reaction'] is List ){
            json['reaction'].forEach((i){
              this.reaction.add(FHIRObjectFactory.buildFromJSON('AllergyIntoleranceReaction', i));
            });
          } else {
            // this handles the case when the list only has one object and does not return as a list
            var i = json['reaction'];
            this.reaction.add(FHIRObjectFactory.buildFromJSON('AllergyIntoleranceReaction', i));
          }          
        }
    }
}
