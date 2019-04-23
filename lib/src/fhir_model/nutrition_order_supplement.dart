import 'extension.dart';
import 'fhir_object_factory.dart';
import 'codeable_concept.dart';
import 'element.dart';
import 'timing.dart';
import 'quantity.dart';
/// A request to supply a diet, formula feeding (enteral) or oral nutritional supplement to a patient/resident.
class NutritionOrderSupplement {
    /// Unique id for the element within a resource (for internal references). This may be any string value that does not contain spaces.
    String id;
    /// May be used to represent additional information that is not part of the basic definition of the element. To make the use of extensions safe and manageable, there is a strict set of governance  applied to the definition and use of extensions. Though any implementer can define an extension, there is a set of requirements that SHALL be met as part of the definition of the extension.
    List<Extension> extension;
    /// May be used to represent additional information that is not part of the basic definition of the element and that modifies the understanding of the element in which it is contained and/or the understanding of the containing element's descendants. Usually modifier elements provide negation or qualification. To make the use of extensions safe and manageable, there is a strict set of governance applied to the definition and use of extensions. Though any implementer can define an extension, there is a set of requirements that SHALL be met as part of the definition of the extension. Applications processing a resource are required to check for modifier extensions.
    /// 
    /// Modifier extensions SHALL NOT change the meaning of any elements on Resource or DomainResource (including cannot change the meaning of modifierExtension itself).
    List<Extension> modifierExtension;
    /// The kind of nutritional supplement product required such as a high protein or pediatric clear liquid supplement.
    CodeableConcept type;
    /// The product or brand name of the nutritional supplement such as "Acme Protein Shake".
    String productName;
    /// Extensions for productName
    Element extProductName;
    /// The time period and frequency at which the supplement(s) should be given.  The supplement should be given for the combination of all schedules if more than one schedule is present.
    List<Timing> schedule;
    /// The amount of the nutritional supplement to be given.
    Quantity quantity;
    /// Free text or additional instructions or information pertaining to the oral supplement.
    String instruction;
    /// Extensions for instruction
    Element extInstruction;
 
    NutritionOrderSupplement.fromJSON( Map json ){
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
        this.productName = json['productName'];
        this.extProductName = json['_productName'] == null ? null : FHIRObjectFactory.buildFromJSON('Element', json['_productName']);
        this.schedule = List<Timing>();
        if (json['schedule'] != null && json['schedule'].length > 0) {
          if( json['schedule'] is List ){
            json['schedule'].forEach((i){
              this.schedule.add(FHIRObjectFactory.buildFromJSON('Timing', i));
            });
          } else {
            // this handles the case when the list only has one object and does not return as a list
            var i = json['schedule'];
            this.schedule.add(FHIRObjectFactory.buildFromJSON('Timing', i));
          }          
        }
        this.quantity = json['quantity'] == null ? null : FHIRObjectFactory.buildFromJSON('Quantity', json['quantity']);
        this.instruction = json['instruction'];
        this.extInstruction = json['_instruction'] == null ? null : FHIRObjectFactory.buildFromJSON('Element', json['_instruction']);
    }
}
