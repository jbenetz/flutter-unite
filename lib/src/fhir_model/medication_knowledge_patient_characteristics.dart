import 'extension.dart';
import 'fhir_object_factory.dart';
import 'codeable_concept.dart';
import 'quantity.dart';
import 'element.dart';
/// Information about a medication that is used to support knowledge.
class MedicationKnowledgePatientCharacteristics {
    /// Unique id for the element within a resource (for internal references). This may be any string value that does not contain spaces.
    String id;
    /// May be used to represent additional information that is not part of the basic definition of the element. To make the use of extensions safe and manageable, there is a strict set of governance  applied to the definition and use of extensions. Though any implementer can define an extension, there is a set of requirements that SHALL be met as part of the definition of the extension.
    List<Extension> extension;
    /// May be used to represent additional information that is not part of the basic definition of the element and that modifies the understanding of the element in which it is contained and/or the understanding of the containing element's descendants. Usually modifier elements provide negation or qualification. To make the use of extensions safe and manageable, there is a strict set of governance applied to the definition and use of extensions. Though any implementer can define an extension, there is a set of requirements that SHALL be met as part of the definition of the extension. Applications processing a resource are required to check for modifier extensions.
    /// 
    /// Modifier extensions SHALL NOT change the meaning of any elements on Resource or DomainResource (including cannot change the meaning of modifierExtension itself).
    List<Extension> modifierExtension;
    /// Specific characteristic that is relevant to the administration guideline (e.g. height, weight, gender).
    CodeableConcept characteristicCodeableConcept;
    /// Specific characteristic that is relevant to the administration guideline (e.g. height, weight, gender).
    Quantity characteristicQuantity;
    /// The specific characteristic (e.g. height, weight, gender, etc.).
    List<String> value;
    /// Extensions for value
    List<Element> extValue;
 
    MedicationKnowledgePatientCharacteristics.fromJSON( Map json ){
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
        this.characteristicCodeableConcept = json['characteristicCodeableConcept'] == null ? null : FHIRObjectFactory.buildFromJSON('CodeableConcept', json['characteristicCodeableConcept']);
        this.characteristicQuantity = json['characteristicQuantity'] == null ? null : FHIRObjectFactory.buildFromJSON('Quantity', json['characteristicQuantity']);
        this.value = List<String>();
        if (json['value'] != null && json['value'].length > 0) {
          if( json['value'] is List ){
            json['value'].forEach((i){
              this.value.add(i);
            });
          } else {
            // this handles the case when the list only has one object and does not return as a list
            var i = json['value'];
            this.value.add(i);
          }          
        }
        this.extValue = List<Element>();
        if (json['_value'] != null && json['_value'].length > 0) {
          if( json['_value'] is List ){
            json['_value'].forEach((i){
              this.extValue.add(FHIRObjectFactory.buildFromJSON('Element', i));
            });
          } else {
            // this handles the case when the list only has one object and does not return as a list
            var i = json['_value'];
            this.extValue.add(FHIRObjectFactory.buildFromJSON('Element', i));
          }          
        }
    }
}
