import 'extension.dart';
import 'fhir_object_factory.dart';
import 'element.dart';
import 'period.dart';
/// A material substance originating from a biological entity intended to be transplanted or infused
    /// into another (possibly the same) biological entity.
class BiologicallyDerivedProductStorage {
    /// Unique id for the element within a resource (for internal references). This may be any string value that does not contain spaces.
    String id;
    /// May be used to represent additional information that is not part of the basic definition of the element. To make the use of extensions safe and manageable, there is a strict set of governance  applied to the definition and use of extensions. Though any implementer can define an extension, there is a set of requirements that SHALL be met as part of the definition of the extension.
    List<Extension> extension;
    /// May be used to represent additional information that is not part of the basic definition of the element and that modifies the understanding of the element in which it is contained and/or the understanding of the containing element's descendants. Usually modifier elements provide negation or qualification. To make the use of extensions safe and manageable, there is a strict set of governance applied to the definition and use of extensions. Though any implementer can define an extension, there is a set of requirements that SHALL be met as part of the definition of the extension. Applications processing a resource are required to check for modifier extensions.
    /// 
    /// Modifier extensions SHALL NOT change the meaning of any elements on Resource or DomainResource (including cannot change the meaning of modifierExtension itself).
    List<Extension> modifierExtension;
    /// Description of storage.
    String description;
    /// Extensions for description
    Element extDescription;
    /// Storage temperature.
    double temperature;
    /// Extensions for temperature
    Element extTemperature;
    /// Temperature scale used.
    String scale;
    /// Extensions for scale
    Element extScale;
    /// Storage timeperiod.
    Period duration;
 
    BiologicallyDerivedProductStorage.fromJSON( Map json ){
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
        this.description = json['description'];
        this.extDescription = json['_description'] == null ? null : FHIRObjectFactory.buildFromJSON('Element', json['_description']);
        if( json['temperature'] != null && json['temperature'] is int ) {
          this.temperature = json['temperature'].toDouble();
        } else {
          this.temperature = json['temperature'];
        }
    
        this.extTemperature = json['_temperature'] == null ? null : FHIRObjectFactory.buildFromJSON('Element', json['_temperature']);
        this.scale = json['scale'];
        this.extScale = json['_scale'] == null ? null : FHIRObjectFactory.buildFromJSON('Element', json['_scale']);
        this.duration = json['duration'] == null ? null : FHIRObjectFactory.buildFromJSON('Period', json['duration']);
    }
}
