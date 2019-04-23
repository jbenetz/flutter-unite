import 'meta.dart';
import 'fhir_object_factory.dart';
import 'element.dart';
import 'narrative.dart';
import 'extension.dart';
import 'identifier.dart';
import 'reference.dart';
import 'codeable_concept.dart';
import 'period.dart';
import 'timing.dart';
import 'charge_item_performer.dart';
import 'quantity.dart';
import 'money.dart';
import 'annotation.dart';
/// The resource ChargeItem describes the provision of healthcare provider products for a certain patient, therefore referring not only to the product, but containing in addition details of the provision, like date, time, amounts and participating organizations and persons. Main Usage of the ChargeItem is to enable the billing process and internal cost allocation.
class ChargeItem {
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
    /// Identifiers assigned to this event performer or other systems.
    List<Identifier> identifier;
    /// References the (external) source of pricing information, rules of application for the code this ChargeItem uses.
    List<String> definitionUri;
    /// Extensions for definitionUri
    List<Element> extDefinitionUri;
    /// References the source of pricing information, rules of application for the code this ChargeItem uses.
    List<String> definitionCanonical;
    /// The current state of the ChargeItem.
    String status;
    /// Extensions for status
    Element extStatus;
    /// ChargeItems can be grouped to larger ChargeItems covering the whole set.
    List<Reference> partOf;
    /// A code that identifies the charge, like a billing code.
    CodeableConcept code;
    /// The individual or set of individuals the action is being or was performed on.
    Reference subject;
    /// The encounter or episode of care that establishes the context for this event.
    Reference context;
    /// Extensions for occurrenceDateTime
    Element extOccurrenceDateTime;
    /// Date/time(s) or duration when the charged service was applied.
    Period occurrencePeriod;
    /// Date/time(s) or duration when the charged service was applied.
    Timing occurrenceTiming;
    /// Indicates who or what performed or participated in the charged service.
    List<ChargeItemPerformer> performer;
    /// The organization requesting the service.
    Reference performingOrganization;
    /// The organization performing the service.
    Reference requestingOrganization;
    /// The financial cost center permits the tracking of charge attribution.
    Reference costCenter;
    /// Quantity of which the charge item has been serviced.
    Quantity quantity;
    /// The anatomical location where the related service has been applied.
    List<CodeableConcept> bodysite;
    /// Factor overriding the factor determined by the rules associated with the code.
    double factorOverride;
    /// Extensions for factorOverride
    Element extFactorOverride;
    /// Total price of the charge overriding the list price associated with the code.
    Money priceOverride;
    /// If the list price or the rule-based factor associated with the code is overridden, this attribute can capture a text to indicate the  reason for this action.
    String overrideReason;
    /// Extensions for overrideReason
    Element extOverrideReason;
    /// The device, practitioner, etc. who entered the charge item.
    Reference enterer;
    /// Date the charge item was entered.
    DateTime enteredDate;
    /// Extensions for enteredDate
    Element extEnteredDate;
    /// Describes why the event occurred in coded or textual form.
    List<CodeableConcept> reason;
    /// Indicated the rendered service that caused this charge.
    List<Reference> service;
    /// Identifies the device, food, drug or other product being charged either by type code or reference to an instance.
    Reference productReference;
    /// Identifies the device, food, drug or other product being charged either by type code or reference to an instance.
    CodeableConcept productCodeableConcept;
    /// Account into which this ChargeItems belongs.
    List<Reference> account;
    /// Comments made about the event by the performer, subject or other participants.
    List<Annotation> note;
    /// Further information supporting this charge.
    List<Reference> supportingInformation;
 
    ChargeItem.fromJSON( Map json ){
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
        this.definitionUri = List<String>();
        if (json['definitionUri'] != null && json['definitionUri'].length > 0) {
          if( json['definitionUri'] is List ){
            json['definitionUri'].forEach((i){
              this.definitionUri.add(i);
            });
          } else {
            // this handles the case when the list only has one object and does not return as a list
            var i = json['definitionUri'];
            this.definitionUri.add(i);
          }          
        }
        this.extDefinitionUri = List<Element>();
        if (json['_definitionUri'] != null && json['_definitionUri'].length > 0) {
          if( json['_definitionUri'] is List ){
            json['_definitionUri'].forEach((i){
              this.extDefinitionUri.add(FHIRObjectFactory.buildFromJSON('Element', i));
            });
          } else {
            // this handles the case when the list only has one object and does not return as a list
            var i = json['_definitionUri'];
            this.extDefinitionUri.add(FHIRObjectFactory.buildFromJSON('Element', i));
          }          
        }
        this.definitionCanonical = List<String>();
        if (json['definitionCanonical'] != null && json['definitionCanonical'].length > 0) {
          if( json['definitionCanonical'] is List ){
            json['definitionCanonical'].forEach((i){
              this.definitionCanonical.add(i);
            });
          } else {
            // this handles the case when the list only has one object and does not return as a list
            var i = json['definitionCanonical'];
            this.definitionCanonical.add(i);
          }          
        }
        this.status = json['status'];
        this.extStatus = json['_status'] == null ? null : FHIRObjectFactory.buildFromJSON('Element', json['_status']);
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
        this.code = json['code'] == null ? null : FHIRObjectFactory.buildFromJSON('CodeableConcept', json['code']);
        this.subject = json['subject'] == null ? null : FHIRObjectFactory.buildFromJSON('Reference', json['subject']);
        this.context = json['context'] == null ? null : FHIRObjectFactory.buildFromJSON('Reference', json['context']);
        this.extOccurrenceDateTime = json['_occurrenceDateTime'] == null ? null : FHIRObjectFactory.buildFromJSON('Element', json['_occurrenceDateTime']);
        this.occurrencePeriod = json['occurrencePeriod'] == null ? null : FHIRObjectFactory.buildFromJSON('Period', json['occurrencePeriod']);
        this.occurrenceTiming = json['occurrenceTiming'] == null ? null : FHIRObjectFactory.buildFromJSON('Timing', json['occurrenceTiming']);
        this.performer = List<ChargeItemPerformer>();
        if (json['performer'] != null && json['performer'].length > 0) {
          if( json['performer'] is List ){
            json['performer'].forEach((i){
              this.performer.add(FHIRObjectFactory.buildFromJSON('ChargeItemPerformer', i));
            });
          } else {
            // this handles the case when the list only has one object and does not return as a list
            var i = json['performer'];
            this.performer.add(FHIRObjectFactory.buildFromJSON('ChargeItemPerformer', i));
          }          
        }
        this.performingOrganization = json['performingOrganization'] == null ? null : FHIRObjectFactory.buildFromJSON('Reference', json['performingOrganization']);
        this.requestingOrganization = json['requestingOrganization'] == null ? null : FHIRObjectFactory.buildFromJSON('Reference', json['requestingOrganization']);
        this.costCenter = json['costCenter'] == null ? null : FHIRObjectFactory.buildFromJSON('Reference', json['costCenter']);
        this.quantity = json['quantity'] == null ? null : FHIRObjectFactory.buildFromJSON('Quantity', json['quantity']);
        this.bodysite = List<CodeableConcept>();
        if (json['bodysite'] != null && json['bodysite'].length > 0) {
          if( json['bodysite'] is List ){
            json['bodysite'].forEach((i){
              this.bodysite.add(FHIRObjectFactory.buildFromJSON('CodeableConcept', i));
            });
          } else {
            // this handles the case when the list only has one object and does not return as a list
            var i = json['bodysite'];
            this.bodysite.add(FHIRObjectFactory.buildFromJSON('CodeableConcept', i));
          }          
        }
        if( json['factorOverride'] != null && json['factorOverride'] is int ) {
          this.factorOverride = json['factorOverride'].toDouble();
        } else {
          this.factorOverride = json['factorOverride'];
        }
    
        this.extFactorOverride = json['_factorOverride'] == null ? null : FHIRObjectFactory.buildFromJSON('Element', json['_factorOverride']);
        this.priceOverride = json['priceOverride'] == null ? null : FHIRObjectFactory.buildFromJSON('Money', json['priceOverride']);
        this.overrideReason = json['overrideReason'];
        this.extOverrideReason = json['_overrideReason'] == null ? null : FHIRObjectFactory.buildFromJSON('Element', json['_overrideReason']);
        this.enterer = json['enterer'] == null ? null : FHIRObjectFactory.buildFromJSON('Reference', json['enterer']);
        if( json['enteredDate'] != null ) { this.enteredDate = DateTime.parse(json['enteredDate']);}
        this.extEnteredDate = json['_enteredDate'] == null ? null : FHIRObjectFactory.buildFromJSON('Element', json['_enteredDate']);
        this.reason = List<CodeableConcept>();
        if (json['reason'] != null && json['reason'].length > 0) {
          if( json['reason'] is List ){
            json['reason'].forEach((i){
              this.reason.add(FHIRObjectFactory.buildFromJSON('CodeableConcept', i));
            });
          } else {
            // this handles the case when the list only has one object and does not return as a list
            var i = json['reason'];
            this.reason.add(FHIRObjectFactory.buildFromJSON('CodeableConcept', i));
          }          
        }
        this.service = List<Reference>();
        if (json['service'] != null && json['service'].length > 0) {
          if( json['service'] is List ){
            json['service'].forEach((i){
              this.service.add(FHIRObjectFactory.buildFromJSON('Reference', i));
            });
          } else {
            // this handles the case when the list only has one object and does not return as a list
            var i = json['service'];
            this.service.add(FHIRObjectFactory.buildFromJSON('Reference', i));
          }          
        }
        this.productReference = json['productReference'] == null ? null : FHIRObjectFactory.buildFromJSON('Reference', json['productReference']);
        this.productCodeableConcept = json['productCodeableConcept'] == null ? null : FHIRObjectFactory.buildFromJSON('CodeableConcept', json['productCodeableConcept']);
        this.account = List<Reference>();
        if (json['account'] != null && json['account'].length > 0) {
          if( json['account'] is List ){
            json['account'].forEach((i){
              this.account.add(FHIRObjectFactory.buildFromJSON('Reference', i));
            });
          } else {
            // this handles the case when the list only has one object and does not return as a list
            var i = json['account'];
            this.account.add(FHIRObjectFactory.buildFromJSON('Reference', i));
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
    }
}
