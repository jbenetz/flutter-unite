import 'extension.dart';
import 'fhir_object_factory.dart';
import 'reference.dart';
import 'element.dart';
/// A  text note which also  contains information about who made the statement and when.
class Annotation {
    /// Unique id for the element within a resource (for internal references). This may be any string value that does not contain spaces.
    String id;
    /// May be used to represent additional information that is not part of the basic definition of the element. To make the use of extensions safe and manageable, there is a strict set of governance  applied to the definition and use of extensions. Though any implementer can define an extension, there is a set of requirements that SHALL be met as part of the definition of the extension.
    List<Extension> extension;
    /// The individual responsible for making the annotation.
    Reference authorReference;
    /// Extensions for authorString
    Element extAuthorString;
    /// Indicates when this particular annotation was made.
    DateTime time;
    /// Extensions for time
    Element extTime;
    /// The text of the annotation in markdown format.
    String text;
    /// Extensions for text
    Element extText;
 
    Annotation.fromJSON( Map json ){
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
        this.authorReference = json['authorReference'] == null ? null : FHIRObjectFactory.buildFromJSON('Reference', json['authorReference']);
        this.extAuthorString = json['_authorString'] == null ? null : FHIRObjectFactory.buildFromJSON('Element', json['_authorString']);
        if( json['time'] != null ) { this.time = DateTime.parse(json['time']);}
        this.extTime = json['_time'] == null ? null : FHIRObjectFactory.buildFromJSON('Element', json['_time']);
        this.text = json['text'];
        this.extText = json['_text'] == null ? null : FHIRObjectFactory.buildFromJSON('Element', json['_text']);
    }
}
