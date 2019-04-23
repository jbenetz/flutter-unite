import 'meta.dart';
import 'fhir_object_factory.dart';
import 'element.dart';
import 'narrative.dart';
import 'extension.dart';
import 'codeable_concept.dart';
import 'quantity.dart';
import 'reference.dart';
import 'prod_characteristic.dart';
/// The manufactured item as contained in the packaged medicinal product.
class MedicinalProductManufactured {
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
    /// A human-readable narrative that contains a summary of the resource and can be used to represent the content of the resource to a human. The narrative need not encode all the structured data, but is required to contain sufficient detail to make it "clinically safe" for a human to just read the narrative. Resource definitions may define what content should be represented in the narrative to ensure clinical safety.
    Narrative text;
    /// May be used to represent additional information that is not part of the basic definition of the resource. To make the use of extensions safe and manageable, there is a strict set of governance  applied to the definition and use of extensions. Though any implementer can define an extension, there is a set of requirements that SHALL be met as part of the definition of the extension.
    List<Extension> extension;
    /// May be used to represent additional information that is not part of the basic definition of the resource and that modifies the understanding of the element that contains it and/or the understanding of the containing element's descendants. Usually modifier elements provide negation or qualification. To make the use of extensions safe and manageable, there is a strict set of governance applied to the definition and use of extensions. Though any implementer is allowed to define an extension, there is a set of requirements that SHALL be met as part of the definition of the extension. Applications processing a resource are required to check for modifier extensions.
    /// 
    /// Modifier extensions SHALL NOT change the meaning of any elements on Resource or DomainResource (including cannot change the meaning of modifierExtension itself).
    List<Extension> modifierExtension;
    /// Dose form as manufactured and before any transformation into the pharmaceutical product.
    CodeableConcept manufacturedDoseForm;
    /// The “real world” units in which the quantity of the manufactured item is described.
    CodeableConcept unitOfPresentation;
    /// The quantity or "count number" of the manufactured item.
    Quantity quantity;
    /// Manufacturer of the item (Note that this should be named "manufacturer" but it currently causes technical issues).
    List<Reference> manufacturer;
    /// Ingredient.
    List<Reference> ingredient;
    /// Dimensions, color etc.
    ProdCharacteristic physicalCharacteristics;
    /// Other codeable characteristics.
    List<CodeableConcept> otherCharacteristics;
 
    MedicinalProductManufactured.fromJSON( Map json ){
        this.id = json['id'];
        this.meta = json['meta'] == null ? null : FHIRObjectFactory.buildFromJSON('Meta', json['meta']);
        this.implicitRules = json['implicitRules'];
        this.extImplicitRules = json['_implicitRules'] == null ? null : FHIRObjectFactory.buildFromJSON('Element', json['_implicitRules']);
        this.language = json['language'];
        this.extLanguage = json['_language'] == null ? null : FHIRObjectFactory.buildFromJSON('Element', json['_language']);
        this.text = json['text'] == null ? null : FHIRObjectFactory.buildFromJSON('Narrative', json['text']);
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
        this.manufacturedDoseForm = json['manufacturedDoseForm'] == null ? null : FHIRObjectFactory.buildFromJSON('CodeableConcept', json['manufacturedDoseForm']);
        this.unitOfPresentation = json['unitOfPresentation'] == null ? null : FHIRObjectFactory.buildFromJSON('CodeableConcept', json['unitOfPresentation']);
        this.quantity = json['quantity'] == null ? null : FHIRObjectFactory.buildFromJSON('Quantity', json['quantity']);
        this.manufacturer = List<Reference>();
        if (json['manufacturer'] != null && json['manufacturer'].length > 0) {
          if( json['manufacturer'] is List ){
            json['manufacturer'].forEach((i){
              this.manufacturer.add(FHIRObjectFactory.buildFromJSON('Reference', i));
            });
          } else {
            // this handles the case when the list only has one object and does not return as a list
            var i = json['manufacturer'];
            this.manufacturer.add(FHIRObjectFactory.buildFromJSON('Reference', i));
          }          
        }
        this.ingredient = List<Reference>();
        if (json['ingredient'] != null && json['ingredient'].length > 0) {
          if( json['ingredient'] is List ){
            json['ingredient'].forEach((i){
              this.ingredient.add(FHIRObjectFactory.buildFromJSON('Reference', i));
            });
          } else {
            // this handles the case when the list only has one object and does not return as a list
            var i = json['ingredient'];
            this.ingredient.add(FHIRObjectFactory.buildFromJSON('Reference', i));
          }          
        }
        this.physicalCharacteristics = json['physicalCharacteristics'] == null ? null : FHIRObjectFactory.buildFromJSON('ProdCharacteristic', json['physicalCharacteristics']);
        this.otherCharacteristics = List<CodeableConcept>();
        if (json['otherCharacteristics'] != null && json['otherCharacteristics'].length > 0) {
          if( json['otherCharacteristics'] is List ){
            json['otherCharacteristics'].forEach((i){
              this.otherCharacteristics.add(FHIRObjectFactory.buildFromJSON('CodeableConcept', i));
            });
          } else {
            // this handles the case when the list only has one object and does not return as a list
            var i = json['otherCharacteristics'];
            this.otherCharacteristics.add(FHIRObjectFactory.buildFromJSON('CodeableConcept', i));
          }          
        }
    }
}
