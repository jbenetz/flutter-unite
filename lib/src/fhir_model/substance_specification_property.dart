import 'extension.dart';
import 'fhir_object_factory.dart';
import 'codeable_concept.dart';
import 'element.dart';
import 'reference.dart';
import 'quantity.dart';
/// The detailed description of a substance, typically at a level beyond what is used for prescribing.
class SubstanceSpecificationProperty {
    /// Unique id for the element within a resource (for internal references). This may be any string value that does not contain spaces.
    String id;
    /// May be used to represent additional information that is not part of the basic definition of the element. To make the use of extensions safe and manageable, there is a strict set of governance  applied to the definition and use of extensions. Though any implementer can define an extension, there is a set of requirements that SHALL be met as part of the definition of the extension.
    List<Extension> extension;
    /// May be used to represent additional information that is not part of the basic definition of the element and that modifies the understanding of the element in which it is contained and/or the understanding of the containing element's descendants. Usually modifier elements provide negation or qualification. To make the use of extensions safe and manageable, there is a strict set of governance applied to the definition and use of extensions. Though any implementer can define an extension, there is a set of requirements that SHALL be met as part of the definition of the extension. Applications processing a resource are required to check for modifier extensions.
    /// 
    /// Modifier extensions SHALL NOT change the meaning of any elements on Resource or DomainResource (including cannot change the meaning of modifierExtension itself).
    List<Extension> modifierExtension;
    /// A category for this property, e.g. Physical, Chemical, Enzymatic.
    CodeableConcept category;
    /// Property type e.g. viscosity, pH, isoelectric point.
    CodeableConcept code;
    /// Parameters that were used in the measurement of a property (e.g. for viscosity: measured at 20C with a pH of 7.1).
    String parameters;
    /// Extensions for parameters
    Element extParameters;
    /// A substance upon which a defining property depends (e.g. for solubility: in water, in alcohol).
    Reference definingSubstanceReference;
    /// A substance upon which a defining property depends (e.g. for solubility: in water, in alcohol).
    CodeableConcept definingSubstanceCodeableConcept;
    /// Quantitative value for this property.
    Quantity amountQuantity;
    /// Extensions for amountString
    Element extAmountString;
 
    SubstanceSpecificationProperty.fromJSON( Map json ){
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
        this.category = json['category'] == null ? null : FHIRObjectFactory.buildFromJSON('CodeableConcept', json['category']);
        this.code = json['code'] == null ? null : FHIRObjectFactory.buildFromJSON('CodeableConcept', json['code']);
        this.parameters = json['parameters'];
        this.extParameters = json['_parameters'] == null ? null : FHIRObjectFactory.buildFromJSON('Element', json['_parameters']);
        this.definingSubstanceReference = json['definingSubstanceReference'] == null ? null : FHIRObjectFactory.buildFromJSON('Reference', json['definingSubstanceReference']);
        this.definingSubstanceCodeableConcept = json['definingSubstanceCodeableConcept'] == null ? null : FHIRObjectFactory.buildFromJSON('CodeableConcept', json['definingSubstanceCodeableConcept']);
        this.amountQuantity = json['amountQuantity'] == null ? null : FHIRObjectFactory.buildFromJSON('Quantity', json['amountQuantity']);
        this.extAmountString = json['_amountString'] == null ? null : FHIRObjectFactory.buildFromJSON('Element', json['_amountString']);
    }
}
