import 'extension.dart';
import 'fhir_object_factory.dart';
import 'codeable_concept.dart';
import 'reference.dart';
import 'element.dart';
import 'coding.dart';
import 'audit_event_network.dart';
/// A record of an event made for purposes of maintaining a security log. Typical uses include detection of intrusion attempts and monitoring for inappropriate usage.
class AuditEventAgent {
    /// Unique id for the element within a resource (for internal references). This may be any string value that does not contain spaces.
    String id;
    /// May be used to represent additional information that is not part of the basic definition of the element. To make the use of extensions safe and manageable, there is a strict set of governance  applied to the definition and use of extensions. Though any implementer can define an extension, there is a set of requirements that SHALL be met as part of the definition of the extension.
    List<Extension> extension;
    /// May be used to represent additional information that is not part of the basic definition of the element and that modifies the understanding of the element in which it is contained and/or the understanding of the containing element's descendants. Usually modifier elements provide negation or qualification. To make the use of extensions safe and manageable, there is a strict set of governance applied to the definition and use of extensions. Though any implementer can define an extension, there is a set of requirements that SHALL be met as part of the definition of the extension. Applications processing a resource are required to check for modifier extensions.
    /// 
    /// Modifier extensions SHALL NOT change the meaning of any elements on Resource or DomainResource (including cannot change the meaning of modifierExtension itself).
    List<Extension> modifierExtension;
    /// Specification of the participation type the user plays when performing the event.
    CodeableConcept type;
    /// The security role that the user was acting under, that come from local codes defined by the access control security system (e.g. RBAC, ABAC) used in the local context.
    List<CodeableConcept> role;
    /// Reference to who this agent is that was involved in the event.
    Reference who;
    /// Alternative agent Identifier. For a human, this should be a user identifier text string from authentication system. This identifier would be one known to a common authentication system (e.g. single sign-on), if available.
    String altId;
    /// Extensions for altId
    Element extAltId;
    /// Human-meaningful name for the agent.
    String name;
    /// Extensions for name
    Element extName;
    /// Indicator that the user is or is not the requestor, or initiator, for the event being audited.
    bool requestor;
    /// Extensions for requestor
    Element extRequestor;
    /// Where the event occurred.
    Reference location;
    /// The policy or plan that authorized the activity being recorded. Typically, a single activity may have multiple applicable policies, such as patient consent, guarantor funding, etc. The policy would also indicate the security token used.
    List<String> policy;
    /// Extensions for policy
    List<Element> extPolicy;
    /// Type of media involved. Used when the event is about exporting/importing onto media.
    Coding media;
    /// Logical network location for application activity, if the activity has a network location.
    AuditEventNetwork network;
    /// The reason (purpose of use), specific to this agent, that was used during the event being recorded.
    List<CodeableConcept> purposeOfUse;
 
    AuditEventAgent.fromJSON( Map json ){
        this.id = json['id'];
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
        this.type = json['type'] == null ? null : FHIRObjectFactory.buildFromJSON('CodeableConcept', json['type']);
        this.role = List<CodeableConcept>();
        if (json['role'] != null && json['role'].length > 0) {
          if( json['role'] is List ){
            json['role'].forEach((i){
              this.role.add(FHIRObjectFactory.buildFromJSON('CodeableConcept', i));
            });
          } else {
            // this handles the case when the list only has one object and does not return as a list
            var i = json['role'];
            this.role.add(FHIRObjectFactory.buildFromJSON('CodeableConcept', i));
          }          
        }
        this.who = json['who'] == null ? null : FHIRObjectFactory.buildFromJSON('Reference', json['who']);
        this.altId = json['altId'];
        this.extAltId = json['_altId'] == null ? null : FHIRObjectFactory.buildFromJSON('Element', json['_altId']);
        this.name = json['name'];
        this.extName = json['_name'] == null ? null : FHIRObjectFactory.buildFromJSON('Element', json['_name']);
        this.requestor = json['requestor'];
        this.extRequestor = json['_requestor'] == null ? null : FHIRObjectFactory.buildFromJSON('Element', json['_requestor']);
        this.location = json['location'] == null ? null : FHIRObjectFactory.buildFromJSON('Reference', json['location']);
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
        this.media = json['media'] == null ? null : FHIRObjectFactory.buildFromJSON('Coding', json['media']);
        this.network = json['network'] == null ? null : FHIRObjectFactory.buildFromJSON('AuditEventNetwork', json['network']);
        this.purposeOfUse = List<CodeableConcept>();
        if (json['purposeOfUse'] != null && json['purposeOfUse'].length > 0) {
          if( json['purposeOfUse'] is List ){
            json['purposeOfUse'].forEach((i){
              this.purposeOfUse.add(FHIRObjectFactory.buildFromJSON('CodeableConcept', i));
            });
          } else {
            // this handles the case when the list only has one object and does not return as a list
            var i = json['purposeOfUse'];
            this.purposeOfUse.add(FHIRObjectFactory.buildFromJSON('CodeableConcept', i));
          }          
        }
    }
}
