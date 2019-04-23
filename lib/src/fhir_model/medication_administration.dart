import 'meta.dart';
import 'fhir_object_factory.dart';
import 'element.dart';
import 'narrative.dart';
import 'extension.dart';
import 'identifier.dart';
import 'reference.dart';
import 'codeable_concept.dart';
import 'period.dart';
import 'medication_administration_performer.dart';
import 'annotation.dart';
import 'medication_administration_dosage.dart';
/// Describes the event of a patient consuming or otherwise being administered a medication.  This may be as simple as swallowing a tablet or it may be a long running infusion.  Related resources tie this event to the authorizing prescription, and the specific encounter between patient and health care practitioner.
class MedicationAdministration {
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
    /// Identifiers associated with this Medication Administration that are defined by business processes and/or used to refer to it when a direct URL reference to the resource itself is not appropriate. They are business identifiers assigned to this resource by the performer or other systems and remain constant as the resource is updated and propagates from server to server.
    List<Identifier> identifier;
    /// A protocol, guideline, orderset, or other definition that was adhered to in whole or in part by this event.
    List<String> instantiates;
    /// Extensions for instantiates
    List<Element> extInstantiates;
    /// A larger event of which this particular event is a component or step.
    List<Reference> partOf;
    /// Will generally be set to show that the administration has been completed.  For some long running administrations such as infusions, it is possible for an administration to be started but not completed or it may be paused while some other process is under way.
    String status;
    /// Extensions for status
    Element extStatus;
    /// A code indicating why the administration was not performed.
    List<CodeableConcept> statusReason;
    /// Indicates where the medication is expected to be consumed or administered.
    CodeableConcept category;
    /// Identifies the medication that was administered. This is either a link to a resource representing the details of the medication or a simple attribute carrying a code that identifies the medication from a known list of medications.
    CodeableConcept medicationCodeableConcept;
    /// Identifies the medication that was administered. This is either a link to a resource representing the details of the medication or a simple attribute carrying a code that identifies the medication from a known list of medications.
    Reference medicationReference;
    /// The person or animal or group receiving the medication.
    Reference subject;
    /// The visit, admission, or other contact between patient and health care provider during which the medication administration was performed.
    Reference context;
    /// Additional information (for example, patient height and weight) that supports the administration of the medication.
    List<Reference> supportingInformation;
    /// Extensions for effectiveDateTime
    Element extEffectiveDateTime;
    /// A specific date/time or interval of time during which the administration took place (or did not take place, when the 'notGiven' attribute is true). For many administrations, such as swallowing a tablet the use of dateTime is more appropriate.
    Period effectivePeriod;
    /// Indicates who or what performed the medication administration and how they were involved.
    List<MedicationAdministrationPerformer> performer;
    /// A code indicating why the medication was given.
    List<CodeableConcept> reasonCode;
    /// Condition or observation that supports why the medication was administered.
    List<Reference> reasonReference;
    /// The original request, instruction or authority to perform the administration.
    Reference request;
    /// The device used in administering the medication to the patient.  For example, a particular infusion pump.
    List<Reference> device;
    /// Extra information about the medication administration that is not conveyed by the other attributes.
    List<Annotation> note;
    /// Describes the medication dosage information details e.g. dose, rate, site, route, etc.
    MedicationAdministrationDosage dosage;
    /// A summary of the events of interest that have occurred, such as when the administration was verified.
    List<Reference> eventHistory;
 
    MedicationAdministration.fromJSON( Map json ){
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
        this.instantiates = List<String>();
        if (json['instantiates'] != null && json['instantiates'].length > 0) {
          if( json['instantiates'] is List ){
            json['instantiates'].forEach((i){
              this.instantiates.add(i);
            });
          } else {
            // this handles the case when the list only has one object and does not return as a list
            var i = json['instantiates'];
            this.instantiates.add(i);
          }          
        }
        this.extInstantiates = List<Element>();
        if (json['_instantiates'] != null && json['_instantiates'].length > 0) {
          if( json['_instantiates'] is List ){
            json['_instantiates'].forEach((i){
              this.extInstantiates.add(FHIRObjectFactory.buildFromJSON('Element', i));
            });
          } else {
            // this handles the case when the list only has one object and does not return as a list
            var i = json['_instantiates'];
            this.extInstantiates.add(FHIRObjectFactory.buildFromJSON('Element', i));
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
        this.statusReason = List<CodeableConcept>();
        if (json['statusReason'] != null && json['statusReason'].length > 0) {
          if( json['statusReason'] is List ){
            json['statusReason'].forEach((i){
              this.statusReason.add(FHIRObjectFactory.buildFromJSON('CodeableConcept', i));
            });
          } else {
            // this handles the case when the list only has one object and does not return as a list
            var i = json['statusReason'];
            this.statusReason.add(FHIRObjectFactory.buildFromJSON('CodeableConcept', i));
          }          
        }
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
        this.extEffectiveDateTime = json['_effectiveDateTime'] == null ? null : FHIRObjectFactory.buildFromJSON('Element', json['_effectiveDateTime']);
        this.effectivePeriod = json['effectivePeriod'] == null ? null : FHIRObjectFactory.buildFromJSON('Period', json['effectivePeriod']);
        this.performer = List<MedicationAdministrationPerformer>();
        if (json['performer'] != null && json['performer'].length > 0) {
          if( json['performer'] is List ){
            json['performer'].forEach((i){
              this.performer.add(FHIRObjectFactory.buildFromJSON('MedicationAdministrationPerformer', i));
            });
          } else {
            // this handles the case when the list only has one object and does not return as a list
            var i = json['performer'];
            this.performer.add(FHIRObjectFactory.buildFromJSON('MedicationAdministrationPerformer', i));
          }          
        }
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
        this.request = json['request'] == null ? null : FHIRObjectFactory.buildFromJSON('Reference', json['request']);
        this.device = List<Reference>();
        if (json['device'] != null && json['device'].length > 0) {
          if( json['device'] is List ){
            json['device'].forEach((i){
              this.device.add(FHIRObjectFactory.buildFromJSON('Reference', i));
            });
          } else {
            // this handles the case when the list only has one object and does not return as a list
            var i = json['device'];
            this.device.add(FHIRObjectFactory.buildFromJSON('Reference', i));
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
        this.dosage = json['dosage'] == null ? null : FHIRObjectFactory.buildFromJSON('MedicationAdministrationDosage', json['dosage']);
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
