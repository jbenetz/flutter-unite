import 'extension.dart';
import 'fhir_object_factory.dart';
import 'bundle_link.dart';
import 'element.dart';
import 'bundle_search.dart';
import 'bundle_request.dart';
import 'bundle_response.dart';
/// A container for a collection of resources.
class BundleEntry {
    /// Unique id for the element within a resource (for internal references). This may be any string value that does not contain spaces.
    String id;
    /// May be used to represent additional information that is not part of the basic definition of the element. To make the use of extensions safe and manageable, there is a strict set of governance  applied to the definition and use of extensions. Though any implementer can define an extension, there is a set of requirements that SHALL be met as part of the definition of the extension.
    List<Extension> extension;
    /// May be used to represent additional information that is not part of the basic definition of the element and that modifies the understanding of the element in which it is contained and/or the understanding of the containing element's descendants. Usually modifier elements provide negation or qualification. To make the use of extensions safe and manageable, there is a strict set of governance applied to the definition and use of extensions. Though any implementer can define an extension, there is a set of requirements that SHALL be met as part of the definition of the extension. Applications processing a resource are required to check for modifier extensions.
    /// 
    /// Modifier extensions SHALL NOT change the meaning of any elements on Resource or DomainResource (including cannot change the meaning of modifierExtension itself).
    List<Extension> modifierExtension;
    /// A series of links that provide context to this entry.
    List<BundleLink> link;
    /// The Absolute URL for the resource.  The fullUrl SHALL NOT disagree with the id in the resource - i.e. if the fullUrl is not a urn:uuid, the URL shall be version-independent URL consistent with the Resource.id. The fullUrl is a version independent reference to the resource. The fullUrl element SHALL have a value except that: 
    /// * fullUrl can be empty on a POST (although it does not need to when specifying a temporary id for reference in the bundle)
    /// * Results from operations might involve resources that are not identified.
    String fullUrl;
    /// Extensions for fullUrl
    Element extFullUrl;
    /// Information about the search process that lead to the creation of this entry.
    BundleSearch search;
    /// Additional information about how this entry should be processed as part of a transaction or batch.  For history, it shows how the entry was processed to create the version contained in the entry.
    BundleRequest request;
    /// Indicates the results of processing the corresponding 'request' entry in the batch or transaction being responded to or what the results of an operation where when returning history.
    BundleResponse response;
 
    BundleEntry.fromJSON( Map json ){
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
        this.link = List<BundleLink>();
        if (json['link'] != null && json['link'].length > 0) {
          if( json['link'] is List ){
            json['link'].forEach((i){
              this.link.add(FHIRObjectFactory.buildFromJSON('BundleLink', i));
            });
          } else {
            // this handles the case when the list only has one object and does not return as a list
            var i = json['link'];
            this.link.add(FHIRObjectFactory.buildFromJSON('BundleLink', i));
          }          
        }
        this.fullUrl = json['fullUrl'];
        this.extFullUrl = json['_fullUrl'] == null ? null : FHIRObjectFactory.buildFromJSON('Element', json['_fullUrl']);
        this.search = json['search'] == null ? null : FHIRObjectFactory.buildFromJSON('BundleSearch', json['search']);
        this.request = json['request'] == null ? null : FHIRObjectFactory.buildFromJSON('BundleRequest', json['request']);
        this.response = json['response'] == null ? null : FHIRObjectFactory.buildFromJSON('BundleResponse', json['response']);
    }
}
