import 'meta.dart';
import 'fhir_object_factory.dart';
import 'element.dart';
import 'narrative.dart';
import 'extension.dart';
import 'identifier.dart';
import 'reference.dart';
import 'codeable_concept.dart';
import 'annotation.dart';
import 'request_group_action.dart';
/// A group of related requests that can be used to capture intended activities that have inter-dependencies such as "give this medication after that one".
class RequestGroup {
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
    /// Allows a service to provide a unique, business identifier for the request.
    List<Identifier> identifier;
    /// A canonical URL referencing a FHIR-defined protocol, guideline, orderset or other definition that is adhered to in whole or in part by this request.
    List<String> instantiatesCanonical;
    /// Extensions for instantiatesCanonical
    List<Element> extInstantiatesCanonical;
    /// A URL referencing an externally defined protocol, guideline, orderset or other definition that is adhered to in whole or in part by this request.
    List<String> instantiatesUri;
    /// Extensions for instantiatesUri
    List<Element> extInstantiatesUri;
    /// A plan, proposal or order that is fulfilled in whole or in part by this request.
    List<Reference> basedOn;
    /// Completed or terminated request(s) whose function is taken by this new request.
    List<Reference> replaces;
    /// A shared identifier common to all requests that were authorized more or less simultaneously by a single author, representing the identifier of the requisition, prescription or similar form.
    Identifier groupIdentifier;
    /// The current state of the request. For request groups, the status reflects the status of all the requests in the group.
    String status;
    /// Extensions for status
    Element extStatus;
    /// Indicates the level of authority/intentionality associated with the request and where the request fits into the workflow chain.
    String intent;
    /// Extensions for intent
    Element extIntent;
    /// Indicates how quickly the request should be addressed with respect to other requests.
    String priority;
    /// Extensions for priority
    Element extPriority;
    /// A code that identifies what the overall request group is.
    CodeableConcept code;
    /// The subject for which the request group was created.
    Reference subject;
    /// Describes the context of the request group, if any.
    Reference encounter;
    /// Indicates when the request group was created.
    DateTime authoredOn;
    /// Extensions for authoredOn
    Element extAuthoredOn;
    /// Provides a reference to the author of the request group.
    Reference author;
    /// Describes the reason for the request group in coded or textual form.
    List<CodeableConcept> reasonCode;
    /// Indicates another resource whose existence justifies this request group.
    List<Reference> reasonReference;
    /// Provides a mechanism to communicate additional information about the response.
    List<Annotation> note;
    /// The actions, if any, produced by the evaluation of the artifact.
    List<RequestGroupAction> action;
 
    RequestGroup.fromJSON( Map json ){
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
        this.intent = json['intent'];
        this.extIntent = json['_intent'] == null ? null : FHIRObjectFactory.buildFromJSON('Element', json['_intent']);
        this.priority = json['priority'];
        this.extPriority = json['_priority'] == null ? null : FHIRObjectFactory.buildFromJSON('Element', json['_priority']);
        this.code = json['code'] == null ? null : FHIRObjectFactory.buildFromJSON('CodeableConcept', json['code']);
        this.subject = json['subject'] == null ? null : FHIRObjectFactory.buildFromJSON('Reference', json['subject']);
        this.encounter = json['encounter'] == null ? null : FHIRObjectFactory.buildFromJSON('Reference', json['encounter']);
        if( json['authoredOn'] != null ) { this.authoredOn = DateTime.parse(json['authoredOn']);}
        this.extAuthoredOn = json['_authoredOn'] == null ? null : FHIRObjectFactory.buildFromJSON('Element', json['_authoredOn']);
        this.author = json['author'] == null ? null : FHIRObjectFactory.buildFromJSON('Reference', json['author']);
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
        this.action = List<RequestGroupAction>();
        if (json['action'] != null && json['action'].length > 0) {
          if( json['action'] is List ){
            json['action'].forEach((i){
              this.action.add(FHIRObjectFactory.buildFromJSON('RequestGroupAction', i));
            });
          } else {
            // this handles the case when the list only has one object and does not return as a list
            var i = json['action'];
            this.action.add(FHIRObjectFactory.buildFromJSON('RequestGroupAction', i));
          }          
        }
    }
}
