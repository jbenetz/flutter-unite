import 'extension.dart';
import 'fhir_object_factory.dart';
import 'charge_item_definition_applicability.dart';
import 'charge_item_definition_price_component.dart';
/// The ChargeItemDefinition resource provides the properties that apply to the (billing) codes necessary to calculate costs and prices. The properties may differ largely depending on type and realm, therefore this resource gives only a rough structure and requires profiling for each type of billing code system.
class ChargeItemDefinitionPropertyGroup {
    /// Unique id for the element within a resource (for internal references). This may be any string value that does not contain spaces.
    String id;
    /// May be used to represent additional information that is not part of the basic definition of the element. To make the use of extensions safe and manageable, there is a strict set of governance  applied to the definition and use of extensions. Though any implementer can define an extension, there is a set of requirements that SHALL be met as part of the definition of the extension.
    List<Extension> extension;
    /// May be used to represent additional information that is not part of the basic definition of the element and that modifies the understanding of the element in which it is contained and/or the understanding of the containing element's descendants. Usually modifier elements provide negation or qualification. To make the use of extensions safe and manageable, there is a strict set of governance applied to the definition and use of extensions. Though any implementer can define an extension, there is a set of requirements that SHALL be met as part of the definition of the extension. Applications processing a resource are required to check for modifier extensions.
    /// 
    /// Modifier extensions SHALL NOT change the meaning of any elements on Resource or DomainResource (including cannot change the meaning of modifierExtension itself).
    List<Extension> modifierExtension;
    /// Expressions that describe applicability criteria for the priceComponent.
    List<ChargeItemDefinitionApplicability> applicability;
    /// The price for a ChargeItem may be calculated as a base price with surcharges/deductions that apply in certain conditions. A ChargeItemDefinition resource that defines the prices, factors and conditions that apply to a billing code is currently under development. The priceComponent element can be used to offer transparency to the recipient of the Invoice of how the prices have been calculated.
    List<ChargeItemDefinitionPriceComponent> priceComponent;
 
    ChargeItemDefinitionPropertyGroup.fromJSON( Map json ){
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
        this.applicability = List<ChargeItemDefinitionApplicability>();
        if (json['applicability'] != null && json['applicability'].length > 0) {
          if( json['applicability'] is List ){
            json['applicability'].forEach((i){
              this.applicability.add(FHIRObjectFactory.buildFromJSON('ChargeItemDefinitionApplicability', i));
            });
          } else {
            // this handles the case when the list only has one object and does not return as a list
            var i = json['applicability'];
            this.applicability.add(FHIRObjectFactory.buildFromJSON('ChargeItemDefinitionApplicability', i));
          }          
        }
        this.priceComponent = List<ChargeItemDefinitionPriceComponent>();
        if (json['priceComponent'] != null && json['priceComponent'].length > 0) {
          if( json['priceComponent'] is List ){
            json['priceComponent'].forEach((i){
              this.priceComponent.add(FHIRObjectFactory.buildFromJSON('ChargeItemDefinitionPriceComponent', i));
            });
          } else {
            // this handles the case when the list only has one object and does not return as a list
            var i = json['priceComponent'];
            this.priceComponent.add(FHIRObjectFactory.buildFromJSON('ChargeItemDefinitionPriceComponent', i));
          }          
        }
    }
}
