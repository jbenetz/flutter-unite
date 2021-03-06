import 'extension.dart';
import 'fhir_object_factory.dart';
import 'identifier.dart';
import 'element.dart';
import 'codeable_concept.dart';
import 'quantity.dart';
import 'reference.dart';
/// A sample to be used for analysis.
class SpecimenContainer {
    /// Unique id for the element within a resource (for internal references). This may be any string value that does not contain spaces.
    String id;
    /// May be used to represent additional information that is not part of the basic definition of the element. To make the use of extensions safe and manageable, there is a strict set of governance  applied to the definition and use of extensions. Though any implementer can define an extension, there is a set of requirements that SHALL be met as part of the definition of the extension.
    List<Extension> extension;
    /// May be used to represent additional information that is not part of the basic definition of the element and that modifies the understanding of the element in which it is contained and/or the understanding of the containing element's descendants. Usually modifier elements provide negation or qualification. To make the use of extensions safe and manageable, there is a strict set of governance applied to the definition and use of extensions. Though any implementer can define an extension, there is a set of requirements that SHALL be met as part of the definition of the extension. Applications processing a resource are required to check for modifier extensions.
    /// 
    /// Modifier extensions SHALL NOT change the meaning of any elements on Resource or DomainResource (including cannot change the meaning of modifierExtension itself).
    List<Extension> modifierExtension;
    /// Id for container. There may be multiple; a manufacturer's bar code, lab assigned identifier, etc. The container ID may differ from the specimen id in some circumstances.
    List<Identifier> identifier;
    /// Textual description of the container.
    String description;
    /// Extensions for description
    Element extDescription;
    /// The type of container associated with the specimen (e.g. slide, aliquot, etc.).
    CodeableConcept type;
    /// The capacity (volume or other measure) the container may contain.
    Quantity capacity;
    /// The quantity of specimen in the container; may be volume, dimensions, or other appropriate measurements, depending on the specimen type.
    Quantity specimenQuantity;
    /// Introduced substance to preserve, maintain or enhance the specimen. Examples: Formalin, Citrate, EDTA.
    CodeableConcept additiveCodeableConcept;
    /// Introduced substance to preserve, maintain or enhance the specimen. Examples: Formalin, Citrate, EDTA.
    Reference additiveReference;
 
    SpecimenContainer.fromJSON( Map json ){
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
        this.identifier = List<Identifier>();
        if (json['identifier'] != null && json['identifier'].length > 0) {
          if( json['identifier'] is List ){
            json['identifier'].forEach((i){
              this.identifier.add(FHIRObjectFactory.buildFromJSON('Identifier', i));
            });
          } else {
            // this handles the case when the list only has one object and does not return as a list
            var i = json['identifier'];
            this.identifier.add(FHIRObjectFactory.buildFromJSON('Identifier', i));
          }          
        }
        this.description = json['description'];
        this.extDescription = json['_description'] == null ? null : FHIRObjectFactory.buildFromJSON('Element', json['_description']);
        this.type = json['type'] == null ? null : FHIRObjectFactory.buildFromJSON('CodeableConcept', json['type']);
        this.capacity = json['capacity'] == null ? null : FHIRObjectFactory.buildFromJSON('Quantity', json['capacity']);
        this.specimenQuantity = json['specimenQuantity'] == null ? null : FHIRObjectFactory.buildFromJSON('Quantity', json['specimenQuantity']);
        this.additiveCodeableConcept = json['additiveCodeableConcept'] == null ? null : FHIRObjectFactory.buildFromJSON('CodeableConcept', json['additiveCodeableConcept']);
        this.additiveReference = json['additiveReference'] == null ? null : FHIRObjectFactory.buildFromJSON('Reference', json['additiveReference']);
    }
}
