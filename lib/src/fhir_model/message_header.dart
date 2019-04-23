import 'meta.dart';
import 'fhir_object_factory.dart';
import 'element.dart';
import 'narrative.dart';
import 'extension.dart';
import 'coding.dart';
import 'message_header_destination.dart';
import 'reference.dart';
import 'message_header_source.dart';
import 'codeable_concept.dart';
import 'message_header_response.dart';
/// The header for a message exchange that is either requesting or responding to an action.  The reference(s) that are the subject of the action as well as other information related to the action are typically transmitted in a bundle in which the MessageHeader resource instance is the first resource in the bundle.
class MessageHeader {
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
    /// Code that identifies the event this message represents and connects it with its definition. Events defined as part of the FHIR specification have the system value "http://terminology.hl7.org/CodeSystem/message-events".  Alternatively uri to the EventDefinition.
    Coding eventCoding;
    /// Extensions for eventUri
    Element extEventUri;
    /// The destination application which the message is intended for.
    List<MessageHeaderDestination> destination;
    /// Identifies the sending system to allow the use of a trust relationship.
    Reference sender;
    /// The person or device that performed the data entry leading to this message. When there is more than one candidate, pick the most proximal to the message. Can provide other enterers in extensions.
    Reference enterer;
    /// The logical author of the message - the person or device that decided the described event should happen. When there is more than one candidate, pick the most proximal to the MessageHeader. Can provide other authors in extensions.
    Reference author;
    /// The source application from which this message originated.
    MessageHeaderSource source;
    /// The person or organization that accepts overall responsibility for the contents of the message. The implication is that the message event happened under the policies of the responsible party.
    Reference responsible;
    /// Coded indication of the cause for the event - indicates  a reason for the occurrence of the event that is a focus of this message.
    CodeableConcept reason;
    /// Information about the message that this message is a response to.  Only present if this message is a response.
    MessageHeaderResponse response;
    /// The actual data of the message - a reference to the root/focus class of the event.
    List<Reference> focus;
    /// Permanent link to the MessageDefinition for this message.
    String definition;
 
    MessageHeader.fromJSON( Map json ){
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
        this.eventCoding = json['eventCoding'] == null ? null : FHIRObjectFactory.buildFromJSON('Coding', json['eventCoding']);
        this.extEventUri = json['_eventUri'] == null ? null : FHIRObjectFactory.buildFromJSON('Element', json['_eventUri']);
        this.destination = List<MessageHeaderDestination>();
        if (json['destination'] != null && json['destination'].length > 0) {
          if( json['destination'] is List ){
            json['destination'].forEach((i){
              this.destination.add(FHIRObjectFactory.buildFromJSON('MessageHeaderDestination', i));
            });
          } else {
            // this handles the case when the list only has one object and does not return as a list
            var i = json['destination'];
            this.destination.add(FHIRObjectFactory.buildFromJSON('MessageHeaderDestination', i));
          }          
        }
        this.sender = json['sender'] == null ? null : FHIRObjectFactory.buildFromJSON('Reference', json['sender']);
        this.enterer = json['enterer'] == null ? null : FHIRObjectFactory.buildFromJSON('Reference', json['enterer']);
        this.author = json['author'] == null ? null : FHIRObjectFactory.buildFromJSON('Reference', json['author']);
        this.source = json['source'] == null ? null : FHIRObjectFactory.buildFromJSON('MessageHeaderSource', json['source']);
        this.responsible = json['responsible'] == null ? null : FHIRObjectFactory.buildFromJSON('Reference', json['responsible']);
        this.reason = json['reason'] == null ? null : FHIRObjectFactory.buildFromJSON('CodeableConcept', json['reason']);
        this.response = json['response'] == null ? null : FHIRObjectFactory.buildFromJSON('MessageHeaderResponse', json['response']);
        this.focus = List<Reference>();
        if (json['focus'] != null && json['focus'].length > 0) {
          if( json['focus'] is List ){
            json['focus'].forEach((i){
              this.focus.add(FHIRObjectFactory.buildFromJSON('Reference', i));
            });
          } else {
            // this handles the case when the list only has one object and does not return as a list
            var i = json['focus'];
            this.focus.add(FHIRObjectFactory.buildFromJSON('Reference', i));
          }          
        }
        this.definition = json['definition'];
    }
}
