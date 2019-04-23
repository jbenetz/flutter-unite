import 'extension.dart';
import 'fhir_object_factory.dart';
import 'element.dart';
/// A container for a collection of resources.
class BundleRequest {
    /// Unique id for the element within a resource (for internal references). This may be any string value that does not contain spaces.
    String id;
    /// May be used to represent additional information that is not part of the basic definition of the element. To make the use of extensions safe and manageable, there is a strict set of governance  applied to the definition and use of extensions. Though any implementer can define an extension, there is a set of requirements that SHALL be met as part of the definition of the extension.
    List<Extension> extension;
    /// May be used to represent additional information that is not part of the basic definition of the element and that modifies the understanding of the element in which it is contained and/or the understanding of the containing element's descendants. Usually modifier elements provide negation or qualification. To make the use of extensions safe and manageable, there is a strict set of governance applied to the definition and use of extensions. Though any implementer can define an extension, there is a set of requirements that SHALL be met as part of the definition of the extension. Applications processing a resource are required to check for modifier extensions.
    /// 
    /// Modifier extensions SHALL NOT change the meaning of any elements on Resource or DomainResource (including cannot change the meaning of modifierExtension itself).
    List<Extension> modifierExtension;
    /// In a transaction or batch, this is the HTTP action to be executed for this entry. In a history bundle, this indicates the HTTP action that occurred.
    String method;
    /// Extensions for method
    Element extMethod;
    /// The URL for this entry, relative to the root (the address to which the request is posted).
    String url;
    /// Extensions for url
    Element extUrl;
    /// If the ETag values match, return a 304 Not Modified status. See the API documentation for ["Conditional Read"](http.html#cread).
    String ifNoneMatch;
    /// Extensions for ifNoneMatch
    Element extIfNoneMatch;
    /// Only perform the operation if the last updated date matches. See the API documentation for ["Conditional Read"](http.html#cread).
    DateTime ifModifiedSince;
    /// Extensions for ifModifiedSince
    Element extIfModifiedSince;
    /// Only perform the operation if the Etag value matches. For more information, see the API section ["Managing Resource Contention"](http.html#concurrency).
    String ifMatch;
    /// Extensions for ifMatch
    Element extIfMatch;
    /// Instruct the server not to perform the create if a specified resource already exists. For further information, see the API documentation for ["Conditional Create"](http.html#ccreate). This is just the query portion of the URL - what follows the "?" (not including the "?").
    String ifNoneExist;
    /// Extensions for ifNoneExist
    Element extIfNoneExist;
 
    BundleRequest.fromJSON( Map json ){
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
        this.method = json['method'];
        this.extMethod = json['_method'] == null ? null : FHIRObjectFactory.buildFromJSON('Element', json['_method']);
        this.url = json['url'];
        this.extUrl = json['_url'] == null ? null : FHIRObjectFactory.buildFromJSON('Element', json['_url']);
        this.ifNoneMatch = json['ifNoneMatch'];
        this.extIfNoneMatch = json['_ifNoneMatch'] == null ? null : FHIRObjectFactory.buildFromJSON('Element', json['_ifNoneMatch']);
        if( json['ifModifiedSince'] != null ) { this.ifModifiedSince = DateTime.parse(json['ifModifiedSince']);}
        this.extIfModifiedSince = json['_ifModifiedSince'] == null ? null : FHIRObjectFactory.buildFromJSON('Element', json['_ifModifiedSince']);
        this.ifMatch = json['ifMatch'];
        this.extIfMatch = json['_ifMatch'] == null ? null : FHIRObjectFactory.buildFromJSON('Element', json['_ifMatch']);
        this.ifNoneExist = json['ifNoneExist'];
        this.extIfNoneExist = json['_ifNoneExist'] == null ? null : FHIRObjectFactory.buildFromJSON('Element', json['_ifNoneExist']);
    }
}
