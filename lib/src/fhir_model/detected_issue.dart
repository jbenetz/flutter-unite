import 'meta.dart';
import 'fhir_object_factory.dart';
import 'element.dart';
import 'narrative.dart';
import 'extension.dart';
import 'identifier.dart';
import 'codeable_concept.dart';
import 'reference.dart';
import 'period.dart';
import 'detected_issue_evidence.dart';
import 'detected_issue_mitigation.dart';
/// Indicates an actual or potential clinical issue with or between one or more active or proposed clinical actions for a patient; e.g. Drug-drug interaction, Ineffective treatment frequency, Procedure-condition conflict, etc.
class DetectedIssue {
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
    /// Business identifier associated with the detected issue record.
    List<Identifier> identifier;
    /// Indicates the status of the detected issue.
    String status;
    /// Extensions for status
    Element extStatus;
    /// Identifies the general type of issue identified.
    CodeableConcept code;
    /// Indicates the degree of importance associated with the identified issue based on the potential impact on the patient.
    String severity;
    /// Extensions for severity
    Element extSeverity;
    /// Indicates the patient whose record the detected issue is associated with.
    Reference patient;
    /// Extensions for identifiedDateTime
    Element extIdentifiedDateTime;
    /// The date or period when the detected issue was initially identified.
    Period identifiedPeriod;
    /// Individual or device responsible for the issue being raised.  For example, a decision support application or a pharmacist conducting a medication review.
    Reference author;
    /// Indicates the resource representing the current activity or proposed activity that is potentially problematic.
    List<Reference> implicated;
    /// Supporting evidence or manifestations that provide the basis for identifying the detected issue such as a GuidanceResponse or MeasureReport.
    List<DetectedIssueEvidence> evidence;
    /// A textual explanation of the detected issue.
    String detail;
    /// Extensions for detail
    Element extDetail;
    /// The literature, knowledge-base or similar reference that describes the propensity for the detected issue identified.
    String reference;
    /// Extensions for reference
    Element extReference;
    /// Indicates an action that has been taken or is committed to reduce or eliminate the likelihood of the risk identified by the detected issue from manifesting.  Can also reflect an observation of known mitigating factors that may reduce/eliminate the need for any action.
    List<DetectedIssueMitigation> mitigation;
 
    DetectedIssue.fromJSON( Map json ){
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
        this.code = json['code'] == null ? null : FHIRObjectFactory.buildFromJSON('CodeableConcept', json['code']);
        this.severity = json['severity'];
        this.extSeverity = json['_severity'] == null ? null : FHIRObjectFactory.buildFromJSON('Element', json['_severity']);
        this.patient = json['patient'] == null ? null : FHIRObjectFactory.buildFromJSON('Reference', json['patient']);
        this.extIdentifiedDateTime = json['_identifiedDateTime'] == null ? null : FHIRObjectFactory.buildFromJSON('Element', json['_identifiedDateTime']);
        this.identifiedPeriod = json['identifiedPeriod'] == null ? null : FHIRObjectFactory.buildFromJSON('Period', json['identifiedPeriod']);
        this.author = json['author'] == null ? null : FHIRObjectFactory.buildFromJSON('Reference', json['author']);
        this.implicated = List<Reference>();
        if (json['implicated'] != null && json['implicated'].length > 0) {
          if( json['implicated'] is List ){
            json['implicated'].forEach((i){
              this.implicated.add(FHIRObjectFactory.buildFromJSON('Reference', i));
            });
          } else {
            // this handles the case when the list only has one object and does not return as a list
            var i = json['implicated'];
            this.implicated.add(FHIRObjectFactory.buildFromJSON('Reference', i));
          }          
        }
        this.evidence = List<DetectedIssueEvidence>();
        if (json['evidence'] != null && json['evidence'].length > 0) {
          if( json['evidence'] is List ){
            json['evidence'].forEach((i){
              this.evidence.add(FHIRObjectFactory.buildFromJSON('DetectedIssueEvidence', i));
            });
          } else {
            // this handles the case when the list only has one object and does not return as a list
            var i = json['evidence'];
            this.evidence.add(FHIRObjectFactory.buildFromJSON('DetectedIssueEvidence', i));
          }          
        }
        this.detail = json['detail'];
        this.extDetail = json['_detail'] == null ? null : FHIRObjectFactory.buildFromJSON('Element', json['_detail']);
        this.reference = json['reference'];
        this.extReference = json['_reference'] == null ? null : FHIRObjectFactory.buildFromJSON('Element', json['_reference']);
        this.mitigation = List<DetectedIssueMitigation>();
        if (json['mitigation'] != null && json['mitigation'].length > 0) {
          if( json['mitigation'] is List ){
            json['mitigation'].forEach((i){
              this.mitigation.add(FHIRObjectFactory.buildFromJSON('DetectedIssueMitigation', i));
            });
          } else {
            // this handles the case when the list only has one object and does not return as a list
            var i = json['mitigation'];
            this.mitigation.add(FHIRObjectFactory.buildFromJSON('DetectedIssueMitigation', i));
          }          
        }
    }
}
