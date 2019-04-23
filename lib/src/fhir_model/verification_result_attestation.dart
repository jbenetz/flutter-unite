import 'extension.dart';
import 'fhir_object_factory.dart';
import 'reference.dart';
import 'codeable_concept.dart';
import 'element.dart';
import 'signature.dart';
/// Describes validation requirements, source(s), status and dates for one or more elements.
class VerificationResultAttestation {
    /// Unique id for the element within a resource (for internal references). This may be any string value that does not contain spaces.
    String id;
    /// May be used to represent additional information that is not part of the basic definition of the element. To make the use of extensions safe and manageable, there is a strict set of governance  applied to the definition and use of extensions. Though any implementer can define an extension, there is a set of requirements that SHALL be met as part of the definition of the extension.
    List<Extension> extension;
    /// May be used to represent additional information that is not part of the basic definition of the element and that modifies the understanding of the element in which it is contained and/or the understanding of the containing element's descendants. Usually modifier elements provide negation or qualification. To make the use of extensions safe and manageable, there is a strict set of governance applied to the definition and use of extensions. Though any implementer can define an extension, there is a set of requirements that SHALL be met as part of the definition of the extension. Applications processing a resource are required to check for modifier extensions.
    /// 
    /// Modifier extensions SHALL NOT change the meaning of any elements on Resource or DomainResource (including cannot change the meaning of modifierExtension itself).
    List<Extension> modifierExtension;
    /// The individual or organization attesting to information.
    Reference who;
    /// When the who is asserting on behalf of another (organization or individual).
    Reference onBehalfOf;
    /// The method by which attested information was submitted/retrieved (manual; API; Push).
    CodeableConcept communicationMethod;
    /// The date the information was attested to.
    DateTime date;
    /// Extensions for date
    Element extDate;
    /// A digital identity certificate associated with the attestation source.
    String sourceIdentityCertificate;
    /// Extensions for sourceIdentityCertificate
    Element extSourceIdentityCertificate;
    /// A digital identity certificate associated with the proxy entity submitting attested information on behalf of the attestation source.
    String proxyIdentityCertificate;
    /// Extensions for proxyIdentityCertificate
    Element extProxyIdentityCertificate;
    /// Signed assertion by the proxy entity indicating that they have the right to submit attested information on behalf of the attestation source.
    Signature proxySignature;
    /// Signed assertion by the attestation source that they have attested to the information.
    Signature sourceSignature;
 
    VerificationResultAttestation.fromJSON( Map json ){
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
        this.who = json['who'] == null ? null : FHIRObjectFactory.buildFromJSON('Reference', json['who']);
        this.onBehalfOf = json['onBehalfOf'] == null ? null : FHIRObjectFactory.buildFromJSON('Reference', json['onBehalfOf']);
        this.communicationMethod = json['communicationMethod'] == null ? null : FHIRObjectFactory.buildFromJSON('CodeableConcept', json['communicationMethod']);
        if( json['date'] != null ) { this.date = DateTime.parse(json['date']);}
        this.extDate = json['_date'] == null ? null : FHIRObjectFactory.buildFromJSON('Element', json['_date']);
        this.sourceIdentityCertificate = json['sourceIdentityCertificate'];
        this.extSourceIdentityCertificate = json['_sourceIdentityCertificate'] == null ? null : FHIRObjectFactory.buildFromJSON('Element', json['_sourceIdentityCertificate']);
        this.proxyIdentityCertificate = json['proxyIdentityCertificate'];
        this.extProxyIdentityCertificate = json['_proxyIdentityCertificate'] == null ? null : FHIRObjectFactory.buildFromJSON('Element', json['_proxyIdentityCertificate']);
        this.proxySignature = json['proxySignature'] == null ? null : FHIRObjectFactory.buildFromJSON('Signature', json['proxySignature']);
        this.sourceSignature = json['sourceSignature'] == null ? null : FHIRObjectFactory.buildFromJSON('Signature', json['sourceSignature']);
    }
}
