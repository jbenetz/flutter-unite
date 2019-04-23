import 'meta.dart';
import 'fhir_object_factory.dart';
import 'element.dart';
import 'narrative.dart';
import 'extension.dart';
import 'identifier.dart';
import 'reference.dart';
import 'codeable_concept.dart';
import 'communication_request_payload.dart';
import 'period.dart';
import 'annotation.dart';
/// A request to convey information; e.g. the CDS system proposes that an alert be sent to a responsible provider, the CDS system proposes that the public health agency be notified about a reportable condition.
class CommunicationRequest {
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
    /// Business identifiers assigned to this communication request by the performer or other systems which remain constant as the resource is updated and propagates from server to server.
    List<Identifier> identifier;
    /// A plan or proposal that is fulfilled in whole or in part by this request.
    List<Reference> basedOn;
    /// Completed or terminated request(s) whose function is taken by this new request.
    List<Reference> replaces;
    /// A shared identifier common to all requests that were authorized more or less simultaneously by a single author, representing the identifier of the requisition, prescription or similar form.
    Identifier groupIdentifier;
    /// The status of the proposal or order.
    String status;
    /// Extensions for status
    Element extStatus;
    /// Captures the reason for the current state of the CommunicationRequest.
    CodeableConcept statusReason;
    /// The type of message to be sent such as alert, notification, reminder, instruction, etc.
    List<CodeableConcept> category;
    /// Characterizes how quickly the proposed act must be initiated. Includes concepts such as stat, urgent, routine.
    String priority;
    /// Extensions for priority
    Element extPriority;
    /// If true indicates that the CommunicationRequest is asking for the specified action to *not* occur.
    bool doNotPerform;
    /// Extensions for doNotPerform
    Element extDoNotPerform;
    /// A channel that was used for this communication (e.g. email, fax).
    List<CodeableConcept> medium;
    /// The patient or group that is the focus of this communication request.
    Reference subject;
    /// Other resources that pertain to this communication request and to which this communication request should be associated.
    List<Reference> about;
    /// The Encounter during which this CommunicationRequest was created or to which the creation of this record is tightly associated.
    Reference encounter;
    /// Text, attachment(s), or resource(s) to be communicated to the recipient.
    List<CommunicationRequestPayload> payload;
    /// Extensions for occurrenceDateTime
    Element extOccurrenceDateTime;
    /// The time when this communication is to occur.
    Period occurrencePeriod;
    /// For draft requests, indicates the date of initial creation.  For requests with other statuses, indicates the date of activation.
    DateTime authoredOn;
    /// Extensions for authoredOn
    Element extAuthoredOn;
    /// The device, individual, or organization who initiated the request and has responsibility for its activation.
    Reference requester;
    /// The entity (e.g. person, organization, clinical information system, device, group, or care team) which is the intended target of the communication.
    List<Reference> recipient;
    /// The entity (e.g. person, organization, clinical information system, or device) which is to be the source of the communication.
    Reference sender;
    /// Describes why the request is being made in coded or textual form.
    List<CodeableConcept> reasonCode;
    /// Indicates another resource whose existence justifies this request.
    List<Reference> reasonReference;
    /// Comments made about the request by the requester, sender, recipient, subject or other participants.
    List<Annotation> note;
 
    CommunicationRequest.fromJSON( Map json ){
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
        this.groupIdentifier = json['groupIdentifier'] == null ? null : FHIRObjectFactory.buildFromJSON('Identifier', json['groupIdentifier']);
        this.status = json['status'];
        this.extStatus = json['_status'] == null ? null : FHIRObjectFactory.buildFromJSON('Element', json['_status']);
        this.statusReason = json['statusReason'] == null ? null : FHIRObjectFactory.buildFromJSON('CodeableConcept', json['statusReason']);
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
        this.medium = List<CodeableConcept>();
        if (json['medium'] != null && json['medium'].length > 0) {
          if( json['medium'] is List ){
            json['medium'].forEach((i){
              this.medium.add(FHIRObjectFactory.buildFromJSON('CodeableConcept', i));
            });
          } else {
            // this handles the case when the list only has one object and does not return as a list
            var i = json['medium'];
            this.medium.add(FHIRObjectFactory.buildFromJSON('CodeableConcept', i));
          }          
        }
        this.subject = json['subject'] == null ? null : FHIRObjectFactory.buildFromJSON('Reference', json['subject']);
        this.about = List<Reference>();
        if (json['about'] != null && json['about'].length > 0) {
          if( json['about'] is List ){
            json['about'].forEach((i){
              this.about.add(FHIRObjectFactory.buildFromJSON('Reference', i));
            });
          } else {
            // this handles the case when the list only has one object and does not return as a list
            var i = json['about'];
            this.about.add(FHIRObjectFactory.buildFromJSON('Reference', i));
          }          
        }
        this.encounter = json['encounter'] == null ? null : FHIRObjectFactory.buildFromJSON('Reference', json['encounter']);
        this.payload = List<CommunicationRequestPayload>();
        if (json['payload'] != null && json['payload'].length > 0) {
          if( json['payload'] is List ){
            json['payload'].forEach((i){
              this.payload.add(FHIRObjectFactory.buildFromJSON('CommunicationRequestPayload', i));
            });
          } else {
            // this handles the case when the list only has one object and does not return as a list
            var i = json['payload'];
            this.payload.add(FHIRObjectFactory.buildFromJSON('CommunicationRequestPayload', i));
          }          
        }
        this.extOccurrenceDateTime = json['_occurrenceDateTime'] == null ? null : FHIRObjectFactory.buildFromJSON('Element', json['_occurrenceDateTime']);
        this.occurrencePeriod = json['occurrencePeriod'] == null ? null : FHIRObjectFactory.buildFromJSON('Period', json['occurrencePeriod']);
        if( json['authoredOn'] != null ) { this.authoredOn = DateTime.parse(json['authoredOn']);}
        this.extAuthoredOn = json['_authoredOn'] == null ? null : FHIRObjectFactory.buildFromJSON('Element', json['_authoredOn']);
        this.requester = json['requester'] == null ? null : FHIRObjectFactory.buildFromJSON('Reference', json['requester']);
        this.recipient = List<Reference>();
        if (json['recipient'] != null && json['recipient'].length > 0) {
          if( json['recipient'] is List ){
            json['recipient'].forEach((i){
              this.recipient.add(FHIRObjectFactory.buildFromJSON('Reference', i));
            });
          } else {
            // this handles the case when the list only has one object and does not return as a list
            var i = json['recipient'];
            this.recipient.add(FHIRObjectFactory.buildFromJSON('Reference', i));
          }          
        }
        this.sender = json['sender'] == null ? null : FHIRObjectFactory.buildFromJSON('Reference', json['sender']);
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
    }
}
