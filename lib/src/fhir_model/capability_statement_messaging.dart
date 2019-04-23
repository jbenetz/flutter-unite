import 'extension.dart';
import 'fhir_object_factory.dart';
import 'capability_statement_endpoint.dart';
import 'element.dart';
import 'capability_statement_supported_message.dart';
/// A Capability Statement documents a set of capabilities (behaviors) of a FHIR Server for a particular version of FHIR that may be used as a statement of actual server functionality or a statement of required or desired server implementation.
class CapabilityStatementMessaging {
    /// Unique id for the element within a resource (for internal references). This may be any string value that does not contain spaces.
    String id;
    /// May be used to represent additional information that is not part of the basic definition of the element. To make the use of extensions safe and manageable, there is a strict set of governance  applied to the definition and use of extensions. Though any implementer can define an extension, there is a set of requirements that SHALL be met as part of the definition of the extension.
    List<Extension> extension;
    /// May be used to represent additional information that is not part of the basic definition of the element and that modifies the understanding of the element in which it is contained and/or the understanding of the containing element's descendants. Usually modifier elements provide negation or qualification. To make the use of extensions safe and manageable, there is a strict set of governance applied to the definition and use of extensions. Though any implementer can define an extension, there is a set of requirements that SHALL be met as part of the definition of the extension. Applications processing a resource are required to check for modifier extensions.
    /// 
    /// Modifier extensions SHALL NOT change the meaning of any elements on Resource or DomainResource (including cannot change the meaning of modifierExtension itself).
    List<Extension> modifierExtension;
    /// An endpoint (network accessible address) to which messages and/or replies are to be sent.
    List<CapabilityStatementEndpoint> endpoint;
    /// Length if the receiver's reliable messaging cache in minutes (if a receiver) or how long the cache length on the receiver should be (if a sender).
    int reliableCache;
    /// Extensions for reliableCache
    Element extReliableCache;
    /// Documentation about the system's messaging capabilities for this endpoint not otherwise documented by the capability statement.  For example, the process for becoming an authorized messaging exchange partner.
    String documentation;
    /// Extensions for documentation
    Element extDocumentation;
    /// References to message definitions for messages this system can send or receive.
    List<CapabilityStatementSupportedMessage> supportedMessage;
 
    CapabilityStatementMessaging.fromJSON( Map json ){
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
        this.endpoint = List<CapabilityStatementEndpoint>();
        if (json['endpoint'] != null && json['endpoint'].length > 0) {
          if( json['endpoint'] is List ){
            json['endpoint'].forEach((i){
              this.endpoint.add(FHIRObjectFactory.buildFromJSON('CapabilityStatementEndpoint', i));
            });
          } else {
            // this handles the case when the list only has one object and does not return as a list
            var i = json['endpoint'];
            this.endpoint.add(FHIRObjectFactory.buildFromJSON('CapabilityStatementEndpoint', i));
          }          
        }
        this.reliableCache = json['reliableCache'];
        this.extReliableCache = json['_reliableCache'] == null ? null : FHIRObjectFactory.buildFromJSON('Element', json['_reliableCache']);
        this.documentation = json['documentation'];
        this.extDocumentation = json['_documentation'] == null ? null : FHIRObjectFactory.buildFromJSON('Element', json['_documentation']);
        this.supportedMessage = List<CapabilityStatementSupportedMessage>();
        if (json['supportedMessage'] != null && json['supportedMessage'].length > 0) {
          if( json['supportedMessage'] is List ){
            json['supportedMessage'].forEach((i){
              this.supportedMessage.add(FHIRObjectFactory.buildFromJSON('CapabilityStatementSupportedMessage', i));
            });
          } else {
            // this handles the case when the list only has one object and does not return as a list
            var i = json['supportedMessage'];
            this.supportedMessage.add(FHIRObjectFactory.buildFromJSON('CapabilityStatementSupportedMessage', i));
          }          
        }
    }
}
