import 'extension.dart';
import 'fhir_object_factory.dart';
import 'codeable_concept.dart';
import 'insurance_plan_cost.dart';
/// Details of a Health Insurance product/plan provided by an organization.
class InsurancePlanBenefit1 {
    /// Unique id for the element within a resource (for internal references). This may be any string value that does not contain spaces.
    String id;
    /// May be used to represent additional information that is not part of the basic definition of the element. To make the use of extensions safe and manageable, there is a strict set of governance  applied to the definition and use of extensions. Though any implementer can define an extension, there is a set of requirements that SHALL be met as part of the definition of the extension.
    List<Extension> extension;
    /// May be used to represent additional information that is not part of the basic definition of the element and that modifies the understanding of the element in which it is contained and/or the understanding of the containing element's descendants. Usually modifier elements provide negation or qualification. To make the use of extensions safe and manageable, there is a strict set of governance applied to the definition and use of extensions. Though any implementer can define an extension, there is a set of requirements that SHALL be met as part of the definition of the extension. Applications processing a resource are required to check for modifier extensions.
    /// 
    /// Modifier extensions SHALL NOT change the meaning of any elements on Resource or DomainResource (including cannot change the meaning of modifierExtension itself).
    List<Extension> modifierExtension;
    /// Type of specific benefit (preventative; primary care office visit; speciality office visit; hospitalization; emergency room; urgent care).
    CodeableConcept type;
    /// List of the costs associated with a specific benefit.
    List<InsurancePlanCost> cost;
 
    InsurancePlanBenefit1.fromJSON( Map json ){
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
        this.cost = List<InsurancePlanCost>();
        if (json['cost'] != null && json['cost'].length > 0) {
          if( json['cost'] is List ){
            json['cost'].forEach((i){
              this.cost.add(FHIRObjectFactory.buildFromJSON('InsurancePlanCost', i));
            });
          } else {
            // this handles the case when the list only has one object and does not return as a list
            var i = json['cost'];
            this.cost.add(FHIRObjectFactory.buildFromJSON('InsurancePlanCost', i));
          }          
        }
    }
}
