import 'extension.dart';
import 'fhir_object_factory.dart';
import 'ratio.dart';
import 'element.dart';
import 'codeable_concept.dart';
import 'medicinal_product_ingredient_reference_strength.dart';
/// An ingredient of a manufactured item or pharmaceutical product.
class MedicinalProductIngredientStrength {
    /// Unique id for the element within a resource (for internal references). This may be any string value that does not contain spaces.
    String id;
    /// May be used to represent additional information that is not part of the basic definition of the element. To make the use of extensions safe and manageable, there is a strict set of governance  applied to the definition and use of extensions. Though any implementer can define an extension, there is a set of requirements that SHALL be met as part of the definition of the extension.
    List<Extension> extension;
    /// May be used to represent additional information that is not part of the basic definition of the element and that modifies the understanding of the element in which it is contained and/or the understanding of the containing element's descendants. Usually modifier elements provide negation or qualification. To make the use of extensions safe and manageable, there is a strict set of governance applied to the definition and use of extensions. Though any implementer can define an extension, there is a set of requirements that SHALL be met as part of the definition of the extension. Applications processing a resource are required to check for modifier extensions.
    /// 
    /// Modifier extensions SHALL NOT change the meaning of any elements on Resource or DomainResource (including cannot change the meaning of modifierExtension itself).
    List<Extension> modifierExtension;
    /// The quantity of substance in the unit of presentation, or in the volume (or mass) of the single pharmaceutical product or manufactured item.
    Ratio presentation;
    /// A lower limit for the quantity of substance in the unit of presentation. For use when there is a range of strengths, this is the lower limit, with the presentation attribute becoming the upper limit.
    Ratio presentationLowLimit;
    /// The strength per unitary volume (or mass).
    Ratio concentration;
    /// A lower limit for the strength per unitary volume (or mass), for when there is a range. The concentration attribute then becomes the upper limit.
    Ratio concentrationLowLimit;
    /// For when strength is measured at a particular point or distance.
    String measurementPoint;
    /// Extensions for measurementPoint
    Element extMeasurementPoint;
    /// The country or countries for which the strength range applies.
    List<CodeableConcept> country;
    /// Strength expressed in terms of a reference substance.
    List<MedicinalProductIngredientReferenceStrength> referenceStrength;
 
    MedicinalProductIngredientStrength.fromJSON( Map json ){
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
        this.presentation = json['presentation'] == null ? null : FHIRObjectFactory.buildFromJSON('Ratio', json['presentation']);
        this.presentationLowLimit = json['presentationLowLimit'] == null ? null : FHIRObjectFactory.buildFromJSON('Ratio', json['presentationLowLimit']);
        this.concentration = json['concentration'] == null ? null : FHIRObjectFactory.buildFromJSON('Ratio', json['concentration']);
        this.concentrationLowLimit = json['concentrationLowLimit'] == null ? null : FHIRObjectFactory.buildFromJSON('Ratio', json['concentrationLowLimit']);
        this.measurementPoint = json['measurementPoint'];
        this.extMeasurementPoint = json['_measurementPoint'] == null ? null : FHIRObjectFactory.buildFromJSON('Element', json['_measurementPoint']);
        this.country = List<CodeableConcept>();
        if (json['country'] != null && json['country'].length > 0) {
          if( json['country'] is List ){
            json['country'].forEach((i){
              this.country.add(FHIRObjectFactory.buildFromJSON('CodeableConcept', i));
            });
          } else {
            // this handles the case when the list only has one object and does not return as a list
            var i = json['country'];
            this.country.add(FHIRObjectFactory.buildFromJSON('CodeableConcept', i));
          }          
        }
        this.referenceStrength = List<MedicinalProductIngredientReferenceStrength>();
        if (json['referenceStrength'] != null && json['referenceStrength'].length > 0) {
          if( json['referenceStrength'] is List ){
            json['referenceStrength'].forEach((i){
              this.referenceStrength.add(FHIRObjectFactory.buildFromJSON('MedicinalProductIngredientReferenceStrength', i));
            });
          } else {
            // this handles the case when the list only has one object and does not return as a list
            var i = json['referenceStrength'];
            this.referenceStrength.add(FHIRObjectFactory.buildFromJSON('MedicinalProductIngredientReferenceStrength', i));
          }          
        }
    }
}
