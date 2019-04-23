import 'extension.dart';
import 'fhir_object_factory.dart';
import 'reference.dart';
import 'coding.dart';
import 'element.dart';
import 'audit_event_detail.dart';
/// A record of an event made for purposes of maintaining a security log. Typical uses include detection of intrusion attempts and monitoring for inappropriate usage.
class AuditEventEntity {
    /// Unique id for the element within a resource (for internal references). This may be any string value that does not contain spaces.
    String id;
    /// May be used to represent additional information that is not part of the basic definition of the element. To make the use of extensions safe and manageable, there is a strict set of governance  applied to the definition and use of extensions. Though any implementer can define an extension, there is a set of requirements that SHALL be met as part of the definition of the extension.
    List<Extension> extension;
    /// May be used to represent additional information that is not part of the basic definition of the element and that modifies the understanding of the element in which it is contained and/or the understanding of the containing element's descendants. Usually modifier elements provide negation or qualification. To make the use of extensions safe and manageable, there is a strict set of governance applied to the definition and use of extensions. Though any implementer can define an extension, there is a set of requirements that SHALL be met as part of the definition of the extension. Applications processing a resource are required to check for modifier extensions.
    /// 
    /// Modifier extensions SHALL NOT change the meaning of any elements on Resource or DomainResource (including cannot change the meaning of modifierExtension itself).
    List<Extension> modifierExtension;
    /// Identifies a specific instance of the entity. The reference should be version specific.
    Reference what;
    /// The type of the object that was involved in this audit event.
    Coding type;
    /// Code representing the role the entity played in the event being audited.
    Coding role;
    /// Identifier for the data life-cycle stage for the entity.
    Coding lifecycle;
    /// Security labels for the identified entity.
    List<Coding> securityLabel;
    /// A name of the entity in the audit event.
    String name;
    /// Extensions for name
    Element extName;
    /// Text that describes the entity in more detail.
    String description;
    /// Extensions for description
    Element extDescription;
    /// The query parameters for a query-type entities.
    String query;
    /// Extensions for query
    Element extQuery;
    /// Tagged value pairs for conveying additional information about the entity.
    List<AuditEventDetail> detail;
 
    AuditEventEntity.fromJSON( Map json ){
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
        this.what = json['what'] == null ? null : FHIRObjectFactory.buildFromJSON('Reference', json['what']);
        this.type = json['type'] == null ? null : FHIRObjectFactory.buildFromJSON('Coding', json['type']);
        this.role = json['role'] == null ? null : FHIRObjectFactory.buildFromJSON('Coding', json['role']);
        this.lifecycle = json['lifecycle'] == null ? null : FHIRObjectFactory.buildFromJSON('Coding', json['lifecycle']);
        this.securityLabel = List<Coding>();
        if (json['securityLabel'] != null && json['securityLabel'].length > 0) {
          if( json['securityLabel'] is List ){
            json['securityLabel'].forEach((i){
              this.securityLabel.add(FHIRObjectFactory.buildFromJSON('Coding', i));
            });
          } else {
            // this handles the case when the list only has one object and does not return as a list
            var i = json['securityLabel'];
            this.securityLabel.add(FHIRObjectFactory.buildFromJSON('Coding', i));
          }          
        }
        this.name = json['name'];
        this.extName = json['_name'] == null ? null : FHIRObjectFactory.buildFromJSON('Element', json['_name']);
        this.description = json['description'];
        this.extDescription = json['_description'] == null ? null : FHIRObjectFactory.buildFromJSON('Element', json['_description']);
        this.query = json['query'];
        this.extQuery = json['_query'] == null ? null : FHIRObjectFactory.buildFromJSON('Element', json['_query']);
        this.detail = List<AuditEventDetail>();
        if (json['detail'] != null && json['detail'].length > 0) {
          if( json['detail'] is List ){
            json['detail'].forEach((i){
              this.detail.add(FHIRObjectFactory.buildFromJSON('AuditEventDetail', i));
            });
          } else {
            // this handles the case when the list only has one object and does not return as a list
            var i = json['detail'];
            this.detail.add(FHIRObjectFactory.buildFromJSON('AuditEventDetail', i));
          }          
        }
    }
}
