import 'meta.dart';
import 'fhir_object_factory.dart';
import 'element.dart';
import 'reference.dart';
/// A resource that represents the data of a single raw artifact as digital content accessible in its native format.  A Binary resource can contain any content, whether text, image, pdf, zip archive, etc.
class Binary {
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
    /// MimeType of the binary content represented as a standard MimeType (BCP 13).
    String contentType;
    /// Extensions for contentType
    Element extContentType;
    /// This element identifies another resource that can be used as a proxy of the security sensitivity to use when deciding and enforcing access control rules for the Binary resource. Given that the Binary resource contains very few elements that can be used to determine the sensitivity of the data and relationships to individuals, the referenced resource stands in as a proxy equivalent for this purpose. This referenced resource may be related to the Binary (e.g. Media, DocumentReference), or may be some non-related Resource purely as a security proxy. E.g. to identify that the binary resource relates to a patient, and access should only be granted to applications that have access to the patient.
    Reference securityContext;
    /// The actual content, base64 encoded.
    String data;
    /// Extensions for data
    Element extData;
 
    Binary.fromJSON( Map json ){
        this.id = json['id'];
        this.meta = json['meta'] == null ? null : FHIRObjectFactory.buildFromJSON('Meta', json['meta']);
        this.implicitRules = json['implicitRules'];
        this.extImplicitRules = json['_implicitRules'] == null ? null : FHIRObjectFactory.buildFromJSON('Element', json['_implicitRules']);
        this.language = json['language'];
        this.extLanguage = json['_language'] == null ? null : FHIRObjectFactory.buildFromJSON('Element', json['_language']);
        this.contentType = json['contentType'];
        this.extContentType = json['_contentType'] == null ? null : FHIRObjectFactory.buildFromJSON('Element', json['_contentType']);
        this.securityContext = json['securityContext'] == null ? null : FHIRObjectFactory.buildFromJSON('Reference', json['securityContext']);
        this.data = json['data'];
        this.extData = json['_data'] == null ? null : FHIRObjectFactory.buildFromJSON('Element', json['_data']);
    }
}
