import 'extension.dart';
import 'fhir_object_factory.dart';
import 'element.dart';
/// For referring to data content defined in other formats.
class Attachment {
    /// Unique id for the element within a resource (for internal references). This may be any string value that does not contain spaces.
    String id;
    /// May be used to represent additional information that is not part of the basic definition of the element. To make the use of extensions safe and manageable, there is a strict set of governance  applied to the definition and use of extensions. Though any implementer can define an extension, there is a set of requirements that SHALL be met as part of the definition of the extension.
    List<Extension> extension;
    /// Identifies the type of the data in the attachment and allows a method to be chosen to interpret or render the data. Includes mime type parameters such as charset where appropriate.
    String contentType;
    /// Extensions for contentType
    Element extContentType;
    /// The human language of the content. The value can be any valid value according to BCP 47.
    String language;
    /// Extensions for language
    Element extLanguage;
    /// The actual data of the attachment - a sequence of bytes, base64 encoded.
    String data;
    /// Extensions for data
    Element extData;
    /// A location where the data can be accessed.
    String url;
    /// Extensions for url
    Element extUrl;
    /// The number of bytes of data that make up this attachment (before base64 encoding, if that is done).
    int size;
    /// Extensions for size
    Element extSize;
    /// The calculated hash of the data using SHA-1. Represented using base64.
    String hash;
    /// Extensions for hash
    Element extHash;
    /// A label or set of text to display in place of the data.
    String title;
    /// Extensions for title
    Element extTitle;
    /// The date that the attachment was first created.
    DateTime creation;
    /// Extensions for creation
    Element extCreation;
 
    Attachment.fromJSON( Map json ){
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
        this.contentType = json['contentType'];
        this.extContentType = json['_contentType'] == null ? null : FHIRObjectFactory.buildFromJSON('Element', json['_contentType']);
        this.language = json['language'];
        this.extLanguage = json['_language'] == null ? null : FHIRObjectFactory.buildFromJSON('Element', json['_language']);
        this.data = json['data'];
        this.extData = json['_data'] == null ? null : FHIRObjectFactory.buildFromJSON('Element', json['_data']);
        this.url = json['url'];
        this.extUrl = json['_url'] == null ? null : FHIRObjectFactory.buildFromJSON('Element', json['_url']);
        this.size = json['size'];
        this.extSize = json['_size'] == null ? null : FHIRObjectFactory.buildFromJSON('Element', json['_size']);
        this.hash = json['hash'];
        this.extHash = json['_hash'] == null ? null : FHIRObjectFactory.buildFromJSON('Element', json['_hash']);
        this.title = json['title'];
        this.extTitle = json['_title'] == null ? null : FHIRObjectFactory.buildFromJSON('Element', json['_title']);
        if( json['creation'] != null ) { this.creation = DateTime.parse(json['creation']);}
        this.extCreation = json['_creation'] == null ? null : FHIRObjectFactory.buildFromJSON('Element', json['_creation']);
    }
}
