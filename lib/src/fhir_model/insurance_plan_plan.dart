import 'extension.dart';
import 'fhir_object_factory.dart';
import 'identifier.dart';
import 'codeable_concept.dart';
import 'reference.dart';
import 'insurance_plan_general_cost.dart';
import 'insurance_plan_specific_cost.dart';
/// Details of a Health Insurance product/plan provided by an organization.
class InsurancePlanPlan {
    /// Unique id for the element within a resource (for internal references). This may be any string value that does not contain spaces.
    String id;
    /// May be used to represent additional information that is not part of the basic definition of the element. To make the use of extensions safe and manageable, there is a strict set of governance  applied to the definition and use of extensions. Though any implementer can define an extension, there is a set of requirements that SHALL be met as part of the definition of the extension.
    List<Extension> extension;
    /// May be used to represent additional information that is not part of the basic definition of the element and that modifies the understanding of the element in which it is contained and/or the understanding of the containing element's descendants. Usually modifier elements provide negation or qualification. To make the use of extensions safe and manageable, there is a strict set of governance applied to the definition and use of extensions. Though any implementer can define an extension, there is a set of requirements that SHALL be met as part of the definition of the extension. Applications processing a resource are required to check for modifier extensions.
    /// 
    /// Modifier extensions SHALL NOT change the meaning of any elements on Resource or DomainResource (including cannot change the meaning of modifierExtension itself).
    List<Extension> modifierExtension;
    /// Business identifiers assigned to this health insurance plan which remain constant as the resource is updated and propagates from server to server.
    List<Identifier> identifier;
    /// Type of plan. For example, "Platinum" or "High Deductable".
    CodeableConcept type;
    /// The geographic region in which a health insurance plan's benefits apply.
    List<Reference> coverageArea;
    /// Reference to the network that providing the type of coverage.
    List<Reference> network;
    /// Overall costs associated with the plan.
    List<InsurancePlanGeneralCost> generalCost;
    /// Costs associated with the coverage provided by the product.
    List<InsurancePlanSpecificCost> specificCost;
 
    InsurancePlanPlan.fromJSON( Map json ){
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
        this.type = json['type'] == null ? null : FHIRObjectFactory.buildFromJSON('CodeableConcept', json['type']);
        this.coverageArea = List<Reference>();
        if (json['coverageArea'] != null && json['coverageArea'].length > 0) {
          if( json['coverageArea'] is List ){
            json['coverageArea'].forEach((i){
              this.coverageArea.add(FHIRObjectFactory.buildFromJSON('Reference', i));
            });
          } else {
            // this handles the case when the list only has one object and does not return as a list
            var i = json['coverageArea'];
            this.coverageArea.add(FHIRObjectFactory.buildFromJSON('Reference', i));
          }          
        }
        this.network = List<Reference>();
        if (json['network'] != null && json['network'].length > 0) {
          if( json['network'] is List ){
            json['network'].forEach((i){
              this.network.add(FHIRObjectFactory.buildFromJSON('Reference', i));
            });
          } else {
            // this handles the case when the list only has one object and does not return as a list
            var i = json['network'];
            this.network.add(FHIRObjectFactory.buildFromJSON('Reference', i));
          }          
        }
        this.generalCost = List<InsurancePlanGeneralCost>();
        if (json['generalCost'] != null && json['generalCost'].length > 0) {
          if( json['generalCost'] is List ){
            json['generalCost'].forEach((i){
              this.generalCost.add(FHIRObjectFactory.buildFromJSON('InsurancePlanGeneralCost', i));
            });
          } else {
            // this handles the case when the list only has one object and does not return as a list
            var i = json['generalCost'];
            this.generalCost.add(FHIRObjectFactory.buildFromJSON('InsurancePlanGeneralCost', i));
          }          
        }
        this.specificCost = List<InsurancePlanSpecificCost>();
        if (json['specificCost'] != null && json['specificCost'].length > 0) {
          if( json['specificCost'] is List ){
            json['specificCost'].forEach((i){
              this.specificCost.add(FHIRObjectFactory.buildFromJSON('InsurancePlanSpecificCost', i));
            });
          } else {
            // this handles the case when the list only has one object and does not return as a list
            var i = json['specificCost'];
            this.specificCost.add(FHIRObjectFactory.buildFromJSON('InsurancePlanSpecificCost', i));
          }          
        }
    }
}
