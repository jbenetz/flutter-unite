import 'extension.dart';
import 'fhir_object_factory.dart';
import 'element.dart';
/// A time period defined by a start and end date and optionally time.
class Period {
    /// Unique id for the element within a resource (for internal references). This may be any string value that does not contain spaces.
    String id;
    /// May be used to represent additional information that is not part of the basic definition of the element. To make the use of extensions safe and manageable, there is a strict set of governance  applied to the definition and use of extensions. Though any implementer can define an extension, there is a set of requirements that SHALL be met as part of the definition of the extension.
    List<Extension> extension;
    /// The start of the period. The boundary is inclusive.
    DateTime start;
    /// Extensions for start
    Element extStart;
    /// The end of the period. If the end of the period is missing, it means no end was known or planned at the time the instance was created. The start may be in the past, and the end date in the future, which means that period is expected/planned to end at that time.
    DateTime end;
    /// Extensions for end
    Element extEnd;
 
    Period.fromJSON( Map json ){
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
        if( json['start'] != null ) { this.start = DateTime.parse(json['start']);}
        this.extStart = json['_start'] == null ? null : FHIRObjectFactory.buildFromJSON('Element', json['_start']);
        if( json['end'] != null ) { this.end = DateTime.parse(json['end']);}
        this.extEnd = json['_end'] == null ? null : FHIRObjectFactory.buildFromJSON('Element', json['_end']);
    }
}
