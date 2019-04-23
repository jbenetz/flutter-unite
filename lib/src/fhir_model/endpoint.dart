import 'meta.dart';
import 'fhir_object_factory.dart';
import 'element.dart';
import 'narrative.dart';
import 'extension.dart';
import 'identifier.dart';
import 'coding.dart';
import 'reference.dart';
import 'contact_point.dart';
import 'period.dart';
import 'codeable_concept.dart';
/// The technical details of an endpoint that can be used for electronic services, such as for web services providing XDS.b or a REST endpoint for another FHIR server. This may include any security context information.
class Endpoint {
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
    /// Identifier for the organization that is used to identify the endpoint across multiple disparate systems.
    List<Identifier> identifier;
    /// active | suspended | error | off | test.
    String status;
    /// Extensions for status
    Element extStatus;
    /// A coded value that represents the technical details of the usage of this endpoint, such as what WSDLs should be used in what way. (e.g. XDS.b/DICOM/cds-hook).
    Coding connectionType;
    /// A friendly name that this endpoint can be referred to with.
    String name;
    /// Extensions for name
    Element extName;
    /// The organization that manages this endpoint (even if technically another organization is hosting this in the cloud, it is the organization associated with the data).
    Reference managingOrganization;
    /// Contact details for a human to contact about the subscription. The primary use of this for system administrator troubleshooting.
    List<ContactPoint> contact;
    /// The interval during which the endpoint is expected to be operational.
    Period period;
    /// The payload type describes the acceptable content that can be communicated on the endpoint.
    List<CodeableConcept> payloadType;
    /// The mime type to send the payload in - e.g. application/fhir+xml, application/fhir+json. If the mime type is not specified, then the sender could send any content (including no content depending on the connectionType).
    List<String> payloadMimeType;
    /// Extensions for payloadMimeType
    List<Element> extPayloadMimeType;
    /// The uri that describes the actual end-point to connect to.
    String address;
    /// Extensions for address
    Element extAddress;
    /// Additional headers / information to send as part of the notification.
    List<String> header;
    /// Extensions for header
    List<Element> extHeader;
 
    Endpoint.fromJSON( Map json ){
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
        this.status = json['status'];
        this.extStatus = json['_status'] == null ? null : FHIRObjectFactory.buildFromJSON('Element', json['_status']);
        this.connectionType = json['connectionType'] == null ? null : FHIRObjectFactory.buildFromJSON('Coding', json['connectionType']);
        this.name = json['name'];
        this.extName = json['_name'] == null ? null : FHIRObjectFactory.buildFromJSON('Element', json['_name']);
        this.managingOrganization = json['managingOrganization'] == null ? null : FHIRObjectFactory.buildFromJSON('Reference', json['managingOrganization']);
        this.contact = List<ContactPoint>();
        if (json['contact'] != null && json['contact'].length > 0) {
          if( json['contact'] is List ){
            json['contact'].forEach((i){
              this.contact.add(FHIRObjectFactory.buildFromJSON('ContactPoint', i));
            });
          } else {
            // this handles the case when the list only has one object and does not return as a list
            var i = json['contact'];
            this.contact.add(FHIRObjectFactory.buildFromJSON('ContactPoint', i));
          }          
        }
        this.period = json['period'] == null ? null : FHIRObjectFactory.buildFromJSON('Period', json['period']);
        this.payloadType = List<CodeableConcept>();
        if (json['payloadType'] != null && json['payloadType'].length > 0) {
          if( json['payloadType'] is List ){
            json['payloadType'].forEach((i){
              this.payloadType.add(FHIRObjectFactory.buildFromJSON('CodeableConcept', i));
            });
          } else {
            // this handles the case when the list only has one object and does not return as a list
            var i = json['payloadType'];
            this.payloadType.add(FHIRObjectFactory.buildFromJSON('CodeableConcept', i));
          }          
        }
        this.payloadMimeType = List<String>();
        if (json['payloadMimeType'] != null && json['payloadMimeType'].length > 0) {
          if( json['payloadMimeType'] is List ){
            json['payloadMimeType'].forEach((i){
              this.payloadMimeType.add(i);
            });
          } else {
            // this handles the case when the list only has one object and does not return as a list
            var i = json['payloadMimeType'];
            this.payloadMimeType.add(i);
          }          
        }
        this.extPayloadMimeType = List<Element>();
        if (json['_payloadMimeType'] != null && json['_payloadMimeType'].length > 0) {
          if( json['_payloadMimeType'] is List ){
            json['_payloadMimeType'].forEach((i){
              this.extPayloadMimeType.add(FHIRObjectFactory.buildFromJSON('Element', i));
            });
          } else {
            // this handles the case when the list only has one object and does not return as a list
            var i = json['_payloadMimeType'];
            this.extPayloadMimeType.add(FHIRObjectFactory.buildFromJSON('Element', i));
          }          
        }
        this.address = json['address'];
        this.extAddress = json['_address'] == null ? null : FHIRObjectFactory.buildFromJSON('Element', json['_address']);
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
