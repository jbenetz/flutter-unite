import 'extension.dart';
import 'fhir_object_factory.dart';
import 'coding.dart';
import 'element.dart';
import 'reference.dart';
/// A signature along with supporting context. The signature may be a digital signature that is cryptographic in nature, or some other signature acceptable to the domain. This other signature may be as simple as a graphical image representing a hand-written signature, or a signature ceremony Different signature approaches have different utilities.
class Signature {
    /// Unique id for the element within a resource (for internal references). This may be any string value that does not contain spaces.
    String id;
    /// May be used to represent additional information that is not part of the basic definition of the element. To make the use of extensions safe and manageable, there is a strict set of governance  applied to the definition and use of extensions. Though any implementer can define an extension, there is a set of requirements that SHALL be met as part of the definition of the extension.
    List<Extension> extension;
    /// An indication of the reason that the entity signed this document. This may be explicitly included as part of the signature information and can be used when determining accountability for various actions concerning the document.
    List<Coding> type;
    /// When the digital signature was signed.
    DateTime when;
    /// Extensions for when
    Element extWhen;
    /// A reference to an application-usable description of the identity that signed  (e.g. the signature used their private key).
    Reference who;
    /// A reference to an application-usable description of the identity that is represented by the signature.
    Reference onBehalfOf;
    /// A mime type that indicates the technical format of the target resources signed by the signature.
    String targetFormat;
    /// Extensions for targetFormat
    Element extTargetFormat;
    /// A mime type that indicates the technical format of the signature. Important mime types are application/signature+xml for X ML DigSig, application/jose for JWS, and image/* for a graphical image of a signature, etc.
    String sigFormat;
    /// Extensions for sigFormat
    Element extSigFormat;
    /// The base64 encoding of the Signature content. When signature is not recorded electronically this element would be empty.
    String data;
    /// Extensions for data
    Element extData;
 
    Signature.fromJSON( Map json ){
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
        this.type = List<Coding>();
        if (json['type'] != null && json['type'].length > 0) {
          if( json['type'] is List ){
            json['type'].forEach((i){
              this.type.add(FHIRObjectFactory.buildFromJSON('Coding', i));
            });
          } else {
            // this handles the case when the list only has one object and does not return as a list
            var i = json['type'];
            this.type.add(FHIRObjectFactory.buildFromJSON('Coding', i));
          }          
        }
        if( json['when'] != null ) { this.when = DateTime.parse(json['when']);}
        this.extWhen = json['_when'] == null ? null : FHIRObjectFactory.buildFromJSON('Element', json['_when']);
        this.who = json['who'] == null ? null : FHIRObjectFactory.buildFromJSON('Reference', json['who']);
        this.onBehalfOf = json['onBehalfOf'] == null ? null : FHIRObjectFactory.buildFromJSON('Reference', json['onBehalfOf']);
        this.targetFormat = json['targetFormat'];
        this.extTargetFormat = json['_targetFormat'] == null ? null : FHIRObjectFactory.buildFromJSON('Element', json['_targetFormat']);
        this.sigFormat = json['sigFormat'];
        this.extSigFormat = json['_sigFormat'] == null ? null : FHIRObjectFactory.buildFromJSON('Element', json['_sigFormat']);
        this.data = json['data'];
        this.extData = json['_data'] == null ? null : FHIRObjectFactory.buildFromJSON('Element', json['_data']);
    }
}
