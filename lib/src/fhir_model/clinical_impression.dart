import 'meta.dart';
import 'fhir_object_factory.dart';
import 'element.dart';
import 'narrative.dart';
import 'extension.dart';
import 'identifier.dart';
import 'codeable_concept.dart';
import 'reference.dart';
import 'period.dart';
import 'clinical_impression_investigation.dart';
import 'clinical_impression_finding.dart';
import 'annotation.dart';
/// A record of a clinical assessment performed to determine what problem(s) may affect the patient and before planning the treatments or management strategies that are best to manage a patient's condition. Assessments are often 1:1 with a clinical consultation / encounter,  but this varies greatly depending on the clinical workflow. This resource is called "ClinicalImpression" rather than "ClinicalAssessment" to avoid confusion with the recording of assessment tools such as Apgar score.
class ClinicalImpression {
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
    /// Business identifiers assigned to this clinical impression by the performer or other systems which remain constant as the resource is updated and propagates from server to server.
    List<Identifier> identifier;
    /// Identifies the workflow status of the assessment.
    String status;
    /// Extensions for status
    Element extStatus;
    /// Captures the reason for the current state of the ClinicalImpression.
    CodeableConcept statusReason;
    /// Categorizes the type of clinical assessment performed.
    CodeableConcept code;
    /// A summary of the context and/or cause of the assessment - why / where it was performed, and what patient events/status prompted it.
    String description;
    /// Extensions for description
    Element extDescription;
    /// The patient or group of individuals assessed as part of this record.
    Reference subject;
    /// The Encounter during which this ClinicalImpression was created or to which the creation of this record is tightly associated.
    Reference encounter;
    /// Extensions for effectiveDateTime
    Element extEffectiveDateTime;
    /// The point in time or period over which the subject was assessed.
    Period effectivePeriod;
    /// Indicates when the documentation of the assessment was complete.
    DateTime date;
    /// Extensions for date
    Element extDate;
    /// The clinician performing the assessment.
    Reference assessor;
    /// A reference to the last assessment that was conducted on this patient. Assessments are often/usually ongoing in nature; a care provider (practitioner or team) will make new assessments on an ongoing basis as new data arises or the patient's conditions changes.
    Reference previous;
    /// A list of the relevant problems/conditions for a patient.
    List<Reference> problem;
    /// One or more sets of investigations (signs, symptoms, etc.). The actual grouping of investigations varies greatly depending on the type and context of the assessment. These investigations may include data generated during the assessment process, or data previously generated and recorded that is pertinent to the outcomes.
    List<ClinicalImpressionInvestigation> investigation;
    /// Reference to a specific published clinical protocol that was followed during this assessment, and/or that provides evidence in support of the diagnosis.
    List<String> protocol;
    /// Extensions for protocol
    List<Element> extProtocol;
    /// A text summary of the investigations and the diagnosis.
    String summary;
    /// Extensions for summary
    Element extSummary;
    /// Specific findings or diagnoses that were considered likely or relevant to ongoing treatment.
    List<ClinicalImpressionFinding> finding;
    /// Estimate of likely outcome.
    List<CodeableConcept> prognosisCodeableConcept;
    /// RiskAssessment expressing likely outcome.
    List<Reference> prognosisReference;
    /// Information supporting the clinical impression.
    List<Reference> supportingInfo;
    /// Commentary about the impression, typically recorded after the impression itself was made, though supplemental notes by the original author could also appear.
    List<Annotation> note;
 
    ClinicalImpression.fromJSON( Map json ){
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
        this.statusReason = json['statusReason'] == null ? null : FHIRObjectFactory.buildFromJSON('CodeableConcept', json['statusReason']);
        this.code = json['code'] == null ? null : FHIRObjectFactory.buildFromJSON('CodeableConcept', json['code']);
        this.description = json['description'];
        this.extDescription = json['_description'] == null ? null : FHIRObjectFactory.buildFromJSON('Element', json['_description']);
        this.subject = json['subject'] == null ? null : FHIRObjectFactory.buildFromJSON('Reference', json['subject']);
        this.encounter = json['encounter'] == null ? null : FHIRObjectFactory.buildFromJSON('Reference', json['encounter']);
        this.extEffectiveDateTime = json['_effectiveDateTime'] == null ? null : FHIRObjectFactory.buildFromJSON('Element', json['_effectiveDateTime']);
        this.effectivePeriod = json['effectivePeriod'] == null ? null : FHIRObjectFactory.buildFromJSON('Period', json['effectivePeriod']);
        if( json['date'] != null ) { this.date = DateTime.parse(json['date']);}
        this.extDate = json['_date'] == null ? null : FHIRObjectFactory.buildFromJSON('Element', json['_date']);
        this.assessor = json['assessor'] == null ? null : FHIRObjectFactory.buildFromJSON('Reference', json['assessor']);
        this.previous = json['previous'] == null ? null : FHIRObjectFactory.buildFromJSON('Reference', json['previous']);
        this.problem = List<Reference>();
        if (json['problem'] != null && json['problem'].length > 0) {
          if( json['problem'] is List ){
            json['problem'].forEach((i){
              this.problem.add(FHIRObjectFactory.buildFromJSON('Reference', i));
            });
          } else {
            // this handles the case when the list only has one object and does not return as a list
            var i = json['problem'];
            this.problem.add(FHIRObjectFactory.buildFromJSON('Reference', i));
          }          
        }
        this.investigation = List<ClinicalImpressionInvestigation>();
        if (json['investigation'] != null && json['investigation'].length > 0) {
          if( json['investigation'] is List ){
            json['investigation'].forEach((i){
              this.investigation.add(FHIRObjectFactory.buildFromJSON('ClinicalImpressionInvestigation', i));
            });
          } else {
            // this handles the case when the list only has one object and does not return as a list
            var i = json['investigation'];
            this.investigation.add(FHIRObjectFactory.buildFromJSON('ClinicalImpressionInvestigation', i));
          }          
        }
        this.protocol = List<String>();
        if (json['protocol'] != null && json['protocol'].length > 0) {
          if( json['protocol'] is List ){
            json['protocol'].forEach((i){
              this.protocol.add(i);
            });
          } else {
            // this handles the case when the list only has one object and does not return as a list
            var i = json['protocol'];
            this.protocol.add(i);
          }          
        }
        this.extProtocol = List<Element>();
        if (json['_protocol'] != null && json['_protocol'].length > 0) {
          if( json['_protocol'] is List ){
            json['_protocol'].forEach((i){
              this.extProtocol.add(FHIRObjectFactory.buildFromJSON('Element', i));
            });
          } else {
            // this handles the case when the list only has one object and does not return as a list
            var i = json['_protocol'];
            this.extProtocol.add(FHIRObjectFactory.buildFromJSON('Element', i));
          }          
        }
        this.summary = json['summary'];
        this.extSummary = json['_summary'] == null ? null : FHIRObjectFactory.buildFromJSON('Element', json['_summary']);
        this.finding = List<ClinicalImpressionFinding>();
        if (json['finding'] != null && json['finding'].length > 0) {
          if( json['finding'] is List ){
            json['finding'].forEach((i){
              this.finding.add(FHIRObjectFactory.buildFromJSON('ClinicalImpressionFinding', i));
            });
          } else {
            // this handles the case when the list only has one object and does not return as a list
            var i = json['finding'];
            this.finding.add(FHIRObjectFactory.buildFromJSON('ClinicalImpressionFinding', i));
          }          
        }
        this.prognosisCodeableConcept = List<CodeableConcept>();
        if (json['prognosisCodeableConcept'] != null && json['prognosisCodeableConcept'].length > 0) {
          if( json['prognosisCodeableConcept'] is List ){
            json['prognosisCodeableConcept'].forEach((i){
              this.prognosisCodeableConcept.add(FHIRObjectFactory.buildFromJSON('CodeableConcept', i));
            });
          } else {
            // this handles the case when the list only has one object and does not return as a list
            var i = json['prognosisCodeableConcept'];
            this.prognosisCodeableConcept.add(FHIRObjectFactory.buildFromJSON('CodeableConcept', i));
          }          
        }
        this.prognosisReference = List<Reference>();
        if (json['prognosisReference'] != null && json['prognosisReference'].length > 0) {
          if( json['prognosisReference'] is List ){
            json['prognosisReference'].forEach((i){
              this.prognosisReference.add(FHIRObjectFactory.buildFromJSON('Reference', i));
            });
          } else {
            // this handles the case when the list only has one object and does not return as a list
            var i = json['prognosisReference'];
            this.prognosisReference.add(FHIRObjectFactory.buildFromJSON('Reference', i));
          }          
        }
        this.supportingInfo = List<Reference>();
        if (json['supportingInfo'] != null && json['supportingInfo'].length > 0) {
          if( json['supportingInfo'] is List ){
            json['supportingInfo'].forEach((i){
              this.supportingInfo.add(FHIRObjectFactory.buildFromJSON('Reference', i));
            });
          } else {
            // this handles the case when the list only has one object and does not return as a list
            var i = json['supportingInfo'];
            this.supportingInfo.add(FHIRObjectFactory.buildFromJSON('Reference', i));
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
