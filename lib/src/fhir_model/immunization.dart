import 'meta.dart';
import 'fhir_object_factory.dart';
import 'element.dart';
import 'narrative.dart';
import 'extension.dart';
import 'identifier.dart';
import 'codeable_concept.dart';
import 'reference.dart';
import 'quantity.dart';
import 'immunization_performer.dart';
import 'annotation.dart';
import 'immunization_education.dart';
import 'immunization_reaction.dart';
import 'immunization_protocol_applied.dart';
/// Describes the event of a patient being administered a vaccine or a record of an immunization as reported by a patient, a clinician or another party.
class Immunization {
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
    /// A unique identifier assigned to this immunization record.
    List<Identifier> identifier;
    /// Indicates the current status of the immunization event.
    String status;
    /// Extensions for status
    Element extStatus;
    /// Indicates the reason the immunization event was not performed.
    CodeableConcept statusReason;
    /// Vaccine that was administered or was to be administered.
    CodeableConcept vaccineCode;
    /// The patient who either received or did not receive the immunization.
    Reference patient;
    /// The visit or admission or other contact between patient and health care provider the immunization was performed as part of.
    Reference encounter;
    /// Extensions for occurrenceDateTime
    Element extOccurrenceDateTime;
    /// Extensions for occurrenceString
    Element extOccurrenceString;
    /// The date the occurrence of the immunization was first captured in the record - potentially significantly after the occurrence of the event.
    DateTime recorded;
    /// Extensions for recorded
    Element extRecorded;
    /// An indication that the content of the record is based on information from the person who administered the vaccine. This reflects the context under which the data was originally recorded.
    bool primarySource;
    /// Extensions for primarySource
    Element extPrimarySource;
    /// The source of the data when the report of the immunization event is not based on information from the person who administered the vaccine.
    CodeableConcept reportOrigin;
    /// The service delivery location where the vaccine administration occurred.
    Reference location;
    /// Name of vaccine manufacturer.
    Reference manufacturer;
    /// Lot number of the  vaccine product.
    String lotNumber;
    /// Extensions for lotNumber
    Element extLotNumber;
    /// Date vaccine batch expires.
    DateTime expirationDate;
    /// Extensions for expirationDate
    Element extExpirationDate;
    /// Body site where vaccine was administered.
    CodeableConcept site;
    /// The path by which the vaccine product is taken into the body.
    CodeableConcept route;
    /// The quantity of vaccine product that was administered.
    Quantity doseQuantity;
    /// Indicates who performed the immunization event.
    List<ImmunizationPerformer> performer;
    /// Extra information about the immunization that is not conveyed by the other attributes.
    List<Annotation> note;
    /// Reasons why the vaccine was administered.
    List<CodeableConcept> reasonCode;
    /// Condition, Observation or DiagnosticReport that supports why the immunization was administered.
    List<Reference> reasonReference;
    /// Indication if a dose is considered to be subpotent. By default, a dose should be considered to be potent.
    bool isSubpotent;
    /// Extensions for isSubpotent
    Element extIsSubpotent;
    /// Reason why a dose is considered to be subpotent.
    List<CodeableConcept> subpotentReason;
    /// Educational material presented to the patient (or guardian) at the time of vaccine administration.
    List<ImmunizationEducation> education;
    /// Indicates a patient's eligibility for a funding program.
    List<CodeableConcept> programEligibility;
    /// Indicates the source of the vaccine actually administered. This may be different than the patient eligibility (e.g. the patient may be eligible for a publically purchased vaccine but due to inventory issues, vaccine purchased with private funds was actually administered).
    CodeableConcept fundingSource;
    /// Categorical data indicating that an adverse event is associated in time to an immunization.
    List<ImmunizationReaction> reaction;
    /// The protocol (set of recommendations) being followed by the provider who administered the dose.
    List<ImmunizationProtocolApplied> protocolApplied;
 
    Immunization.fromJSON( Map json ){
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
        this.vaccineCode = json['vaccineCode'] == null ? null : FHIRObjectFactory.buildFromJSON('CodeableConcept', json['vaccineCode']);
        this.patient = json['patient'] == null ? null : FHIRObjectFactory.buildFromJSON('Reference', json['patient']);
        this.encounter = json['encounter'] == null ? null : FHIRObjectFactory.buildFromJSON('Reference', json['encounter']);
        this.extOccurrenceDateTime = json['_occurrenceDateTime'] == null ? null : FHIRObjectFactory.buildFromJSON('Element', json['_occurrenceDateTime']);
        this.extOccurrenceString = json['_occurrenceString'] == null ? null : FHIRObjectFactory.buildFromJSON('Element', json['_occurrenceString']);
        if( json['recorded'] != null ) { this.recorded = DateTime.parse(json['recorded']);}
        this.extRecorded = json['_recorded'] == null ? null : FHIRObjectFactory.buildFromJSON('Element', json['_recorded']);
        this.primarySource = json['primarySource'];
        this.extPrimarySource = json['_primarySource'] == null ? null : FHIRObjectFactory.buildFromJSON('Element', json['_primarySource']);
        this.reportOrigin = json['reportOrigin'] == null ? null : FHIRObjectFactory.buildFromJSON('CodeableConcept', json['reportOrigin']);
        this.location = json['location'] == null ? null : FHIRObjectFactory.buildFromJSON('Reference', json['location']);
        this.manufacturer = json['manufacturer'] == null ? null : FHIRObjectFactory.buildFromJSON('Reference', json['manufacturer']);
        this.lotNumber = json['lotNumber'];
        this.extLotNumber = json['_lotNumber'] == null ? null : FHIRObjectFactory.buildFromJSON('Element', json['_lotNumber']);
        if( json['expirationDate'] != null ) { this.expirationDate = DateTime.parse(json['expirationDate']);}
        this.extExpirationDate = json['_expirationDate'] == null ? null : FHIRObjectFactory.buildFromJSON('Element', json['_expirationDate']);
        this.site = json['site'] == null ? null : FHIRObjectFactory.buildFromJSON('CodeableConcept', json['site']);
        this.route = json['route'] == null ? null : FHIRObjectFactory.buildFromJSON('CodeableConcept', json['route']);
        this.doseQuantity = json['doseQuantity'] == null ? null : FHIRObjectFactory.buildFromJSON('Quantity', json['doseQuantity']);
        this.performer = List<ImmunizationPerformer>();
        if (json['performer'] != null && json['performer'].length > 0) {
          if( json['performer'] is List ){
            json['performer'].forEach((i){
              this.performer.add(FHIRObjectFactory.buildFromJSON('ImmunizationPerformer', i));
            });
          } else {
            // this handles the case when the list only has one object and does not return as a list
            var i = json['performer'];
            this.performer.add(FHIRObjectFactory.buildFromJSON('ImmunizationPerformer', i));
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
        this.isSubpotent = json['isSubpotent'];
        this.extIsSubpotent = json['_isSubpotent'] == null ? null : FHIRObjectFactory.buildFromJSON('Element', json['_isSubpotent']);
        this.subpotentReason = List<CodeableConcept>();
        if (json['subpotentReason'] != null && json['subpotentReason'].length > 0) {
          if( json['subpotentReason'] is List ){
            json['subpotentReason'].forEach((i){
              this.subpotentReason.add(FHIRObjectFactory.buildFromJSON('CodeableConcept', i));
            });
          } else {
            // this handles the case when the list only has one object and does not return as a list
            var i = json['subpotentReason'];
            this.subpotentReason.add(FHIRObjectFactory.buildFromJSON('CodeableConcept', i));
          }          
        }
        this.education = List<ImmunizationEducation>();
        if (json['education'] != null && json['education'].length > 0) {
          if( json['education'] is List ){
            json['education'].forEach((i){
              this.education.add(FHIRObjectFactory.buildFromJSON('ImmunizationEducation', i));
            });
          } else {
            // this handles the case when the list only has one object and does not return as a list
            var i = json['education'];
            this.education.add(FHIRObjectFactory.buildFromJSON('ImmunizationEducation', i));
          }          
        }
        this.programEligibility = List<CodeableConcept>();
        if (json['programEligibility'] != null && json['programEligibility'].length > 0) {
          if( json['programEligibility'] is List ){
            json['programEligibility'].forEach((i){
              this.programEligibility.add(FHIRObjectFactory.buildFromJSON('CodeableConcept', i));
            });
          } else {
            // this handles the case when the list only has one object and does not return as a list
            var i = json['programEligibility'];
            this.programEligibility.add(FHIRObjectFactory.buildFromJSON('CodeableConcept', i));
          }          
        }
        this.fundingSource = json['fundingSource'] == null ? null : FHIRObjectFactory.buildFromJSON('CodeableConcept', json['fundingSource']);
        this.reaction = List<ImmunizationReaction>();
        if (json['reaction'] != null && json['reaction'].length > 0) {
          if( json['reaction'] is List ){
            json['reaction'].forEach((i){
              this.reaction.add(FHIRObjectFactory.buildFromJSON('ImmunizationReaction', i));
            });
          } else {
            // this handles the case when the list only has one object and does not return as a list
            var i = json['reaction'];
            this.reaction.add(FHIRObjectFactory.buildFromJSON('ImmunizationReaction', i));
          }          
        }
        this.protocolApplied = List<ImmunizationProtocolApplied>();
        if (json['protocolApplied'] != null && json['protocolApplied'].length > 0) {
          if( json['protocolApplied'] is List ){
            json['protocolApplied'].forEach((i){
              this.protocolApplied.add(FHIRObjectFactory.buildFromJSON('ImmunizationProtocolApplied', i));
            });
          } else {
            // this handles the case when the list only has one object and does not return as a list
            var i = json['protocolApplied'];
            this.protocolApplied.add(FHIRObjectFactory.buildFromJSON('ImmunizationProtocolApplied', i));
          }          
        }
    }
}
