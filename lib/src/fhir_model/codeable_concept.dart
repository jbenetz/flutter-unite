import 'extension.dart';
import 'fhir_object_factory.dart';
import 'coding.dart';
import 'element.dart';
/// A concept that may be defined by a formal reference to a terminology or ontology or may be provided by text.
class CodeableConcept {
    /// Unique id for the element within a resource (for internal references). This may be any string value that does not contain spaces.
    String id;
    /// May be used to represent additional information that is not part of the basic definition of the element. To make the use of extensions safe and manageable, there is a strict set of governance  applied to the definition and use of extensions. Though any implementer can define an extension, there is a set of requirements that SHALL be met as part of the definition of the extension.
    List<Extension> extension;
    /// A reference to a code defined by a terminology system.
    List<Coding> coding;
    /// A human language representation of the concept as seen/selected/uttered by the user who entered the data and/or which represents the intended meaning of the user.
    String text;
    /// Extensions for text
    Element extText;
 
    CodeableConcept.fromJSON( Map json ){
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
        this.coding = List<Coding>();
        if (json['coding'] != null && json['coding'].length > 0) {
          if( json['coding'] is List ){
            json['coding'].forEach((i){
              this.coding.add(FHIRObjectFactory.buildFromJSON('Coding', i));
            });
          } else {
            // this handles the case when the list only has one object and does not return as a list
            var i = json['coding'];
            this.coding.add(FHIRObjectFactory.buildFromJSON('Coding', i));
          }          
        }
        this.text = json['text'];
        this.extText = json['_text'] == null ? null : FHIRObjectFactory.buildFromJSON('Element', json['_text']);
    }
}
