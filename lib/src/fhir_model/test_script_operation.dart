import 'extension.dart';
import 'fhir_object_factory.dart';
import 'coding.dart';
import 'element.dart';
import 'test_script_request_header.dart';
/// A structured set of tests against a FHIR server or client implementation to determine compliance against the FHIR specification.
class TestScriptOperation {
    /// Unique id for the element within a resource (for internal references). This may be any string value that does not contain spaces.
    String id;
    /// May be used to represent additional information that is not part of the basic definition of the element. To make the use of extensions safe and manageable, there is a strict set of governance  applied to the definition and use of extensions. Though any implementer can define an extension, there is a set of requirements that SHALL be met as part of the definition of the extension.
    List<Extension> extension;
    /// May be used to represent additional information that is not part of the basic definition of the element and that modifies the understanding of the element in which it is contained and/or the understanding of the containing element's descendants. Usually modifier elements provide negation or qualification. To make the use of extensions safe and manageable, there is a strict set of governance applied to the definition and use of extensions. Though any implementer can define an extension, there is a set of requirements that SHALL be met as part of the definition of the extension. Applications processing a resource are required to check for modifier extensions.
    /// 
    /// Modifier extensions SHALL NOT change the meaning of any elements on Resource or DomainResource (including cannot change the meaning of modifierExtension itself).
    List<Extension> modifierExtension;
    /// Server interaction or operation type.
    Coding type;
    /// The type of the resource.  See http://build.fhir.org/resourcelist.html.
    String resource;
    /// Extensions for resource
    Element extResource;
    /// The label would be used for tracking/logging purposes by test engines.
    String label;
    /// Extensions for label
    Element extLabel;
    /// The description would be used by test engines for tracking and reporting purposes.
    String description;
    /// Extensions for description
    Element extDescription;
    /// The mime-type to use for RESTful operation in the 'Accept' header.
    String accept;
    /// Extensions for accept
    Element extAccept;
    /// The mime-type to use for RESTful operation in the 'Content-Type' header.
    String contentType;
    /// Extensions for contentType
    Element extContentType;
    /// The server where the request message is destined for.  Must be one of the server numbers listed in TestScript.destination section.
    int destination;
    /// Extensions for destination
    Element extDestination;
    /// Whether or not to implicitly send the request url in encoded format. The default is true to match the standard RESTful client behavior. Set to false when communicating with a server that does not support encoded url paths.
    bool encodeRequestUrl;
    /// Extensions for encodeRequestUrl
    Element extEncodeRequestUrl;
    /// The HTTP method the test engine MUST use for this operation regardless of any other operation details.
    String method;
    /// Extensions for method
    Element extMethod;
    /// The server where the request message originates from.  Must be one of the server numbers listed in TestScript.origin section.
    int origin;
    /// Extensions for origin
    Element extOrigin;
    /// Path plus parameters after [type].  Used to set parts of the request URL explicitly.
    String params;
    /// Extensions for params
    Element extParams;
    /// Header elements would be used to set HTTP headers.
    List<TestScriptRequestHeader> requestHeader;
    /// The fixture id (maybe new) to map to the request.
    String requestId;
    /// Extensions for requestId
    Element extRequestId;
    /// The fixture id (maybe new) to map to the response.
    String responseId;
    /// Extensions for responseId
    Element extResponseId;
    /// The id of the fixture used as the body of a PUT or POST request.
    String sourceId;
    /// Extensions for sourceId
    Element extSourceId;
    /// Id of fixture used for extracting the [id],  [type], and [vid] for GET requests.
    String targetId;
    /// Extensions for targetId
    Element extTargetId;
    /// Complete request URL.
    String url;
    /// Extensions for url
    Element extUrl;
 
    TestScriptOperation.fromJSON( Map json ){
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
        this.type = json['type'] == null ? null : FHIRObjectFactory.buildFromJSON('Coding', json['type']);
        this.resource = json['resource'];
        this.extResource = json['_resource'] == null ? null : FHIRObjectFactory.buildFromJSON('Element', json['_resource']);
        this.label = json['label'];
        this.extLabel = json['_label'] == null ? null : FHIRObjectFactory.buildFromJSON('Element', json['_label']);
        this.description = json['description'];
        this.extDescription = json['_description'] == null ? null : FHIRObjectFactory.buildFromJSON('Element', json['_description']);
        this.accept = json['accept'];
        this.extAccept = json['_accept'] == null ? null : FHIRObjectFactory.buildFromJSON('Element', json['_accept']);
        this.contentType = json['contentType'];
        this.extContentType = json['_contentType'] == null ? null : FHIRObjectFactory.buildFromJSON('Element', json['_contentType']);
        this.destination = json['destination'];
        this.extDestination = json['_destination'] == null ? null : FHIRObjectFactory.buildFromJSON('Element', json['_destination']);
        this.encodeRequestUrl = json['encodeRequestUrl'];
        this.extEncodeRequestUrl = json['_encodeRequestUrl'] == null ? null : FHIRObjectFactory.buildFromJSON('Element', json['_encodeRequestUrl']);
        this.method = json['method'];
        this.extMethod = json['_method'] == null ? null : FHIRObjectFactory.buildFromJSON('Element', json['_method']);
        this.origin = json['origin'];
        this.extOrigin = json['_origin'] == null ? null : FHIRObjectFactory.buildFromJSON('Element', json['_origin']);
        this.params = json['params'];
        this.extParams = json['_params'] == null ? null : FHIRObjectFactory.buildFromJSON('Element', json['_params']);
        this.requestHeader = List<TestScriptRequestHeader>();
        if (json['requestHeader'] != null && json['requestHeader'].length > 0) {
          if( json['requestHeader'] is List ){
            json['requestHeader'].forEach((i){
              this.requestHeader.add(FHIRObjectFactory.buildFromJSON('TestScriptRequestHeader', i));
            });
          } else {
            // this handles the case when the list only has one object and does not return as a list
            var i = json['requestHeader'];
            this.requestHeader.add(FHIRObjectFactory.buildFromJSON('TestScriptRequestHeader', i));
          }          
        }
        this.requestId = json['requestId'];
        this.extRequestId = json['_requestId'] == null ? null : FHIRObjectFactory.buildFromJSON('Element', json['_requestId']);
        this.responseId = json['responseId'];
        this.extResponseId = json['_responseId'] == null ? null : FHIRObjectFactory.buildFromJSON('Element', json['_responseId']);
        this.sourceId = json['sourceId'];
        this.extSourceId = json['_sourceId'] == null ? null : FHIRObjectFactory.buildFromJSON('Element', json['_sourceId']);
        this.targetId = json['targetId'];
        this.extTargetId = json['_targetId'] == null ? null : FHIRObjectFactory.buildFromJSON('Element', json['_targetId']);
        this.url = json['url'];
        this.extUrl = json['_url'] == null ? null : FHIRObjectFactory.buildFromJSON('Element', json['_url']);
    }
}
