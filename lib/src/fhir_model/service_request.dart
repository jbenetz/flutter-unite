import 'meta.dart';
import 'fhir_object_factory.dart';
import 'element.dart';
import 'narrative.dart';
import 'extension.dart';
import 'identifier.dart';
import 'reference.dart';
import 'codeable_concept.dart';
import 'quantity.dart';
import 'ratio.dart';
import 'range.dart';
import 'period.dart';
import 'timing.dart';
import 'annotation.dart';
/// A record of a request for service such as diagnostic investigations, treatments, or operations to be performed.
class ServiceRequest {
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
    /// Identifiers assigned to this order instance by the orderer and/or the receiver and/or order fulfiller.
    List<Identifier> identifier;
    /// The URL pointing to a FHIR-defined protocol, guideline, orderset or other definition that is adhered to in whole or in part by this ServiceRequest.
    List<String> instantiatesCanonical;
    /// The URL pointing to an externally maintained protocol, guideline, orderset or other definition that is adhered to in whole or in part by this ServiceRequest.
    List<String> instantiatesUri;
    /// Extensions for instantiatesUri
    List<Element> extInstantiatesUri;
    /// Plan/proposal/order fulfilled by this request.
    List<Reference> basedOn;
    /// The request takes the place of the referenced completed or terminated request(s).
    List<Reference> replaces;
    /// A shared identifier common to all service requests that were authorized more or less simultaneously by a single author, representing the composite or group identifier.
    Identifier requisition;
    /// The status of the order.
    String status;
    /// Extensions for status
    Element extStatus;
    /// Whether the request is a proposal, plan, an original order or a reflex order.
    String intent;
    /// Extensions for intent
    Element extIntent;
    /// A code that classifies the service for searching, sorting and display purposes (e.g. "Surgical Procedure").
    List<CodeableConcept> category;
    /// Indicates how quickly the ServiceRequest should be addressed with respect to other requests.
    String priority;
    /// Extensions for priority
    Element extPriority;
    /// Set this to true if the record is saying that the service/procedure should NOT be performed.
    bool doNotPerform;
    /// Extensions for doNotPerform
    Element extDoNotPerform;
    /// A code that identifies a particular service (i.e., procedure, diagnostic investigation, or panel of investigations) that have been requested.
    CodeableConcept code;
    /// Additional details and instructions about the how the services are to be delivered.   For example, and order for a urinary catheter may have an order detail for an external or indwelling catheter, or an order for a bandage may require additional instructions specifying how the bandage should be applied.
    List<CodeableConcept> orderDetail;
    /// An amount of service being requested which can be a quantity ( for example $1,500 home modification), a ratio ( for example, 20 half day visits per month), or a range (2.0 to 1.8 Gy per fraction).
    Quantity quantityQuantity;
    /// An amount of service being requested which can be a quantity ( for example $1,500 home modification), a ratio ( for example, 20 half day visits per month), or a range (2.0 to 1.8 Gy per fraction).
    Ratio quantityRatio;
    /// An amount of service being requested which can be a quantity ( for example $1,500 home modification), a ratio ( for example, 20 half day visits per month), or a range (2.0 to 1.8 Gy per fraction).
    Range quantityRange;
    /// On whom or what the service is to be performed. This is usually a human patient, but can also be requested on animals, groups of humans or animals, devices such as dialysis machines, or even locations (typically for environmental scans).
    Reference subject;
    /// An encounter that provides additional information about the healthcare context in which this request is made.
    Reference encounter;
    /// Extensions for occurrenceDateTime
    Element extOccurrenceDateTime;
    /// The date/time at which the requested service should occur.
    Period occurrencePeriod;
    /// The date/time at which the requested service should occur.
    Timing occurrenceTiming;
    /// Extensions for asNeededBoolean
    Element extAsNeededBoolean;
    /// If a CodeableConcept is present, it indicates the pre-condition for performing the service.  For example "pain", "on flare-up", etc.
    CodeableConcept asNeededCodeableConcept;
    /// When the request transitioned to being actionable.
    DateTime authoredOn;
    /// Extensions for authoredOn
    Element extAuthoredOn;
    /// The individual who initiated the request and has responsibility for its activation.
    Reference requester;
    /// Desired type of performer for doing the requested service.
    CodeableConcept performerType;
    /// The desired performer for doing the requested service.  For example, the surgeon, dermatopathologist, endoscopist, etc.
    List<Reference> performer;
    /// The preferred location(s) where the procedure should actually happen in coded or free text form. E.g. at home or nursing day care center.
    List<CodeableConcept> locationCode;
    /// A reference to the the preferred location(s) where the procedure should actually happen. E.g. at home or nursing day care center.
    List<Reference> locationReference;
    /// An explanation or justification for why this service is being requested in coded or textual form.   This is often for billing purposes.  May relate to the resources referred to in `supportingInfo`.
    List<CodeableConcept> reasonCode;
    /// Indicates another resource that provides a justification for why this service is being requested.   May relate to the resources referred to in `supportingInfo`.
    List<Reference> reasonReference;
    /// Insurance plans, coverage extensions, pre-authorizations and/or pre-determinations that may be needed for delivering the requested service.
    List<Reference> insurance;
    /// Additional clinical information about the patient or specimen that may influence the services or their interpretations.     This information includes diagnosis, clinical findings and other observations.  In laboratory ordering these are typically referred to as "ask at order entry questions (AOEs)".  This includes observations explicitly requested by the producer (filler) to provide context or supporting information needed to complete the order. For example,  reporting the amount of inspired oxygen for blood gas measurements.
    List<Reference> supportingInfo;
    /// One or more specimens that the laboratory procedure will use.
    List<Reference> specimen;
    /// Anatomic location where the procedure should be performed. This is the target site.
    List<CodeableConcept> bodySite;
    /// Any other notes and comments made about the service request. For example, internal billing notes.
    List<Annotation> note;
    /// Instructions in terms that are understood by the patient or consumer.
    String patientInstruction;
    /// Extensions for patientInstruction
    Element extPatientInstruction;
    /// Key events in the history of the request.
    List<Reference> relevantHistory;
 
    ServiceRequest.fromJSON( Map json ){
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
        this.replaces = List<Reference>();
        if (json['replaces'] != null && json['replaces'].length > 0) {
          if( json['replaces'] is List ){
            json['replaces'].forEach((i){
              this.replaces.add(FHIRObjectFactory.buildFromJSON('Reference', i));
            });
          } else {
            // this handles the case when the list only has one object and does not return as a list
            var i = json['replaces'];
            this.replaces.add(FHIRObjectFactory.buildFromJSON('Reference', i));
          }          
        }
        this.requisition = json['requisition'] == null ? null : FHIRObjectFactory.buildFromJSON('Identifier', json['requisition']);
        this.status = json['status'];
        this.extStatus = json['_status'] == null ? null : FHIRObjectFactory.buildFromJSON('Element', json['_status']);
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
        this.code = json['code'] == null ? null : FHIRObjectFactory.buildFromJSON('CodeableConcept', json['code']);
        this.orderDetail = List<CodeableConcept>();
        if (json['orderDetail'] != null && json['orderDetail'].length > 0) {
          if( json['orderDetail'] is List ){
            json['orderDetail'].forEach((i){
              this.orderDetail.add(FHIRObjectFactory.buildFromJSON('CodeableConcept', i));
            });
          } else {
            // this handles the case when the list only has one object and does not return as a list
            var i = json['orderDetail'];
            this.orderDetail.add(FHIRObjectFactory.buildFromJSON('CodeableConcept', i));
          }          
        }
        this.quantityQuantity = json['quantityQuantity'] == null ? null : FHIRObjectFactory.buildFromJSON('Quantity', json['quantityQuantity']);
        this.quantityRatio = json['quantityRatio'] == null ? null : FHIRObjectFactory.buildFromJSON('Ratio', json['quantityRatio']);
        this.quantityRange = json['quantityRange'] == null ? null : FHIRObjectFactory.buildFromJSON('Range', json['quantityRange']);
        this.subject = json['subject'] == null ? null : FHIRObjectFactory.buildFromJSON('Reference', json['subject']);
        this.encounter = json['encounter'] == null ? null : FHIRObjectFactory.buildFromJSON('Reference', json['encounter']);
        this.extOccurrenceDateTime = json['_occurrenceDateTime'] == null ? null : FHIRObjectFactory.buildFromJSON('Element', json['_occurrenceDateTime']);
        this.occurrencePeriod = json['occurrencePeriod'] == null ? null : FHIRObjectFactory.buildFromJSON('Period', json['occurrencePeriod']);
        this.occurrenceTiming = json['occurrenceTiming'] == null ? null : FHIRObjectFactory.buildFromJSON('Timing', json['occurrenceTiming']);
        this.extAsNeededBoolean = json['_asNeededBoolean'] == null ? null : FHIRObjectFactory.buildFromJSON('Element', json['_asNeededBoolean']);
        this.asNeededCodeableConcept = json['asNeededCodeableConcept'] == null ? null : FHIRObjectFactory.buildFromJSON('CodeableConcept', json['asNeededCodeableConcept']);
        if( json['authoredOn'] != null ) { this.authoredOn = DateTime.parse(json['authoredOn']);}
        this.extAuthoredOn = json['_authoredOn'] == null ? null : FHIRObjectFactory.buildFromJSON('Element', json['_authoredOn']);
        this.requester = json['requester'] == null ? null : FHIRObjectFactory.buildFromJSON('Reference', json['requester']);
        this.performerType = json['performerType'] == null ? null : FHIRObjectFactory.buildFromJSON('CodeableConcept', json['performerType']);
        this.performer = List<Reference>();
        if (json['performer'] != null && json['performer'].length > 0) {
          if( json['performer'] is List ){
            json['performer'].forEach((i){
              this.performer.add(FHIRObjectFactory.buildFromJSON('Reference', i));
            });
          } else {
            // this handles the case when the list only has one object and does not return as a list
            var i = json['performer'];
            this.performer.add(FHIRObjectFactory.buildFromJSON('Reference', i));
          }          
        }
        this.locationCode = List<CodeableConcept>();
        if (json['locationCode'] != null && json['locationCode'].length > 0) {
          if( json['locationCode'] is List ){
            json['locationCode'].forEach((i){
              this.locationCode.add(FHIRObjectFactory.buildFromJSON('CodeableConcept', i));
            });
          } else {
            // this handles the case when the list only has one object and does not return as a list
            var i = json['locationCode'];
            this.locationCode.add(FHIRObjectFactory.buildFromJSON('CodeableConcept', i));
          }          
        }
        this.locationReference = List<Reference>();
        if (json['locationReference'] != null && json['locationReference'].length > 0) {
          if( json['locationReference'] is List ){
            json['locationReference'].forEach((i){
              this.locationReference.add(FHIRObjectFactory.buildFromJSON('Reference', i));
            });
          } else {
            // this handles the case when the list only has one object and does not return as a list
            var i = json['locationReference'];
            this.locationReference.add(FHIRObjectFactory.buildFromJSON('Reference', i));
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
        this.specimen = List<Reference>();
        if (json['specimen'] != null && json['specimen'].length > 0) {
          if( json['specimen'] is List ){
            json['specimen'].forEach((i){
              this.specimen.add(FHIRObjectFactory.buildFromJSON('Reference', i));
            });
          } else {
            // this handles the case when the list only has one object and does not return as a list
            var i = json['specimen'];
            this.specimen.add(FHIRObjectFactory.buildFromJSON('Reference', i));
          }          
        }
        this.bodySite = List<CodeableConcept>();
        if (json['bodySite'] != null && json['bodySite'].length > 0) {
          if( json['bodySite'] is List ){
            json['bodySite'].forEach((i){
              this.bodySite.add(FHIRObjectFactory.buildFromJSON('CodeableConcept', i));
            });
          } else {
            // this handles the case when the list only has one object and does not return as a list
            var i = json['bodySite'];
            this.bodySite.add(FHIRObjectFactory.buildFromJSON('CodeableConcept', i));
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
        this.patientInstruction = json['patientInstruction'];
        this.extPatientInstruction = json['_patientInstruction'] == null ? null : FHIRObjectFactory.buildFromJSON('Element', json['_patientInstruction']);
        this.relevantHistory = List<Reference>();
        if (json['relevantHistory'] != null && json['relevantHistory'].length > 0) {
          if( json['relevantHistory'] is List ){
            json['relevantHistory'].forEach((i){
              this.relevantHistory.add(FHIRObjectFactory.buildFromJSON('Reference', i));
            });
          } else {
            // this handles the case when the list only has one object and does not return as a list
            var i = json['relevantHistory'];
            this.relevantHistory.add(FHIRObjectFactory.buildFromJSON('Reference', i));
          }          
        }
    }
}
