import 'extension.dart';
import 'fhir_object_factory.dart';
import 'element.dart';
/// A container for a collection of resources.
class BundleResponse {
    /// Unique id for the element within a resource (for internal references). This may be any string value that does not contain spaces.
    String id;
    /// May be used to represent additional information that is not part of the basic definition of the element. To make the use of extensions safe and manageable, there is a strict set of governance  applied to the definition and use of extensions. Though any implementer can define an extension, there is a set of requirements that SHALL be met as part of the definition of the extension.
    List<Extension> extension;
    /// May be used to represent additional information that is not part of the basic definition of the element and that modifies the understanding of the element in which it is contained and/or the understanding of the containing element's descendants. Usually modifier elements provide negation or qualification. To make the use of extensions safe and manageable, there is a strict set of governance applied to the definition and use of extensions. Though any implementer can define an extension, there is a set of requirements that SHALL be met as part of the definition of the extension. Applications processing a resource are required to check for modifier extensions.
    /// 
    /// Modifier extensions SHALL NOT change the meaning of any elements on Resource or DomainResource (including cannot change the meaning of modifierExtension itself).
    List<Extension> modifierExtension;
    /// The status code returned by processing this entry. The status SHALL start with a 3 digit HTTP code (e.g. 404) and may contain the standard HTTP description associated with the status code.
    String status;
    /// Extensions for status
    Element extStatus;
    /// The location header created by processing this operation, populated if the operation returns a location.
    String location;
    /// Extensions for location
    Element extLocation;
    /// The Etag for the resource, if the operation for the entry produced a versioned resource (see [Resource Metadata and Versioning](http.html#versioning) and [Managing Resource Contention](http.html#concurrency)).
    String etag;
    /// Extensions for etag
    Element extEtag;
    /// The date/time that the resource was modified on the server.
    DateTime lastModified;
    /// Extensions for lastModified
    Element extLastModified;
 
    BundleResponse.fromJSON( Map json ){
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
        this.status = json['status'];
        this.extStatus = json['_status'] == null ? null : FHIRObjectFactory.buildFromJSON('Element', json['_status']);
        this.location = json['location'];
        this.extLocation = json['_location'] == null ? null : FHIRObjectFactory.buildFromJSON('Element', json['_location']);
        this.etag = json['etag'];
        this.extEtag = json['_etag'] == null ? null : FHIRObjectFactory.buildFromJSON('Element', json['_etag']);
        if( json['lastModified'] != null ) { this.lastModified = DateTime.parse(json['lastModified']);}
        this.extLastModified = json['_lastModified'] == null ? null : FHIRObjectFactory.buildFromJSON('Element', json['_lastModified']);
    }
}
