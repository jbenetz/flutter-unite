import 'meta.dart';
import 'fhir_object_factory.dart';
import 'element.dart';
import 'narrative.dart';
import 'extension.dart';
import 'coding.dart';
import 'period.dart';
import 'codeable_concept.dart';
import 'audit_event_agent.dart';
import 'audit_event_source.dart';
import 'audit_event_entity.dart';
/// A record of an event made for purposes of maintaining a security log. Typical uses include detection of intrusion attempts and monitoring for inappropriate usage.
class AuditEvent {
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
    /// Identifier for a family of the event.  For example, a menu item, program, rule, policy, function code, application name or URL. It identifies the performed function.
    Coding type;
    /// Identifier for the category of event.
    List<Coding> subtype;
    /// Indicator for type of action performed during the event that generated the audit.
    String action;
    /// Extensions for action
    Element extAction;
    /// The period during which the activity occurred.
    Period period;
    /// The time when the event was recorded.
    DateTime recorded;
    /// Extensions for recorded
    Element extRecorded;
    /// Indicates whether the event succeeded or failed.
    String outcome;
    /// Extensions for outcome
    Element extOutcome;
    /// A free text description of the outcome of the event.
    String outcomeDesc;
    /// Extensions for outcomeDesc
    Element extOutcomeDesc;
    /// The purposeOfUse (reason) that was used during the event being recorded.
    List<CodeableConcept> purposeOfEvent;
    /// An actor taking an active role in the event or activity that is logged.
    List<AuditEventAgent> agent;
    /// The system that is reporting the event.
    AuditEventSource source;
    /// Specific instances of data or objects that have been accessed.
    List<AuditEventEntity> entity;
 
    AuditEvent.fromJSON( Map json ){
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
        this.type = json['type'] == null ? null : FHIRObjectFactory.buildFromJSON('Coding', json['type']);
        this.subtype = List<Coding>();
        if (json['subtype'] != null && json['subtype'].length > 0) {
          if( json['subtype'] is List ){
            json['subtype'].forEach((i){
              this.subtype.add(FHIRObjectFactory.buildFromJSON('Coding', i));
            });
          } else {
            // this handles the case when the list only has one object and does not return as a list
            var i = json['subtype'];
            this.subtype.add(FHIRObjectFactory.buildFromJSON('Coding', i));
          }          
        }
        this.action = json['action'];
        this.extAction = json['_action'] == null ? null : FHIRObjectFactory.buildFromJSON('Element', json['_action']);
        this.period = json['period'] == null ? null : FHIRObjectFactory.buildFromJSON('Period', json['period']);
        if( json['recorded'] != null ) { this.recorded = DateTime.parse(json['recorded']);}
        this.extRecorded = json['_recorded'] == null ? null : FHIRObjectFactory.buildFromJSON('Element', json['_recorded']);
        this.outcome = json['outcome'];
        this.extOutcome = json['_outcome'] == null ? null : FHIRObjectFactory.buildFromJSON('Element', json['_outcome']);
        this.outcomeDesc = json['outcomeDesc'];
        this.extOutcomeDesc = json['_outcomeDesc'] == null ? null : FHIRObjectFactory.buildFromJSON('Element', json['_outcomeDesc']);
        this.purposeOfEvent = List<CodeableConcept>();
        if (json['purposeOfEvent'] != null && json['purposeOfEvent'].length > 0) {
          if( json['purposeOfEvent'] is List ){
            json['purposeOfEvent'].forEach((i){
              this.purposeOfEvent.add(FHIRObjectFactory.buildFromJSON('CodeableConcept', i));
            });
          } else {
            // this handles the case when the list only has one object and does not return as a list
            var i = json['purposeOfEvent'];
            this.purposeOfEvent.add(FHIRObjectFactory.buildFromJSON('CodeableConcept', i));
          }          
        }
        this.agent = List<AuditEventAgent>();
        if (json['agent'] != null && json['agent'].length > 0) {
          if( json['agent'] is List ){
            json['agent'].forEach((i){
              this.agent.add(FHIRObjectFactory.buildFromJSON('AuditEventAgent', i));
            });
          } else {
            // this handles the case when the list only has one object and does not return as a list
            var i = json['agent'];
            this.agent.add(FHIRObjectFactory.buildFromJSON('AuditEventAgent', i));
          }          
        }
        this.source = json['source'] == null ? null : FHIRObjectFactory.buildFromJSON('AuditEventSource', json['source']);
        this.entity = List<AuditEventEntity>();
        if (json['entity'] != null && json['entity'].length > 0) {
          if( json['entity'] is List ){
            json['entity'].forEach((i){
              this.entity.add(FHIRObjectFactory.buildFromJSON('AuditEventEntity', i));
            });
          } else {
            // this handles the case when the list only has one object and does not return as a list
            var i = json['entity'];
            this.entity.add(FHIRObjectFactory.buildFromJSON('AuditEventEntity', i));
          }          
        }
    }
}
