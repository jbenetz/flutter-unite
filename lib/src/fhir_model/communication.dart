import 'meta.dart';
import 'fhir_object_factory.dart';
import 'element.dart';
import 'narrative.dart';
import 'extension.dart';
import 'identifier.dart';
import 'reference.dart';
import 'codeable_concept.dart';
import 'communication_payload.dart';
import 'annotation.dart';
/// An occurrence of information being transmitted; e.g. an alert that was sent to a responsible provider, a public health agency that was notified about a reportable condition.
class Communication {
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
    /// Business identifiers assigned to this communication by the performer or other systems which remain constant as the resource is updated and propagates from server to server.
    List<Identifier> identifier;
    /// The URL pointing to a FHIR-defined protocol, guideline, orderset or other definition that is adhered to in whole or in part by this Communication.
    List<String> instantiatesCanonical;
    /// The URL pointing to an externally maintained protocol, guideline, orderset or other definition that is adhered to in whole or in part by this Communication.
    List<String> instantiatesUri;
    /// Extensions for instantiatesUri
    List<Element> extInstantiatesUri;
    /// An order, proposal or plan fulfilled in whole or in part by this Communication.
    List<Reference> basedOn;
    /// Part of this action.
    List<Reference> partOf;
    /// Prior communication that this communication is in response to.
    List<Reference> inResponseTo;
    /// The status of the transmission.
    String status;
    /// Extensions for status
    Element extStatus;
    /// Captures the reason for the current state of the Communication.
    CodeableConcept statusReason;
    /// The type of message conveyed such as alert, notification, reminder, instruction, etc.
    List<CodeableConcept> category;
    /// Characterizes how quickly the planned or in progress communication must be addressed. Includes concepts such as stat, urgent, routine.
    String priority;
    /// Extensions for priority
    Element extPriority;
    /// A channel that was used for this communication (e.g. email, fax).
    List<CodeableConcept> medium;
    /// The patient or group that was the focus of this communication.
    Reference subject;
    /// Description of the purpose/content, similar to a subject line in an email.
    CodeableConcept topic;
    /// Other resources that pertain to this communication and to which this communication should be associated.
    List<Reference> about;
    /// The Encounter during which this Communication was created or to which the creation of this record is tightly associated.
    Reference encounter;
    /// The time when this communication was sent.
    DateTime sent;
    /// Extensions for sent
    Element extSent;
    /// The time when this communication arrived at the destination.
    DateTime received;
    /// Extensions for received
    Element extReceived;
    /// The entity (e.g. person, organization, clinical information system, care team or device) which was the target of the communication. If receipts need to be tracked by an individual, a separate resource instance will need to be created for each recipient.  Multiple recipient communications are intended where either receipts are not tracked (e.g. a mass mail-out) or a receipt is captured in aggregate (all emails confirmed received by a particular time).
    List<Reference> recipient;
    /// The entity (e.g. person, organization, clinical information system, or device) which was the source of the communication.
    Reference sender;
    /// The reason or justification for the communication.
    List<CodeableConcept> reasonCode;
    /// Indicates another resource whose existence justifies this communication.
    List<Reference> reasonReference;
    /// Text, attachment(s), or resource(s) that was communicated to the recipient.
    List<CommunicationPayload> payload;
    /// Additional notes or commentary about the communication by the sender, receiver or other interested parties.
    List<Annotation> note;
 
    Communication.fromJSON( Map json ){
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
        this.inResponseTo = List<Reference>();
        if (json['inResponseTo'] != null && json['inResponseTo'].length > 0) {
          if( json['inResponseTo'] is List ){
            json['inResponseTo'].forEach((i){
              this.inResponseTo.add(FHIRObjectFactory.buildFromJSON('Reference', i));
            });
          } else {
            // this handles the case when the list only has one object and does not return as a list
            var i = json['inResponseTo'];
            this.inResponseTo.add(FHIRObjectFactory.buildFromJSON('Reference', i));
          }          
        }
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
        this.topic = json['topic'] == null ? null : FHIRObjectFactory.buildFromJSON('CodeableConcept', json['topic']);
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
        if( json['sent'] != null ) { this.sent = DateTime.parse(json['sent']);}
        this.extSent = json['_sent'] == null ? null : FHIRObjectFactory.buildFromJSON('Element', json['_sent']);
        if( json['received'] != null ) { this.received = DateTime.parse(json['received']);}
        this.extReceived = json['_received'] == null ? null : FHIRObjectFactory.buildFromJSON('Element', json['_received']);
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
        this.payload = List<CommunicationPayload>();
        if (json['payload'] != null && json['payload'].length > 0) {
          if( json['payload'] is List ){
            json['payload'].forEach((i){
              this.payload.add(FHIRObjectFactory.buildFromJSON('CommunicationPayload', i));
            });
          } else {
            // this handles the case when the list only has one object and does not return as a list
            var i = json['payload'];
            this.payload.add(FHIRObjectFactory.buildFromJSON('CommunicationPayload', i));
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
