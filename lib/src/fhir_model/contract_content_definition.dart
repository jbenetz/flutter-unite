import 'extension.dart';
import 'fhir_object_factory.dart';
import 'codeable_concept.dart';
import 'reference.dart';
import 'element.dart';
/// Legally enforceable, formally recorded unilateral or bilateral directive i.e., a policy or agreement.
class ContractContentDefinition {
    /// Unique id for the element within a resource (for internal references). This may be any string value that does not contain spaces.
    String id;
    /// May be used to represent additional information that is not part of the basic definition of the element. To make the use of extensions safe and manageable, there is a strict set of governance  applied to the definition and use of extensions. Though any implementer can define an extension, there is a set of requirements that SHALL be met as part of the definition of the extension.
    List<Extension> extension;
    /// May be used to represent additional information that is not part of the basic definition of the element and that modifies the understanding of the element in which it is contained and/or the understanding of the containing element's descendants. Usually modifier elements provide negation or qualification. To make the use of extensions safe and manageable, there is a strict set of governance applied to the definition and use of extensions. Though any implementer can define an extension, there is a set of requirements that SHALL be met as part of the definition of the extension. Applications processing a resource are required to check for modifier extensions.
    /// 
    /// Modifier extensions SHALL NOT change the meaning of any elements on Resource or DomainResource (including cannot change the meaning of modifierExtension itself).
    List<Extension> modifierExtension;
    /// Precusory content structure and use, i.e., a boilerplate, template, application for a contract such as an insurance policy or benefits under a program, e.g., workers compensation.
    CodeableConcept type;
    /// Detailed Precusory content type.
    CodeableConcept subType;
    /// The  individual or organization that published the Contract precursor content.
    Reference publisher;
    /// The date (and optionally time) when the contract was published. The date must change when the business version changes and it must change if the status code changes. In addition, it should change when the substantive content of the contract changes.
    DateTime publicationDate;
    /// Extensions for publicationDate
    Element extPublicationDate;
    /// draft | active | retired | unknown.
    String publicationStatus;
    /// Extensions for publicationStatus
    Element extPublicationStatus;
    /// A copyright statement relating to Contract precursor content. Copyright statements are generally legal restrictions on the use and publishing of the Contract precursor content.
    String copyright;
    /// Extensions for copyright
    Element extCopyright;
 
    ContractContentDefinition.fromJSON( Map json ){
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
        this.type = json['type'] == null ? null : FHIRObjectFactory.buildFromJSON('CodeableConcept', json['type']);
        this.subType = json['subType'] == null ? null : FHIRObjectFactory.buildFromJSON('CodeableConcept', json['subType']);
        this.publisher = json['publisher'] == null ? null : FHIRObjectFactory.buildFromJSON('Reference', json['publisher']);
        if( json['publicationDate'] != null ) { this.publicationDate = DateTime.parse(json['publicationDate']);}
        this.extPublicationDate = json['_publicationDate'] == null ? null : FHIRObjectFactory.buildFromJSON('Element', json['_publicationDate']);
        this.publicationStatus = json['publicationStatus'];
        this.extPublicationStatus = json['_publicationStatus'] == null ? null : FHIRObjectFactory.buildFromJSON('Element', json['_publicationStatus']);
        this.copyright = json['copyright'];
        this.extCopyright = json['_copyright'] == null ? null : FHIRObjectFactory.buildFromJSON('Element', json['_copyright']);
    }
}
