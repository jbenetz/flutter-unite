import 'extension.dart';
import 'fhir_object_factory.dart';
import 'codeable_concept.dart';
import 'reference.dart';
import 'insurance_plan_benefit.dart';
/// Details of a Health Insurance product/plan provided by an organization.
class InsurancePlanCoverage {
    /// Unique id for the element within a resource (for internal references). This may be any string value that does not contain spaces.
    String id;
    /// May be used to represent additional information that is not part of the basic definition of the element. To make the use of extensions safe and manageable, there is a strict set of governance  applied to the definition and use of extensions. Though any implementer can define an extension, there is a set of requirements that SHALL be met as part of the definition of the extension.
    List<Extension> extension;
    /// May be used to represent additional information that is not part of the basic definition of the element and that modifies the understanding of the element in which it is contained and/or the understanding of the containing element's descendants. Usually modifier elements provide negation or qualification. To make the use of extensions safe and manageable, there is a strict set of governance applied to the definition and use of extensions. Though any implementer can define an extension, there is a set of requirements that SHALL be met as part of the definition of the extension. Applications processing a resource are required to check for modifier extensions.
    /// 
    /// Modifier extensions SHALL NOT change the meaning of any elements on Resource or DomainResource (including cannot change the meaning of modifierExtension itself).
    List<Extension> modifierExtension;
    /// Type of coverage  (Medical; Dental; Mental Health; Substance Abuse; Vision; Drug; Short Term; Long Term Care; Hospice; Home Health).
    CodeableConcept type;
    /// Reference to the network that providing the type of coverage.
    List<Reference> network;
    /// Specific benefits under this type of coverage.
    List<InsurancePlanBenefit> benefit;
 
    InsurancePlanCoverage.fromJSON( Map json ){
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
        this.benefit = List<InsurancePlanBenefit>();
        if (json['benefit'] != null && json['benefit'].length > 0) {
          if( json['benefit'] is List ){
            json['benefit'].forEach((i){
              this.benefit.add(FHIRObjectFactory.buildFromJSON('InsurancePlanBenefit', i));
            });
          } else {
            // this handles the case when the list only has one object and does not return as a list
            var i = json['benefit'];
            this.benefit.add(FHIRObjectFactory.buildFromJSON('InsurancePlanBenefit', i));
          }          
        }
    }
}