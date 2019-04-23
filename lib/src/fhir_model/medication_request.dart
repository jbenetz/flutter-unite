import 'meta.dart';
import 'fhir_object_factory.dart';
import 'element.dart';
import 'narrative.dart';
import 'extension.dart';
import 'identifier.dart';
import 'codeable_concept.dart';
import 'reference.dart';
import 'annotation.dart';
import 'dosage.dart';
import 'medication_request_dispense_request.dart';
import 'medication_request_substitution.dart';
/// An order or request for both supply of the medication and the instructions for administration of the medication to a patient. The resource is called "MedicationRequest" rather than "MedicationPrescription" or "MedicationOrder" to generalize the use across inpatient and outpatient settings, including care plans, etc., and to harmonize with workflow patterns.
class MedicationRequest {
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
    /// Identifiers associated with this medication request that are defined by business processes and/or used to refer to it when a direct URL reference to the resource itself is not appropriate. They are business identifiers assigned to this resource by the performer or other systems and remain constant as the resource is updated and propagates from server to server.
    List<Identifier> identifier;
    /// A code specifying the current state of the order.  Generally, this will be active or completed state.
    String status;
    /// Extensions for status
    Element extStatus;
    /// Captures the reason for the current state of the MedicationRequest.
    CodeableConcept statusReason;
    /// Whether the request is a proposal, plan, or an original order.
    String intent;
    /// Extensions for intent
    Element extIntent;
    /// Indicates the type of medication request (for example, where the medication is expected to be consumed or administered (i.e. inpatient or outpatient)).
    List<CodeableConcept> category;
    /// Indicates how quickly the Medication Request should be addressed with respect to other requests.
    String priority;
    /// Extensions for priority
    Element extPriority;
    /// If true indicates that the provider is asking for the medication request not to occur.
    bool doNotPerform;
    /// Extensions for doNotPerform
    Element extDoNotPerform;
    /// Extensions for reportedBoolean
    Element extReportedBoolean;
    /// Indicates if this record was captured as a secondary 'reported' record rather than as an original primary source-of-truth record.  It may also indicate the source of the report.
    Reference reportedReference;
    /// Identifies the medication being requested. This is a link to a resource that represents the medication which may be the details of the medication or simply an attribute carrying a code that identifies the medication from a known list of medications.
    CodeableConcept medicationCodeableConcept;
    /// Identifies the medication being requested. This is a link to a resource that represents the medication which may be the details of the medication or simply an attribute carrying a code that identifies the medication from a known list of medications.
    Reference medicationReference;
    /// A link to a resource representing the person or set of individuals to whom the medication will be given.
    Reference subject;
    /// The Encounter during which this [x] was created or to which the creation of this record is tightly associated.
    Reference encounter;
    /// Include additional information (for example, patient height and weight) that supports the ordering of the medication.
    List<Reference> supportingInformation;
    /// The date (and perhaps time) when the prescription was initially written or authored on.
    DateTime authoredOn;
    /// Extensions for authoredOn
    Element extAuthoredOn;
    /// The individual, organization, or device that initiated the request and has responsibility for its activation.
    Reference requester;
    /// The specified desired performer of the medication treatment (e.g. the performer of the medication administration).
    Reference performer;
    /// Indicates the type of performer of the administration of the medication.
    CodeableConcept performerType;
    /// The person who entered the order on behalf of another individual for example in the case of a verbal or a telephone order.
    Reference recorder;
    /// The reason or the indication for ordering or not ordering the medication.
    List<CodeableConcept> reasonCode;
    /// Condition or observation that supports why the medication was ordered.
    List<Reference> reasonReference;
    /// The URL pointing to a protocol, guideline, orderset, or other definition that is adhered to in whole or in part by this MedicationRequest.
    List<String> instantiatesCanonical;
    /// Extensions for instantiatesCanonical
    List<Element> extInstantiatesCanonical;
    /// The URL pointing to an externally maintained protocol, guideline, orderset or other definition that is adhered to in whole or in part by this MedicationRequest.
    List<String> instantiatesUri;
    /// Extensions for instantiatesUri
    List<Element> extInstantiatesUri;
    /// A plan or request that is fulfilled in whole or in part by this medication request.
    List<Reference> basedOn;
    /// A shared identifier common to all requests that were authorized more or less simultaneously by a single author, representing the identifier of the requisition or prescription.
    Identifier groupIdentifier;
    /// The description of the overall patte3rn of the administration of the medication to the patient.
    CodeableConcept courseOfTherapyType;
    /// Insurance plans, coverage extensions, pre-authorizations and/or pre-determinations that may be required for delivering the requested service.
    List<Reference> insurance;
    /// Extra information about the prescription that could not be conveyed by the other attributes.
    List<Annotation> note;
    /// Indicates how the medication is to be used by the patient.
    List<Dosage> dosageInstruction;
    /// Indicates the specific details for the dispense or medication supply part of a medication request (also known as a Medication Prescription or Medication Order).  Note that this information is not always sent with the order.  There may be in some settings (e.g. hospitals) institutional or system support for completing the dispense details in the pharmacy department.
    MedicationRequestDispenseRequest dispenseRequest;
    /// Indicates whether or not substitution can or should be part of the dispense. In some cases, substitution must happen, in other cases substitution must not happen. This block explains the prescriber's intent. If nothing is specified substitution may be done.
    MedicationRequestSubstitution substitution;
    /// A link to a resource representing an earlier order related order or prescription.
    Reference priorPrescription;
    /// Indicates an actual or potential clinical issue with or between one or more active or proposed clinical actions for a patient; e.g. Drug-drug interaction, duplicate therapy, dosage alert etc.
    List<Reference> detectedIssue;
    /// Links to Provenance records for past versions of this resource or fulfilling request or event resources that identify key state transitions or updates that are likely to be relevant to a user looking at the current version of the resource.
    List<Reference> eventHistory;
 
    MedicationRequest.fromJSON( Map json ){
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
        this.intent = json['intent'];
        this.extIntent = json['_intent'] == null ? null : FHIRObjectFactory.buildFromJSON('Element', json['_intent']);
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
        this.priority = json['priority'];
        this.extPriority = json['_priority'] == null ? null : FHIRObjectFactory.buildFromJSON('Element', json['_priority']);
        this.doNotPerform = json['doNotPerform'];
        this.extDoNotPerform = json['_doNotPerform'] == null ? null : FHIRObjectFactory.buildFromJSON('Element', json['_doNotPerform']);
        this.extReportedBoolean = json['_reportedBoolean'] == null ? null : FHIRObjectFactory.buildFromJSON('Element', json['_reportedBoolean']);
        this.reportedReference = json['reportedReference'] == null ? null : FHIRObjectFactory.buildFromJSON('Reference', json['reportedReference']);
        this.medicationCodeableConcept = json['medicationCodeableConcept'] == null ? null : FHIRObjectFactory.buildFromJSON('CodeableConcept', json['medicationCodeableConcept']);
        this.medicationReference = json['medicationReference'] == null ? null : FHIRObjectFactory.buildFromJSON('Reference', json['medicationReference']);
        this.subject = json['subject'] == null ? null : FHIRObjectFactory.buildFromJSON('Reference', json['subject']);
        this.encounter = json['encounter'] == null ? null : FHIRObjectFactory.buildFromJSON('Reference', json['encounter']);
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
        if( json['authoredOn'] != null ) { this.authoredOn = DateTime.parse(json['authoredOn']);}
        this.extAuthoredOn = json['_authoredOn'] == null ? null : FHIRObjectFactory.buildFromJSON('Element', json['_authoredOn']);
        this.requester = json['requester'] == null ? null : FHIRObjectFactory.buildFromJSON('Reference', json['requester']);
        this.performer = json['performer'] == null ? null : FHIRObjectFactory.buildFromJSON('Reference', json['performer']);
        this.performerType = json['performerType'] == null ? null : FHIRObjectFactory.buildFromJSON('CodeableConcept', json['performerType']);
        this.recorder = json['recorder'] == null ? null : FHIRObjectFactory.buildFromJSON('Reference', json['recorder']);
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
        this.extInstantiatesCanonical = List<Element>();
        if (json['_instantiatesCanonical'] != null && json['_instantiatesCanonical'].length > 0) {
          if( json['_instantiatesCanonical'] is List ){
            json['_instantiatesCanonical'].forEach((i){
              this.extInstantiatesCanonical.add(FHIRObjectFactory.buildFromJSON('Element', i));
            });
          } else {
            // this handles the case when the list only has one object and does not return as a list
            var i = json['_instantiatesCanonical'];
            this.extInstantiatesCanonical.add(FHIRObjectFactory.buildFromJSON('Element', i));
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
        this.groupIdentifier = json['groupIdentifier'] == null ? null : FHIRObjectFactory.buildFromJSON('Identifier', json['groupIdentifier']);
        this.courseOfTherapyType = json['courseOfTherapyType'] == null ? null : FHIRObjectFactory.buildFromJSON('CodeableConcept', json['courseOfTherapyType']);
        this.insurance = List<Reference>();
        if (json['insurance'] != null && json['insurance'].length > 0) {
          if( json['insurance'] is List ){
            json['insurance'].forEach((i){
              this.insurance.add(FHIRObjectFactory.buildFromJSON('Reference', i));
            });
          } else {
            // this handles the case when the list only has one object and does not return as a list
            var i = json['insurance'];
            this.insurance.add(FHIRObjectFactory.buildFromJSON('Reference', i));
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
        this.dosageInstruction = List<Dosage>();
        if (json['dosageInstruction'] != null && json['dosageInstruction'].length > 0) {
          if( json['dosageInstruction'] is List ){
            json['dosageInstruction'].forEach((i){
              this.dosageInstruction.add(FHIRObjectFactory.buildFromJSON('Dosage', i));
            });
          } else {
            // this handles the case when the list only has one object and does not return as a list
            var i = json['dosageInstruction'];
            this.dosageInstruction.add(FHIRObjectFactory.buildFromJSON('Dosage', i));
          }          
        }
        this.dispenseRequest = json['dispenseRequest'] == null ? null : FHIRObjectFactory.buildFromJSON('MedicationRequestDispenseRequest', json['dispenseRequest']);
        this.substitution = json['substitution'] == null ? null : FHIRObjectFactory.buildFromJSON('MedicationRequestSubstitution', json['substitution']);
        this.priorPrescription = json['priorPrescription'] == null ? null : FHIRObjectFactory.buildFromJSON('Reference', json['priorPrescription']);
        this.detectedIssue = List<Reference>();
        if (json['detectedIssue'] != null && json['detectedIssue'].length > 0) {
          if( json['detectedIssue'] is List ){
            json['detectedIssue'].forEach((i){
              this.detectedIssue.add(FHIRObjectFactory.buildFromJSON('Reference', i));
            });
          } else {
            // this handles the case when the list only has one object and does not return as a list
            var i = json['detectedIssue'];
            this.detectedIssue.add(FHIRObjectFactory.buildFromJSON('Reference', i));
          }          
        }
        this.eventHistory = List<Reference>();
        if (json['eventHistory'] != null && json['eventHistory'].length > 0) {
          if( json['eventHistory'] is List ){
            json['eventHistory'].forEach((i){
              this.eventHistory.add(FHIRObjectFactory.buildFromJSON('Reference', i));
            });
          } else {
            // this handles the case when the list only has one object and does not return as a list
            var i = json['eventHistory'];
            this.eventHistory.add(FHIRObjectFactory.buildFromJSON('Reference', i));
          }          
        }
    }
}
