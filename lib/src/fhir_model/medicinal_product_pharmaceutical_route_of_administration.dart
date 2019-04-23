import 'extension.dart';
import 'fhir_object_factory.dart';
import 'codeable_concept.dart';
import 'quantity.dart';
import 'ratio.dart';
import 'duration.dart';
import 'medicinal_product_pharmaceutical_target_species.dart';
/// A pharmaceutical product described in terms of its composition and dose form.
class MedicinalProductPharmaceuticalRouteOfAdministration {
    /// Unique id for the element within a resource (for internal references). This may be any string value that does not contain spaces.
    String id;
    /// May be used to represent additional information that is not part of the basic definition of the element. To make the use of extensions safe and manageable, there is a strict set of governance  applied to the definition and use of extensions. Though any implementer can define an extension, there is a set of requirements that SHALL be met as part of the definition of the extension.
    List<Extension> extension;
    /// May be used to represent additional information that is not part of the basic definition of the element and that modifies the understanding of the element in which it is contained and/or the understanding of the containing element's descendants. Usually modifier elements provide negation or qualification. To make the use of extensions safe and manageable, there is a strict set of governance applied to the definition and use of extensions. Though any implementer can define an extension, there is a set of requirements that SHALL be met as part of the definition of the extension. Applications processing a resource are required to check for modifier extensions.
    /// 
    /// Modifier extensions SHALL NOT change the meaning of any elements on Resource or DomainResource (including cannot change the meaning of modifierExtension itself).
    List<Extension> modifierExtension;
    /// Coded expression for the route.
    CodeableConcept code;
    /// The first dose (dose quantity) administered in humans can be specified, for a product under investigation, using a numerical value and its unit of measurement.
    Quantity firstDose;
    /// The maximum single dose that can be administered as per the protocol of a clinical trial can be specified using a numerical value and its unit of measurement.
    Quantity maxSingleDose;
    /// The maximum dose per day (maximum dose quantity to be administered in any one 24-h period) that can be administered as per the protocol referenced in the clinical trial authorisation.
    Quantity maxDosePerDay;
    /// The maximum dose per treatment period that can be administered as per the protocol referenced in the clinical trial authorisation.
    Ratio maxDosePerTreatmentPeriod;
    /// The maximum treatment period during which an Investigational Medicinal Product can be administered as per the protocol referenced in the clinical trial authorisation.
    Duration maxTreatmentPeriod;
    /// A species for which this route applies.
    List<MedicinalProductPharmaceuticalTargetSpecies> targetSpecies;
 
    MedicinalProductPharmaceuticalRouteOfAdministration.fromJSON( Map json ){
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
        this.code = json['code'] == null ? null : FHIRObjectFactory.buildFromJSON('CodeableConcept', json['code']);
        this.firstDose = json['firstDose'] == null ? null : FHIRObjectFactory.buildFromJSON('Quantity', json['firstDose']);
        this.maxSingleDose = json['maxSingleDose'] == null ? null : FHIRObjectFactory.buildFromJSON('Quantity', json['maxSingleDose']);
        this.maxDosePerDay = json['maxDosePerDay'] == null ? null : FHIRObjectFactory.buildFromJSON('Quantity', json['maxDosePerDay']);
        this.maxDosePerTreatmentPeriod = json['maxDosePerTreatmentPeriod'] == null ? null : FHIRObjectFactory.buildFromJSON('Ratio', json['maxDosePerTreatmentPeriod']);
        this.maxTreatmentPeriod = json['maxTreatmentPeriod'] == null ? null : FHIRObjectFactory.buildFromJSON('Duration', json['maxTreatmentPeriod']);
        this.targetSpecies = List<MedicinalProductPharmaceuticalTargetSpecies>();
        if (json['targetSpecies'] != null && json['targetSpecies'].length > 0) {
          if( json['targetSpecies'] is List ){
            json['targetSpecies'].forEach((i){
              this.targetSpecies.add(FHIRObjectFactory.buildFromJSON('MedicinalProductPharmaceuticalTargetSpecies', i));
            });
          } else {
            // this handles the case when the list only has one object and does not return as a list
            var i = json['targetSpecies'];
            this.targetSpecies.add(FHIRObjectFactory.buildFromJSON('MedicinalProductPharmaceuticalTargetSpecies', i));
          }          
        }
    }
}
