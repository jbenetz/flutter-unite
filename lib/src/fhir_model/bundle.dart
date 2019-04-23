import 'meta.dart';
import 'fhir_object_factory.dart';
import 'element.dart';
import 'identifier.dart';
import 'bundle_link.dart';
import 'bundle_entry.dart';
import 'signature.dart';
/// A container for a collection of resources.
class Bundle {
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
    /// A persistent identifier for the bundle that won't change as a bundle is copied from server to server.
    Identifier identifier;
    /// Indicates the purpose of this bundle - how it is intended to be used.
    String type;
    /// Extensions for type
    Element extType;
    /// The date/time that the bundle was assembled - i.e. when the resources were placed in the bundle.
    DateTime timestamp;
    /// Extensions for timestamp
    Element extTimestamp;
    /// If a set of search matches, this is the total number of entries of type 'match' across all pages in the search.  It does not include search.mode = 'include' or 'outcome' entries and it does not provide a count of the number of entries in the Bundle.
    int total;
    /// Extensions for total
    Element extTotal;
    /// A series of links that provide context to this bundle.
    List<BundleLink> link;
    /// An entry in a bundle resource - will either contain a resource or information about a resource (transactions and history only).
    List<BundleEntry> entry;
    /// Digital Signature - base64 encoded. XML-DSig or a JWT.
    Signature signature;
 
    Bundle.fromJSON( Map json ){
        this.id = json['id'];
        this.meta = json['meta'] == null ? null : FHIRObjectFactory.buildFromJSON('Meta', json['meta']);
        this.implicitRules = json['implicitRules'];
        this.extImplicitRules = json['_implicitRules'] == null ? null : FHIRObjectFactory.buildFromJSON('Element', json['_implicitRules']);
        this.language = json['language'];
        this.extLanguage = json['_language'] == null ? null : FHIRObjectFactory.buildFromJSON('Element', json['_language']);
        this.identifier = json['identifier'] == null ? null : FHIRObjectFactory.buildFromJSON('Identifier', json['identifier']);
        this.type = json['type'];
        this.extType = json['_type'] == null ? null : FHIRObjectFactory.buildFromJSON('Element', json['_type']);
        if( json['timestamp'] != null ) { this.timestamp = DateTime.parse(json['timestamp']);}
        this.extTimestamp = json['_timestamp'] == null ? null : FHIRObjectFactory.buildFromJSON('Element', json['_timestamp']);
        this.total = json['total'];
        this.extTotal = json['_total'] == null ? null : FHIRObjectFactory.buildFromJSON('Element', json['_total']);
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
        this.entry = List<BundleEntry>();
        if (json['entry'] != null && json['entry'].length > 0) {
          if( json['entry'] is List ){
            json['entry'].forEach((i){
              this.entry.add(FHIRObjectFactory.buildFromJSON('BundleEntry', i));
            });
          } else {
            // this handles the case when the list only has one object and does not return as a list
            var i = json['entry'];
            this.entry.add(FHIRObjectFactory.buildFromJSON('BundleEntry', i));
          }          
        }
        this.signature = json['signature'] == null ? null : FHIRObjectFactory.buildFromJSON('Signature', json['signature']);
    }
}
