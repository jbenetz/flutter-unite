import 'extension.dart';
import 'fhir_object_factory.dart';
import 'codeable_concept.dart';
import 'element.dart';
import 'quantity.dart';
import 'specimen_definition_additive.dart';
/// A kind of specimen with associated set of requirements.
class SpecimenDefinitionContainer {
    /// Unique id for the element within a resource (for internal references). This may be any string value that does not contain spaces.
    String id;
    /// May be used to represent additional information that is not part of the basic definition of the element. To make the use of extensions safe and manageable, there is a strict set of governance  applied to the definition and use of extensions. Though any implementer can define an extension, there is a set of requirements that SHALL be met as part of the definition of the extension.
    List<Extension> extension;
    /// May be used to represent additional information that is not part of the basic definition of the element and that modifies the understanding of the element in which it is contained and/or the understanding of the containing element's descendants. Usually modifier elements provide negation or qualification. To make the use of extensions safe and manageable, there is a strict set of governance applied to the definition and use of extensions. Though any implementer can define an extension, there is a set of requirements that SHALL be met as part of the definition of the extension. Applications processing a resource are required to check for modifier extensions.
    /// 
    /// Modifier extensions SHALL NOT change the meaning of any elements on Resource or DomainResource (including cannot change the meaning of modifierExtension itself).
    List<Extension> modifierExtension;
    /// The type of material of the container.
    CodeableConcept material;
    /// The type of container used to contain this kind of specimen.
    CodeableConcept type;
    /// Color of container cap.
    CodeableConcept cap;
    /// The textual description of the kind of container.
    String description;
    /// Extensions for description
    Element extDescription;
    /// The capacity (volume or other measure) of this kind of container.
    Quantity capacity;
    /// The minimum volume to be conditioned in the container.
    Quantity minimumVolumeQuantity;
    /// Extensions for minimumVolumeString
    Element extMinimumVolumeString;
    /// Substance introduced in the kind of container to preserve, maintain or enhance the specimen. Examples: Formalin, Citrate, EDTA.
    List<SpecimenDefinitionAdditive> additive;
    /// Special processing that should be applied to the container for this kind of specimen.
    String preparation;
    /// Extensions for preparation
    Element extPreparation;
 
    SpecimenDefinitionContainer.fromJSON( Map json ){
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
        this.material = json['material'] == null ? null : FHIRObjectFactory.buildFromJSON('CodeableConcept', json['material']);
        this.type = json['type'] == null ? null : FHIRObjectFactory.buildFromJSON('CodeableConcept', json['type']);
        this.cap = json['cap'] == null ? null : FHIRObjectFactory.buildFromJSON('CodeableConcept', json['cap']);
        this.description = json['description'];
        this.extDescription = json['_description'] == null ? null : FHIRObjectFactory.buildFromJSON('Element', json['_description']);
        this.capacity = json['capacity'] == null ? null : FHIRObjectFactory.buildFromJSON('Quantity', json['capacity']);
        this.minimumVolumeQuantity = json['minimumVolumeQuantity'] == null ? null : FHIRObjectFactory.buildFromJSON('Quantity', json['minimumVolumeQuantity']);
        this.extMinimumVolumeString = json['_minimumVolumeString'] == null ? null : FHIRObjectFactory.buildFromJSON('Element', json['_minimumVolumeString']);
        this.additive = List<SpecimenDefinitionAdditive>();
        if (json['additive'] != null && json['additive'].length > 0) {
          if( json['additive'] is List ){
            json['additive'].forEach((i){
              this.additive.add(FHIRObjectFactory.buildFromJSON('SpecimenDefinitionAdditive', i));
            });
          } else {
            // this handles the case when the list only has one object and does not return as a list
            var i = json['additive'];
            this.additive.add(FHIRObjectFactory.buildFromJSON('SpecimenDefinitionAdditive', i));
          }          
        }
        this.preparation = json['preparation'];
        this.extPreparation = json['_preparation'] == null ? null : FHIRObjectFactory.buildFromJSON('Element', json['_preparation']);
    }
}
