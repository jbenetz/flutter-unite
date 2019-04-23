import 'extension.dart';
import 'fhir_object_factory.dart';
import 'codeable_concept.dart';
import 'quantity.dart';
import 'money.dart';
import 'coverage_exception.dart';
/// Financial instrument which may be used to reimburse or pay for health care products and services. Includes both insurance and self-payment.
class CoverageCostToBeneficiary {
    /// Unique id for the element within a resource (for internal references). This may be any string value that does not contain spaces.
    String id;
    /// May be used to represent additional information that is not part of the basic definition of the element. To make the use of extensions safe and manageable, there is a strict set of governance  applied to the definition and use of extensions. Though any implementer can define an extension, there is a set of requirements that SHALL be met as part of the definition of the extension.
    List<Extension> extension;
    /// May be used to represent additional information that is not part of the basic definition of the element and that modifies the understanding of the element in which it is contained and/or the understanding of the containing element's descendants. Usually modifier elements provide negation or qualification. To make the use of extensions safe and manageable, there is a strict set of governance applied to the definition and use of extensions. Though any implementer can define an extension, there is a set of requirements that SHALL be met as part of the definition of the extension. Applications processing a resource are required to check for modifier extensions.
    /// 
    /// Modifier extensions SHALL NOT change the meaning of any elements on Resource or DomainResource (including cannot change the meaning of modifierExtension itself).
    List<Extension> modifierExtension;
    /// The category of patient centric costs associated with treatment.
    CodeableConcept type;
    /// The amount due from the patient for the cost category.
    Quantity valueQuantity;
    /// The amount due from the patient for the cost category.
    Money valueMoney;
    /// A suite of codes indicating exceptions or reductions to patient costs and their effective periods.
    List<CoverageException> exception;
 
    CoverageCostToBeneficiary.fromJSON( Map json ){
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
        this.valueQuantity = json['valueQuantity'] == null ? null : FHIRObjectFactory.buildFromJSON('Quantity', json['valueQuantity']);
        this.valueMoney = json['valueMoney'] == null ? null : FHIRObjectFactory.buildFromJSON('Money', json['valueMoney']);
        this.exception = List<CoverageException>();
        if (json['exception'] != null && json['exception'].length > 0) {
          if( json['exception'] is List ){
            json['exception'].forEach((i){
              this.exception.add(FHIRObjectFactory.buildFromJSON('CoverageException', i));
            });
          } else {
            // this handles the case when the list only has one object and does not return as a list
            var i = json['exception'];
            this.exception.add(FHIRObjectFactory.buildFromJSON('CoverageException', i));
          }          
        }
    }
}
