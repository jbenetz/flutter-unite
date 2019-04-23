import 'extension.dart';
import 'fhir_object_factory.dart';
import 'medication_request_initial_fill.dart';
import 'duration.dart';
import 'period.dart';
import 'element.dart';
import 'quantity.dart';
import 'reference.dart';
/// An order or request for both supply of the medication and the instructions for administration of the medication to a patient. The resource is called "MedicationRequest" rather than "MedicationPrescription" or "MedicationOrder" to generalize the use across inpatient and outpatient settings, including care plans, etc., and to harmonize with workflow patterns.
class MedicationRequestDispenseRequest {
    /// Unique id for the element within a resource (for internal references). This may be any string value that does not contain spaces.
    String id;
    /// May be used to represent additional information that is not part of the basic definition of the element. To make the use of extensions safe and manageable, there is a strict set of governance  applied to the definition and use of extensions. Though any implementer can define an extension, there is a set of requirements that SHALL be met as part of the definition of the extension.
    List<Extension> extension;
    /// May be used to represent additional information that is not part of the basic definition of the element and that modifies the understanding of the element in which it is contained and/or the understanding of the containing element's descendants. Usually modifier elements provide negation or qualification. To make the use of extensions safe and manageable, there is a strict set of governance applied to the definition and use of extensions. Though any implementer can define an extension, there is a set of requirements that SHALL be met as part of the definition of the extension. Applications processing a resource are required to check for modifier extensions.
    /// 
    /// Modifier extensions SHALL NOT change the meaning of any elements on Resource or DomainResource (including cannot change the meaning of modifierExtension itself).
    List<Extension> modifierExtension;
    /// Indicates the quantity or duration for the first dispense of the medication.
    MedicationRequestInitialFill initialFill;
    /// The minimum period of time that must occur between dispenses of the medication.
    Duration dispenseInterval;
    /// This indicates the validity period of a prescription (stale dating the Prescription).
    Period validityPeriod;
    /// An integer indicating the number of times, in addition to the original dispense, (aka refills or repeats) that the patient can receive the prescribed medication. Usage Notes: This integer does not include the original order dispense. This means that if an order indicates dispense 30 tablets plus "3 repeats", then the order can be dispensed a total of 4 times and the patient can receive a total of 120 tablets.  A prescriber may explicitly say that zero refills are permitted after the initial dispense.
    int numberOfRepeatsAllowed;
    /// Extensions for numberOfRepeatsAllowed
    Element extNumberOfRepeatsAllowed;
    /// The amount that is to be dispensed for one fill.
    Quantity quantity;
    /// Identifies the period time over which the supplied product is expected to be used, or the length of time the dispense is expected to last.
    Duration expectedSupplyDuration;
    /// Indicates the intended dispensing Organization specified by the prescriber.
    Reference performer;
 
    MedicationRequestDispenseRequest.fromJSON( Map json ){
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
        this.initialFill = json['initialFill'] == null ? null : FHIRObjectFactory.buildFromJSON('MedicationRequestInitialFill', json['initialFill']);
        this.dispenseInterval = json['dispenseInterval'] == null ? null : FHIRObjectFactory.buildFromJSON('Duration', json['dispenseInterval']);
        this.validityPeriod = json['validityPeriod'] == null ? null : FHIRObjectFactory.buildFromJSON('Period', json['validityPeriod']);
        this.numberOfRepeatsAllowed = json['numberOfRepeatsAllowed'];
        this.extNumberOfRepeatsAllowed = json['_numberOfRepeatsAllowed'] == null ? null : FHIRObjectFactory.buildFromJSON('Element', json['_numberOfRepeatsAllowed']);
        this.quantity = json['quantity'] == null ? null : FHIRObjectFactory.buildFromJSON('Quantity', json['quantity']);
        this.expectedSupplyDuration = json['expectedSupplyDuration'] == null ? null : FHIRObjectFactory.buildFromJSON('Duration', json['expectedSupplyDuration']);
        this.performer = json['performer'] == null ? null : FHIRObjectFactory.buildFromJSON('Reference', json['performer']);
    }
}
