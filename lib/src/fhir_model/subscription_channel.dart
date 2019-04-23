import 'extension.dart';
import 'fhir_object_factory.dart';
import 'element.dart';
/// The subscription resource is used to define a push-based subscription from a server to another system. Once a subscription is registered with the server, the server checks every resource that is created or updated, and if the resource matches the given criteria, it sends a message on the defined "channel" so that another system can take an appropriate action.
class SubscriptionChannel {
    /// Unique id for the element within a resource (for internal references). This may be any string value that does not contain spaces.
    String id;
    /// May be used to represent additional information that is not part of the basic definition of the element. To make the use of extensions safe and manageable, there is a strict set of governance  applied to the definition and use of extensions. Though any implementer can define an extension, there is a set of requirements that SHALL be met as part of the definition of the extension.
    List<Extension> extension;
    /// May be used to represent additional information that is not part of the basic definition of the element and that modifies the understanding of the element in which it is contained and/or the understanding of the containing element's descendants. Usually modifier elements provide negation or qualification. To make the use of extensions safe and manageable, there is a strict set of governance applied to the definition and use of extensions. Though any implementer can define an extension, there is a set of requirements that SHALL be met as part of the definition of the extension. Applications processing a resource are required to check for modifier extensions.
    /// 
    /// Modifier extensions SHALL NOT change the meaning of any elements on Resource or DomainResource (including cannot change the meaning of modifierExtension itself).
    List<Extension> modifierExtension;
    /// The type of channel to send notifications on.
    String type;
    /// Extensions for type
    Element extType;
    /// The url that describes the actual end-point to send messages to.
    String endpoint;
    /// Extensions for endpoint
    Element extEndpoint;
    /// The mime type to send the payload in - either application/fhir+xml, or application/fhir+json. If the payload is not present, then there is no payload in the notification, just a notification. The mime type "text/plain" may also be used for Email and SMS subscriptions.
    String payload;
    /// Extensions for payload
    Element extPayload;
    /// Additional headers / information to send as part of the notification.
    List<String> header;
    /// Extensions for header
    List<Element> extHeader;
 
    SubscriptionChannel.fromJSON( Map json ){
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
        this.type = json['type'];
        this.extType = json['_type'] == null ? null : FHIRObjectFactory.buildFromJSON('Element', json['_type']);
        this.endpoint = json['endpoint'];
        this.extEndpoint = json['_endpoint'] == null ? null : FHIRObjectFactory.buildFromJSON('Element', json['_endpoint']);
        this.payload = json['payload'];
        this.extPayload = json['_payload'] == null ? null : FHIRObjectFactory.buildFromJSON('Element', json['_payload']);
        this.header = List<String>();
        if (json['header'] != null && json['header'].length > 0) {
          if( json['header'] is List ){
            json['header'].forEach((i){
              this.header.add(i);
            });
          } else {
            // this handles the case when the list only has one object and does not return as a list
            var i = json['header'];
            this.header.add(i);
          }          
        }
        this.extHeader = List<Element>();
        if (json['_header'] != null && json['_header'].length > 0) {
          if( json['_header'] is List ){
            json['_header'].forEach((i){
              this.extHeader.add(FHIRObjectFactory.buildFromJSON('Element', i));
            });
          } else {
            // this handles the case when the list only has one object and does not return as a list
            var i = json['_header'];
            this.extHeader.add(FHIRObjectFactory.buildFromJSON('Element', i));
          }          
        }
    }
}
