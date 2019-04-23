import 'meta.dart';
import 'fhir_object_factory.dart';
import 'element.dart';
import 'narrative.dart';
import 'extension.dart';
import 'reference.dart';
import 'period.dart';
import 'codeable_concept.dart';
import 'provenance_agent.dart';
import 'provenance_entity.dart';
import 'signature.dart';
/// Provenance of a resource is a record that describes entities and processes involved in producing and delivering or otherwise influencing that resource. Provenance provides a critical foundation for assessing authenticity, enabling trust, and allowing reproducibility. Provenance assertions are a form of contextual metadata and can themselves become important records with their own provenance. Provenance statement indicates clinical significance in terms of confidence in authenticity, reliability, and trustworthiness, integrity, and stage in lifecycle (e.g. Document Completion - has the artifact been legally authenticated), all of which may impact security, privacy, and trust policies.
class Provenance {
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
    /// The Reference(s) that were generated or updated by  the activity described in this resource. A provenance can point to more than one target if multiple resources were created/updated by the same activity.
    List<Reference> target;
    /// The period during which the activity occurred.
    Period occurredPeriod;
    /// Extensions for occurredDateTime
    Element extOccurredDateTime;
    /// The instant of time at which the activity was recorded.
    DateTime recorded;
    /// Extensions for recorded
    Element extRecorded;
    /// Policy or plan the activity was defined by. Typically, a single activity may have multiple applicable policy documents, such as patient consent, guarantor funding, etc.
    List<String> policy;
    /// Extensions for policy
    List<Element> extPolicy;
    /// Where the activity occurred, if relevant.
    Reference location;
    /// The reason that the activity was taking place.
    List<CodeableConcept> reason;
    /// An activity is something that occurs over a period of time and acts upon or with entities; it may include consuming, processing, transforming, modifying, relocating, using, or generating entities.
    CodeableConcept activity;
    /// An actor taking a role in an activity  for which it can be assigned some degree of responsibility for the activity taking place.
    List<ProvenanceAgent> agent;
    /// An entity used in this activity.
    List<ProvenanceEntity> entity;
    /// A digital signature on the target Reference(s). The signer should match a Provenance.agent. The purpose of the signature is indicated.
    List<Signature> signature;
 
    Provenance.fromJSON( Map json ){
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
        this.target = List<Reference>();
        if (json['target'] != null && json['target'].length > 0) {
          if( json['target'] is List ){
            json['target'].forEach((i){
              this.target.add(FHIRObjectFactory.buildFromJSON('Reference', i));
            });
          } else {
            // this handles the case when the list only has one object and does not return as a list
            var i = json['target'];
            this.target.add(FHIRObjectFactory.buildFromJSON('Reference', i));
          }          
        }
        this.occurredPeriod = json['occurredPeriod'] == null ? null : FHIRObjectFactory.buildFromJSON('Period', json['occurredPeriod']);
        this.extOccurredDateTime = json['_occurredDateTime'] == null ? null : FHIRObjectFactory.buildFromJSON('Element', json['_occurredDateTime']);
        if( json['recorded'] != null ) { this.recorded = DateTime.parse(json['recorded']);}
        this.extRecorded = json['_recorded'] == null ? null : FHIRObjectFactory.buildFromJSON('Element', json['_recorded']);
        this.policy = List<String>();
        if (json['policy'] != null && json['policy'].length > 0) {
          if( json['policy'] is List ){
            json['policy'].forEach((i){
              this.policy.add(i);
            });
          } else {
            // this handles the case when the list only has one object and does not return as a list
            var i = json['policy'];
            this.policy.add(i);
          }          
        }
        this.extPolicy = List<Element>();
        if (json['_policy'] != null && json['_policy'].length > 0) {
          if( json['_policy'] is List ){
            json['_policy'].forEach((i){
              this.extPolicy.add(FHIRObjectFactory.buildFromJSON('Element', i));
            });
          } else {
            // this handles the case when the list only has one object and does not return as a list
            var i = json['_policy'];
            this.extPolicy.add(FHIRObjectFactory.buildFromJSON('Element', i));
          }          
        }
        this.location = json['location'] == null ? null : FHIRObjectFactory.buildFromJSON('Reference', json['location']);
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
        this.activity = json['activity'] == null ? null : FHIRObjectFactory.buildFromJSON('CodeableConcept', json['activity']);
        this.agent = List<ProvenanceAgent>();
        if (json['agent'] != null && json['agent'].length > 0) {
          if( json['agent'] is List ){
            json['agent'].forEach((i){
              this.agent.add(FHIRObjectFactory.buildFromJSON('ProvenanceAgent', i));
            });
          } else {
            // this handles the case when the list only has one object and does not return as a list
            var i = json['agent'];
            this.agent.add(FHIRObjectFactory.buildFromJSON('ProvenanceAgent', i));
          }          
        }
        this.entity = List<ProvenanceEntity>();
        if (json['entity'] != null && json['entity'].length > 0) {
          if( json['entity'] is List ){
            json['entity'].forEach((i){
              this.entity.add(FHIRObjectFactory.buildFromJSON('ProvenanceEntity', i));
            });
          } else {
            // this handles the case when the list only has one object and does not return as a list
            var i = json['entity'];
            this.entity.add(FHIRObjectFactory.buildFromJSON('ProvenanceEntity', i));
          }          
        }
        this.signature = List<Signature>();
        if (json['signature'] != null && json['signature'].length > 0) {
          if( json['signature'] is List ){
            json['signature'].forEach((i){
              this.signature.add(FHIRObjectFactory.buildFromJSON('Signature', i));
            });
          } else {
            // this handles the case when the list only has one object and does not return as a list
            var i = json['signature'];
            this.signature.add(FHIRObjectFactory.buildFromJSON('Signature', i));
          }          
        }
    }
}
