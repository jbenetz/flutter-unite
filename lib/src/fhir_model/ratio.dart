import 'extension.dart';
import 'fhir_object_factory.dart';
import 'quantity.dart';
/// A relationship of two Quantity values - expressed as a numerator and a denominator.
class Ratio {
    /// Unique id for the element within a resource (for internal references). This may be any string value that does not contain spaces.
    String id;
    /// May be used to represent additional information that is not part of the basic definition of the element. To make the use of extensions safe and manageable, there is a strict set of governance  applied to the definition and use of extensions. Though any implementer can define an extension, there is a set of requirements that SHALL be met as part of the definition of the extension.
    List<Extension> extension;
    /// The value of the numerator.
    Quantity numerator;
    /// The value of the denominator.
    Quantity denominator;
 
    Ratio.fromJSON( Map json ){
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
        this.numerator = json['numerator'] == null ? null : FHIRObjectFactory.buildFromJSON('Quantity', json['numerator']);
        this.denominator = json['denominator'] == null ? null : FHIRObjectFactory.buildFromJSON('Quantity', json['denominator']);
    }
}
