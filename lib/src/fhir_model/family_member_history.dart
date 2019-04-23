import 'meta.dart';
import 'fhir_object_factory.dart';
import 'element.dart';
import 'narrative.dart';
import 'extension.dart';
import 'identifier.dart';
import 'codeable_concept.dart';
import 'reference.dart';
import 'period.dart';
import 'age.dart';
import 'range.dart';
import 'annotation.dart';
import 'family_member_history_condition.dart';
/// Significant health conditions for a person related to the patient relevant in the context of care for the patient.
class FamilyMemberHistory {
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
    /// Business identifiers assigned to this family member history by the performer or other systems which remain constant as the resource is updated and propagates from server to server.
    List<Identifier> identifier;
    /// The URL pointing to a FHIR-defined protocol, guideline, orderset or other definition that is adhered to in whole or in part by this FamilyMemberHistory.
    List<String> instantiatesCanonical;
    /// The URL pointing to an externally maintained protocol, guideline, orderset or other definition that is adhered to in whole or in part by this FamilyMemberHistory.
    List<String> instantiatesUri;
    /// Extensions for instantiatesUri
    List<Element> extInstantiatesUri;
    /// A code specifying the status of the record of the family history of a specific family member.
    String status;
    /// Extensions for status
    Element extStatus;
    /// Describes why the family member's history is not available.
    CodeableConcept dataAbsentReason;
    /// The person who this history concerns.
    Reference patient;
    /// The date (and possibly time) when the family member history was recorded or last updated.
    DateTime date;
    /// Extensions for date
    Element extDate;
    /// This will either be a name or a description; e.g. "Aunt Susan", "my cousin with the red hair".
    String name;
    /// Extensions for name
    Element extName;
    /// The type of relationship this person has to the patient (father, mother, brother etc.).
    CodeableConcept relationship;
    /// The birth sex of the family member.
    CodeableConcept sex;
    /// The actual or approximate date of birth of the relative.
    Period bornPeriod;
    /// Extensions for bornDate
    Element extBornDate;
    /// Extensions for bornString
    Element extBornString;
    /// The age of the relative at the time the family member history is recorded.
    Age ageAge;
    /// The age of the relative at the time the family member history is recorded.
    Range ageRange;
    /// Extensions for ageString
    Element extAgeString;
    /// If true, indicates that the age value specified is an estimated value.
    bool estimatedAge;
    /// Extensions for estimatedAge
    Element extEstimatedAge;
    /// Extensions for deceasedBoolean
    Element extDeceasedBoolean;
    /// Deceased flag or the actual or approximate age of the relative at the time of death for the family member history record.
    Age deceasedAge;
    /// Deceased flag or the actual or approximate age of the relative at the time of death for the family member history record.
    Range deceasedRange;
    /// Extensions for deceasedDate
    Element extDeceasedDate;
    /// Extensions for deceasedString
    Element extDeceasedString;
    /// Describes why the family member history occurred in coded or textual form.
    List<CodeableConcept> reasonCode;
    /// Indicates a Condition, Observation, AllergyIntolerance, or QuestionnaireResponse that justifies this family member history event.
    List<Reference> reasonReference;
    /// This property allows a non condition-specific note to the made about the related person. Ideally, the note would be in the condition property, but this is not always possible.
    List<Annotation> note;
    /// The significant Conditions (or condition) that the family member had. This is a repeating section to allow a system to represent more than one condition per resource, though there is nothing stopping multiple resources - one per condition.
    List<FamilyMemberHistoryCondition> condition;
 
    FamilyMemberHistory.fromJSON( Map json ){
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
        this.instantiatesCanonical = List<String>();
        if (json['instantiatesCanonical'] != null && json['instantiatesCanonical'].length > 0) {
          if( json['instantiatesCanonical'] is List ){
            json['instantiatesCanonical'].forEach((i){
              this.instantiatesCanonical.add(i);
            });
          } else {
            // this handles the case when the list only has one object and does not return as a list
            var i = json['instantiatesCanonical'];
            this.instantiatesCanonical.add(i);
          }          
        }
        this.instantiatesUri = List<String>();
        if (json['instantiatesUri'] != null && json['instantiatesUri'].length > 0) {
          if( json['instantiatesUri'] is List ){
            json['instantiatesUri'].forEach((i){
              this.instantiatesUri.add(i);
            });
          } else {
            // this handles the case when the list only has one object and does not return as a list
            var i = json['instantiatesUri'];
            this.instantiatesUri.add(i);
          }          
        }
        this.extInstantiatesUri = List<Element>();
        if (json['_instantiatesUri'] != null && json['_instantiatesUri'].length > 0) {
          if( json['_instantiatesUri'] is List ){
            json['_instantiatesUri'].forEach((i){
              this.extInstantiatesUri.add(FHIRObjectFactory.buildFromJSON('Element', i));
            });
          } else {
            // this handles the case when the list only has one object and does not return as a list
            var i = json['_instantiatesUri'];
            this.extInstantiatesUri.add(FHIRObjectFactory.buildFromJSON('Element', i));
          }          
        }
        this.status = json['status'];
        this.extStatus = json['_status'] == null ? null : FHIRObjectFactory.buildFromJSON('Element', json['_status']);
        this.dataAbsentReason = json['dataAbsentReason'] == null ? null : FHIRObjectFactory.buildFromJSON('CodeableConcept', json['dataAbsentReason']);
        this.patient = json['patient'] == null ? null : FHIRObjectFactory.buildFromJSON('Reference', json['patient']);
        if( json['date'] != null ) { this.date = DateTime.parse(json['date']);}
        this.extDate = json['_date'] == null ? null : FHIRObjectFactory.buildFromJSON('Element', json['_date']);
        this.name = json['name'];
        this.extName = json['_name'] == null ? null : FHIRObjectFactory.buildFromJSON('Element', json['_name']);
        this.relationship = json['relationship'] == null ? null : FHIRObjectFactory.buildFromJSON('CodeableConcept', json['relationship']);
        this.sex = json['sex'] == null ? null : FHIRObjectFactory.buildFromJSON('CodeableConcept', json['sex']);
        this.bornPeriod = json['bornPeriod'] == null ? null : FHIRObjectFactory.buildFromJSON('Period', json['bornPeriod']);
        this.extBornDate = json['_bornDate'] == null ? null : FHIRObjectFactory.buildFromJSON('Element', json['_bornDate']);
        this.extBornString = json['_bornString'] == null ? null : FHIRObjectFactory.buildFromJSON('Element', json['_bornString']);
        this.ageAge = json['ageAge'] == null ? null : FHIRObjectFactory.buildFromJSON('Age', json['ageAge']);
        this.ageRange = json['ageRange'] == null ? null : FHIRObjectFactory.buildFromJSON('Range', json['ageRange']);
        this.extAgeString = json['_ageString'] == null ? null : FHIRObjectFactory.buildFromJSON('Element', json['_ageString']);
        this.estimatedAge = json['estimatedAge'];
        this.extEstimatedAge = json['_estimatedAge'] == null ? null : FHIRObjectFactory.buildFromJSON('Element', json['_estimatedAge']);
        this.extDeceasedBoolean = json['_deceasedBoolean'] == null ? null : FHIRObjectFactory.buildFromJSON('Element', json['_deceasedBoolean']);
        this.deceasedAge = json['deceasedAge'] == null ? null : FHIRObjectFactory.buildFromJSON('Age', json['deceasedAge']);
        this.deceasedRange = json['deceasedRange'] == null ? null : FHIRObjectFactory.buildFromJSON('Range', json['deceasedRange']);
        this.extDeceasedDate = json['_deceasedDate'] == null ? null : FHIRObjectFactory.buildFromJSON('Element', json['_deceasedDate']);
        this.extDeceasedString = json['_deceasedString'] == null ? null : FHIRObjectFactory.buildFromJSON('Element', json['_deceasedString']);
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
        this.condition = List<FamilyMemberHistoryCondition>();
        if (json['condition'] != null && json['condition'].length > 0) {
          if( json['condition'] is List ){
            json['condition'].forEach((i){
              this.condition.add(FHIRObjectFactory.buildFromJSON('FamilyMemberHistoryCondition', i));
            });
          } else {
            // this handles the case when the list only has one object and does not return as a list
            var i = json['condition'];
            this.condition.add(FHIRObjectFactory.buildFromJSON('FamilyMemberHistoryCondition', i));
          }          
        }
    }
}
