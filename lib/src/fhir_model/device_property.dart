import 'extension.dart';
import 'fhir_object_factory.dart';
import 'codeable_concept.dart';
import 'quantity.dart';
/// A type of a manufactured item that is used in the provision of healthcare without being substantially changed through that activity. The device may be a medical or non-medical device.
class DeviceProperty {
    /// Unique id for the element within a resource (for internal references). This may be any string value that does not contain spaces.
    String id;
    /// May be used to represent additional information that is not part of the basic definition of the element. To make the use of extensions safe and manageable, there is a strict set of governance  applied to the definition and use of extensions. Though any implementer can define an extension, there is a set of requirements that SHALL be met as part of the definition of the extension.
    List<Extension> extension;
    /// May be used to represent additional information that is not part of the basic definition of the element and that modifies the understanding of the element in which it is contained and/or the understanding of the containing element's descendants. Usually modifier elements provide negation or qualification. To make the use of extensions safe and manageable, there is a strict set of governance applied to the definition and use of extensions. Though any implementer can define an extension, there is a set of requirements that SHALL be met as part of the definition of the extension. Applications processing a resource are required to check for modifier extensions.
    /// 
    /// Modifier extensions SHALL NOT change the meaning of any elements on Resource or DomainResource (including cannot change the meaning of modifierExtension itself).
    List<Extension> modifierExtension;
    /// Code that specifies the property DeviceDefinitionPropetyCode (Extensible).
    CodeableConcept type;
    /// Property value as a quantity.
    List<Quantity> valueQuantity;
    /// Property value as a code, e.g., NTP4 (synced to NTP).
    List<CodeableConcept> valueCode;
 
    DeviceProperty.fromJSON( Map json ){
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
        this.valueQuantity = List<Quantity>();
        if (json['valueQuantity'] != null && json['valueQuantity'].length > 0) {
          if( json['valueQuantity'] is List ){
            json['valueQuantity'].forEach((i){
              this.valueQuantity.add(FHIRObjectFactory.buildFromJSON('Quantity', i));
            });
          } else {
            // this handles the case when the list only has one object and does not return as a list
            var i = json['valueQuantity'];
            this.valueQuantity.add(FHIRObjectFactory.buildFromJSON('Quantity', i));
          }          
        }
        this.valueCode = List<CodeableConcept>();
        if (json['valueCode'] != null && json['valueCode'].length > 0) {
          if( json['valueCode'] is List ){
            json['valueCode'].forEach((i){
              this.valueCode.add(FHIRObjectFactory.buildFromJSON('CodeableConcept', i));
            });
          } else {
            // this handles the case when the list only has one object and does not return as a list
            var i = json['valueCode'];
            this.valueCode.add(FHIRObjectFactory.buildFromJSON('CodeableConcept', i));
          }          
        }
    }
}
