import 'meta.dart';
import 'fhir_object_factory.dart';
import 'element.dart';
import 'narrative.dart';
import 'extension.dart';
import 'identifier.dart';
import 'reference.dart';
import 'codeable_concept.dart';
import 'medication_dispense_performer.dart';
import 'quantity.dart';
import 'annotation.dart';
import 'dosage.dart';
import 'medication_dispense_substitution.dart';
/// Indicates that a medication product is to be or has been dispensed for a named person/patient.  This includes a description of the medication product (supply) provided and the instructions for administering the medication.  The medication dispense is the result of a pharmacy system responding to a medication order.
class MedicationDispense {
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
    /// Identifiers associated with this Medication Dispense that are defined by business processes and/or used to refer to it when a direct URL reference to the resource itself is not appropriate. They are business identifiers assigned to this resource by the performer or other systems and remain constant as the resource is updated and propagates from server to server.
    List<Identifier> identifier;
    /// The procedure that trigger the dispense.
    List<Reference> partOf;
    /// A code specifying the state of the set of dispense events.
    String status;
    /// Extensions for status
    Element extStatus;
    /// Indicates the reason why a dispense was not performed.
    CodeableConcept statusReasonCodeableConcept;
    /// Indicates the reason why a dispense was not performed.
    Reference statusReasonReference;
    /// Indicates the type of medication dispense (for example, where the medication is expected to be consumed or administered (i.e. inpatient or outpatient)).
    CodeableConcept category;
    /// Identifies the medication being administered. This is either a link to a resource representing the details of the medication or a simple attribute carrying a code that identifies the medication from a known list of medications.
    CodeableConcept medicationCodeableConcept;
    /// Identifies the medication being administered. This is either a link to a resource representing the details of the medication or a simple attribute carrying a code that identifies the medication from a known list of medications.
    Reference medicationReference;
    /// A link to a resource representing the person or the group to whom the medication will be given.
    Reference subject;
    /// The encounter or episode of care that establishes the context for this event.
    Reference context;
    /// Additional information that supports the medication being dispensed.
    List<Reference> supportingInformation;
    /// Indicates who or what performed the event.
    List<MedicationDispensePerformer> performer;
    /// The principal physical location where the dispense was performed.
    Reference location;
    /// Indicates the medication order that is being dispensed against.
    List<Reference> authorizingPrescription;
    /// Indicates the type of dispensing event that is performed. For example, Trial Fill, Completion of Trial, Partial Fill, Emergency Fill, Samples, etc.
    CodeableConcept type;
    /// The amount of medication that has been dispensed. Includes unit of measure.
    Quantity quantity;
    /// The amount of medication expressed as a timing amount.
    Quantity daysSupply;
    /// The time when the dispensed product was packaged and reviewed.
    DateTime whenPrepared;
    /// Extensions for whenPrepared
    Element extWhenPrepared;
    /// The time the dispensed product was provided to the patient or their representative.
    DateTime whenHandedOver;
    /// Extensions for whenHandedOver
    Element extWhenHandedOver;
    /// Identification of the facility/location where the medication was shipped to, as part of the dispense event.
    Reference destination;
    /// Identifies the person who picked up the medication.  This will usually be a patient or their caregiver, but some cases exist where it can be a healthcare professional.
    List<Reference> receiver;
    /// Extra information about the dispense that could not be conveyed in the other attributes.
    List<Annotation> note;
    /// Indicates how the medication is to be used by the patient.
    List<Dosage> dosageInstruction;
    /// Indicates whether or not substitution was made as part of the dispense.  In some cases, substitution will be expected but does not happen, in other cases substitution is not expected but does happen.  This block explains what substitution did or did not happen and why.  If nothing is specified, substitution was not done.
    MedicationDispenseSubstitution substitution;
    /// Indicates an actual or potential clinical issue with or between one or more active or proposed clinical actions for a patient; e.g. drug-drug interaction, duplicate therapy, dosage alert etc.
    List<Reference> detectedIssue;
    /// A summary of the events of interest that have occurred, such as when the dispense was verified.
    List<Reference> eventHistory;
 
    MedicationDispense.fromJSON( Map json ){
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
        this.partOf = List<Reference>();
        if (json['partOf'] != null && json['partOf'].length > 0) {
          if( json['partOf'] is List ){
            json['partOf'].forEach((i){
              this.partOf.add(FHIRObjectFactory.buildFromJSON('Reference', i));
            });
          } else {
            // this handles the case when the list only has one object and does not return as a list
            var i = json['partOf'];
            this.partOf.add(FHIRObjectFactory.buildFromJSON('Reference', i));
          }          
        }
        this.status = json['status'];
        this.extStatus = json['_status'] == null ? null : FHIRObjectFactory.buildFromJSON('Element', json['_status']);
        this.statusReasonCodeableConcept = json['statusReasonCodeableConcept'] == null ? null : FHIRObjectFactory.buildFromJSON('CodeableConcept', json['statusReasonCodeableConcept']);
        this.statusReasonReference = json['statusReasonReference'] == null ? null : FHIRObjectFactory.buildFromJSON('Reference', json['statusReasonReference']);
        this.category = json['category'] == null ? null : FHIRObjectFactory.buildFromJSON('CodeableConcept', json['category']);
        this.medicationCodeableConcept = json['medicationCodeableConcept'] == null ? null : FHIRObjectFactory.buildFromJSON('CodeableConcept', json['medicationCodeableConcept']);
        this.medicationReference = json['medicationReference'] == null ? null : FHIRObjectFactory.buildFromJSON('Reference', json['medicationReference']);
        this.subject = json['subject'] == null ? null : FHIRObjectFactory.buildFromJSON('Reference', json['subject']);
        this.context = json['context'] == null ? null : FHIRObjectFactory.buildFromJSON('Reference', json['context']);
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
        this.performer = List<MedicationDispensePerformer>();
        if (json['performer'] != null && json['performer'].length > 0) {
          if( json['performer'] is List ){
            json['performer'].forEach((i){
              this.performer.add(FHIRObjectFactory.buildFromJSON('MedicationDispensePerformer', i));
            });
          } else {
            // this handles the case when the list only has one object and does not return as a list
            var i = json['performer'];
            this.performer.add(FHIRObjectFactory.buildFromJSON('MedicationDispensePerformer', i));
          }          
        }
        this.location = json['location'] == null ? null : FHIRObjectFactory.buildFromJSON('Reference', json['location']);
        this.authorizingPrescription = List<Reference>();
        if (json['authorizingPrescription'] != null && json['authorizingPrescription'].length > 0) {
          if( json['authorizingPrescription'] is List ){
            json['authorizingPrescription'].forEach((i){
              this.authorizingPrescription.add(FHIRObjectFactory.buildFromJSON('Reference', i));
            });
          } else {
            // this handles the case when the list only has one object and does not return as a list
            var i = json['authorizingPrescription'];
            this.authorizingPrescription.add(FHIRObjectFactory.buildFromJSON('Reference', i));
          }          
        }
        this.type = json['type'] == null ? null : FHIRObjectFactory.buildFromJSON('CodeableConcept', json['type']);
        this.quantity = json['quantity'] == null ? null : FHIRObjectFactory.buildFromJSON('Quantity', json['quantity']);
        this.daysSupply = json['daysSupply'] == null ? null : FHIRObjectFactory.buildFromJSON('Quantity', json['daysSupply']);
        if( json['whenPrepared'] != null ) { this.whenPrepared = DateTime.parse(json['whenPrepared']);}
        this.extWhenPrepared = json['_whenPrepared'] == null ? null : FHIRObjectFactory.buildFromJSON('Element', json['_whenPrepared']);
        if( json['whenHandedOver'] != null ) { this.whenHandedOver = DateTime.parse(json['whenHandedOver']);}
        this.extWhenHandedOver = json['_whenHandedOver'] == null ? null : FHIRObjectFactory.buildFromJSON('Element', json['_whenHandedOver']);
        this.destination = json['destination'] == null ? null : FHIRObjectFactory.buildFromJSON('Reference', json['destination']);
        this.receiver = List<Reference>();
        if (json['receiver'] != null && json['receiver'].length > 0) {
          if( json['receiver'] is List ){
            json['receiver'].forEach((i){
              this.receiver.add(FHIRObjectFactory.buildFromJSON('Reference', i));
            });
          } else {
            // this handles the case when the list only has one object and does not return as a list
            var i = json['receiver'];
            this.receiver.add(FHIRObjectFactory.buildFromJSON('Reference', i));
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
        this.substitution = json['substitution'] == null ? null : FHIRObjectFactory.buildFromJSON('MedicationDispenseSubstitution', json['substitution']);
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
