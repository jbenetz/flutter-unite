import 'extension.dart';
import 'fhir_object_factory.dart';
import 'codeable_concept.dart';
import 'element.dart';
import 'quantity.dart';
import 'nutrition_order_administration.dart';
/// A request to supply a diet, formula feeding (enteral) or oral nutritional supplement to a patient/resident.
class NutritionOrderEnteralFormula {
    /// Unique id for the element within a resource (for internal references). This may be any string value that does not contain spaces.
    String id;
    /// May be used to represent additional information that is not part of the basic definition of the element. To make the use of extensions safe and manageable, there is a strict set of governance  applied to the definition and use of extensions. Though any implementer can define an extension, there is a set of requirements that SHALL be met as part of the definition of the extension.
    List<Extension> extension;
    /// May be used to represent additional information that is not part of the basic definition of the element and that modifies the understanding of the element in which it is contained and/or the understanding of the containing element's descendants. Usually modifier elements provide negation or qualification. To make the use of extensions safe and manageable, there is a strict set of governance applied to the definition and use of extensions. Though any implementer can define an extension, there is a set of requirements that SHALL be met as part of the definition of the extension. Applications processing a resource are required to check for modifier extensions.
    /// 
    /// Modifier extensions SHALL NOT change the meaning of any elements on Resource or DomainResource (including cannot change the meaning of modifierExtension itself).
    List<Extension> modifierExtension;
    /// The type of enteral or infant formula such as an adult standard formula with fiber or a soy-based infant formula.
    CodeableConcept baseFormulaType;
    /// The product or brand name of the enteral or infant formula product such as "ACME Adult Standard Formula".
    String baseFormulaProductName;
    /// Extensions for baseFormulaProductName
    Element extBaseFormulaProductName;
    /// Indicates the type of modular component such as protein, carbohydrate, fat or fiber to be provided in addition to or mixed with the base formula.
    CodeableConcept additiveType;
    /// The product or brand name of the type of modular component to be added to the formula.
    String additiveProductName;
    /// Extensions for additiveProductName
    Element extAdditiveProductName;
    /// The amount of energy (calories) that the formula should provide per specified volume, typically per mL or fluid oz.  For example, an infant may require a formula that provides 24 calories per fluid ounce or an adult may require an enteral formula that provides 1.5 calorie/mL.
    Quantity caloricDensity;
    /// The route or physiological path of administration into the patient's gastrointestinal  tract for purposes of providing the formula feeding, e.g. nasogastric tube.
    CodeableConcept routeofAdministration;
    /// Formula administration instructions as structured data.  This repeating structure allows for changing the administration rate or volume over time for both bolus and continuous feeding.  An example of this would be an instruction to increase the rate of continuous feeding every 2 hours.
    List<NutritionOrderAdministration> administration;
    /// The maximum total quantity of formula that may be administered to a subject over the period of time, e.g. 1440 mL over 24 hours.
    Quantity maxVolumeToDeliver;
    /// Free text formula administration, feeding instructions or additional instructions or information.
    String administrationInstruction;
    /// Extensions for administrationInstruction
    Element extAdministrationInstruction;
 
    NutritionOrderEnteralFormula.fromJSON( Map json ){
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
        this.baseFormulaType = json['baseFormulaType'] == null ? null : FHIRObjectFactory.buildFromJSON('CodeableConcept', json['baseFormulaType']);
        this.baseFormulaProductName = json['baseFormulaProductName'];
        this.extBaseFormulaProductName = json['_baseFormulaProductName'] == null ? null : FHIRObjectFactory.buildFromJSON('Element', json['_baseFormulaProductName']);
        this.additiveType = json['additiveType'] == null ? null : FHIRObjectFactory.buildFromJSON('CodeableConcept', json['additiveType']);
        this.additiveProductName = json['additiveProductName'];
        this.extAdditiveProductName = json['_additiveProductName'] == null ? null : FHIRObjectFactory.buildFromJSON('Element', json['_additiveProductName']);
        this.caloricDensity = json['caloricDensity'] == null ? null : FHIRObjectFactory.buildFromJSON('Quantity', json['caloricDensity']);
        this.routeofAdministration = json['routeofAdministration'] == null ? null : FHIRObjectFactory.buildFromJSON('CodeableConcept', json['routeofAdministration']);
        this.administration = List<NutritionOrderAdministration>();
        if (json['administration'] != null && json['administration'].length > 0) {
          if( json['administration'] is List ){
            json['administration'].forEach((i){
              this.administration.add(FHIRObjectFactory.buildFromJSON('NutritionOrderAdministration', i));
            });
          } else {
            // this handles the case when the list only has one object and does not return as a list
            var i = json['administration'];
            this.administration.add(FHIRObjectFactory.buildFromJSON('NutritionOrderAdministration', i));
          }          
        }
        this.maxVolumeToDeliver = json['maxVolumeToDeliver'] == null ? null : FHIRObjectFactory.buildFromJSON('Quantity', json['maxVolumeToDeliver']);
        this.administrationInstruction = json['administrationInstruction'];
        this.extAdministrationInstruction = json['_administrationInstruction'] == null ? null : FHIRObjectFactory.buildFromJSON('Element', json['_administrationInstruction']);
    }
}
