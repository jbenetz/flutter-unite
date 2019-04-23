import 'meta.dart';
import 'fhir_object_factory.dart';
import 'element.dart';
import 'narrative.dart';
import 'extension.dart';
import 'identifier.dart';
import 'reference.dart';
import 'codeable_concept.dart';
import 'period.dart';
import 'risk_assessment_prediction.dart';
import 'annotation.dart';
/// An assessment of the likely outcome(s) for a patient or other subject as well as the likelihood of each outcome.
class RiskAssessment {
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
    /// Business identifier assigned to the risk assessment.
    List<Identifier> identifier;
    /// A reference to the request that is fulfilled by this risk assessment.
    Reference basedOn;
    /// A reference to a resource that this risk assessment is part of, such as a Procedure.
    Reference parent;
    /// The status of the RiskAssessment, using the same statuses as an Observation.
    String status;
    /// Extensions for status
    Element extStatus;
    /// The algorithm, process or mechanism used to evaluate the risk.
    CodeableConcept method;
    /// The type of the risk assessment performed.
    CodeableConcept code;
    /// The patient or group the risk assessment applies to.
    Reference subject;
    /// The encounter where the assessment was performed.
    Reference encounter;
    /// Extensions for occurrenceDateTime
    Element extOccurrenceDateTime;
    /// The date (and possibly time) the risk assessment was performed.
    Period occurrencePeriod;
    /// For assessments or prognosis specific to a particular condition, indicates the condition being assessed.
    Reference condition;
    /// The provider or software application that performed the assessment.
    Reference performer;
    /// The reason the risk assessment was performed.
    List<CodeableConcept> reasonCode;
    /// Resources supporting the reason the risk assessment was performed.
    List<Reference> reasonReference;
    /// Indicates the source data considered as part of the assessment (for example, FamilyHistory, Observations, Procedures, Conditions, etc.).
    List<Reference> basis;
    /// Describes the expected outcome for the subject.
    List<RiskAssessmentPrediction> prediction;
    /// A description of the steps that might be taken to reduce the identified risk(s).
    String mitigation;
    /// Extensions for mitigation
    Element extMitigation;
    /// Additional comments about the risk assessment.
    List<Annotation> note;
 
    RiskAssessment.fromJSON( Map json ){
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
        this.basedOn = json['basedOn'] == null ? null : FHIRObjectFactory.buildFromJSON('Reference', json['basedOn']);
        this.parent = json['parent'] == null ? null : FHIRObjectFactory.buildFromJSON('Reference', json['parent']);
        this.status = json['status'];
        this.extStatus = json['_status'] == null ? null : FHIRObjectFactory.buildFromJSON('Element', json['_status']);
        this.method = json['method'] == null ? null : FHIRObjectFactory.buildFromJSON('CodeableConcept', json['method']);
        this.code = json['code'] == null ? null : FHIRObjectFactory.buildFromJSON('CodeableConcept', json['code']);
        this.subject = json['subject'] == null ? null : FHIRObjectFactory.buildFromJSON('Reference', json['subject']);
        this.encounter = json['encounter'] == null ? null : FHIRObjectFactory.buildFromJSON('Reference', json['encounter']);
        this.extOccurrenceDateTime = json['_occurrenceDateTime'] == null ? null : FHIRObjectFactory.buildFromJSON('Element', json['_occurrenceDateTime']);
        this.occurrencePeriod = json['occurrencePeriod'] == null ? null : FHIRObjectFactory.buildFromJSON('Period', json['occurrencePeriod']);
        this.condition = json['condition'] == null ? null : FHIRObjectFactory.buildFromJSON('Reference', json['condition']);
        this.performer = json['performer'] == null ? null : FHIRObjectFactory.buildFromJSON('Reference', json['performer']);
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
        this.basis = List<Reference>();
        if (json['basis'] != null && json['basis'].length > 0) {
          if( json['basis'] is List ){
            json['basis'].forEach((i){
              this.basis.add(FHIRObjectFactory.buildFromJSON('Reference', i));
            });
          } else {
            // this handles the case when the list only has one object and does not return as a list
            var i = json['basis'];
            this.basis.add(FHIRObjectFactory.buildFromJSON('Reference', i));
          }          
        }
        this.prediction = List<RiskAssessmentPrediction>();
        if (json['prediction'] != null && json['prediction'].length > 0) {
          if( json['prediction'] is List ){
            json['prediction'].forEach((i){
              this.prediction.add(FHIRObjectFactory.buildFromJSON('RiskAssessmentPrediction', i));
            });
          } else {
            // this handles the case when the list only has one object and does not return as a list
            var i = json['prediction'];
            this.prediction.add(FHIRObjectFactory.buildFromJSON('RiskAssessmentPrediction', i));
          }          
        }
        this.mitigation = json['mitigation'];
        this.extMitigation = json['_mitigation'] == null ? null : FHIRObjectFactory.buildFromJSON('Element', json['_mitigation']);
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
