import 'extension.dart';
import 'fhir_object_factory.dart';
import 'element.dart';
import 'timing.dart';
import 'reference.dart';
import 'data_requirement.dart';
import 'expression.dart';
/// A description of a triggering event. Triggering events can be named events, data events, or periodic, as determined by the type element.
class TriggerDefinition {
    /// Unique id for the element within a resource (for internal references). This may be any string value that does not contain spaces.
    String id;
    /// May be used to represent additional information that is not part of the basic definition of the element. To make the use of extensions safe and manageable, there is a strict set of governance  applied to the definition and use of extensions. Though any implementer can define an extension, there is a set of requirements that SHALL be met as part of the definition of the extension.
    List<Extension> extension;
    /// The type of triggering event.
    String type;
    /// Extensions for type
    Element extType;
    /// A formal name for the event. This may be an absolute URI that identifies the event formally (e.g. from a trigger registry), or a simple relative URI that identifies the event in a local context.
    String name;
    /// Extensions for name
    Element extName;
    /// The timing of the event (if this is a periodic trigger).
    Timing timingTiming;
    /// The timing of the event (if this is a periodic trigger).
    Reference timingReference;
    /// Extensions for timingDate
    Element extTimingDate;
    /// Extensions for timingDateTime
    Element extTimingDateTime;
    /// The triggering data of the event (if this is a data trigger). If more than one data is requirement is specified, then all the data requirements must be true.
    List<DataRequirement> data;
    /// A boolean-valued expression that is evaluated in the context of the container of the trigger definition and returns whether or not the trigger fires.
    Expression condition;
 
    TriggerDefinition.fromJSON( Map json ){
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
        this.type = json['type'];
        this.extType = json['_type'] == null ? null : FHIRObjectFactory.buildFromJSON('Element', json['_type']);
        this.name = json['name'];
        this.extName = json['_name'] == null ? null : FHIRObjectFactory.buildFromJSON('Element', json['_name']);
        this.timingTiming = json['timingTiming'] == null ? null : FHIRObjectFactory.buildFromJSON('Timing', json['timingTiming']);
        this.timingReference = json['timingReference'] == null ? null : FHIRObjectFactory.buildFromJSON('Reference', json['timingReference']);
        this.extTimingDate = json['_timingDate'] == null ? null : FHIRObjectFactory.buildFromJSON('Element', json['_timingDate']);
        this.extTimingDateTime = json['_timingDateTime'] == null ? null : FHIRObjectFactory.buildFromJSON('Element', json['_timingDateTime']);
        this.data = List<DataRequirement>();
        if (json['data'] != null && json['data'].length > 0) {
          if( json['data'] is List ){
            json['data'].forEach((i){
              this.data.add(FHIRObjectFactory.buildFromJSON('DataRequirement', i));
            });
          } else {
            // this handles the case when the list only has one object and does not return as a list
            var i = json['data'];
            this.data.add(FHIRObjectFactory.buildFromJSON('DataRequirement', i));
          }          
        }
        this.condition = json['condition'] == null ? null : FHIRObjectFactory.buildFromJSON('Expression', json['condition']);
    }
}
