import 'extension.dart';
import 'fhir_object_factory.dart';
import 'element.dart';
import 'period.dart';
/// A curated namespace that issues unique symbols within that namespace for the identification of concepts, people, devices, etc.  Represents a "System" used within the Identifier and Coding data types.
class NamingSystemUniqueId {
    /// Unique id for the element within a resource (for internal references). This may be any string value that does not contain spaces.
    String id;
    /// May be used to represent additional information that is not part of the basic definition of the element. To make the use of extensions safe and manageable, there is a strict set of governance  applied to the definition and use of extensions. Though any implementer can define an extension, there is a set of requirements that SHALL be met as part of the definition of the extension.
    List<Extension> extension;
    /// May be used to represent additional information that is not part of the basic definition of the element and that modifies the understanding of the element in which it is contained and/or the understanding of the containing element's descendants. Usually modifier elements provide negation or qualification. To make the use of extensions safe and manageable, there is a strict set of governance applied to the definition and use of extensions. Though any implementer can define an extension, there is a set of requirements that SHALL be met as part of the definition of the extension. Applications processing a resource are required to check for modifier extensions.
    /// 
    /// Modifier extensions SHALL NOT change the meaning of any elements on Resource or DomainResource (including cannot change the meaning of modifierExtension itself).
    List<Extension> modifierExtension;
    /// Identifies the unique identifier scheme used for this particular identifier.
    String type;
    /// Extensions for type
    Element extType;
    /// The string that should be sent over the wire to identify the code system or identifier system.
    String value;
    /// Extensions for value
    Element extValue;
    /// Indicates whether this identifier is the "preferred" identifier of this type.
    bool preferred;
    /// Extensions for preferred
    Element extPreferred;
    /// Notes about the past or intended usage of this identifier.
    String comment;
    /// Extensions for comment
    Element extComment;
    /// Identifies the period of time over which this identifier is considered appropriate to refer to the naming system.  Outside of this window, the identifier might be non-deterministic.
    Period period;
 
    NamingSystemUniqueId.fromJSON( Map json ){
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
        this.type = json['type'];
        this.extType = json['_type'] == null ? null : FHIRObjectFactory.buildFromJSON('Element', json['_type']);
        this.value = json['value'];
        this.extValue = json['_value'] == null ? null : FHIRObjectFactory.buildFromJSON('Element', json['_value']);
        this.preferred = json['preferred'];
        this.extPreferred = json['_preferred'] == null ? null : FHIRObjectFactory.buildFromJSON('Element', json['_preferred']);
        this.comment = json['comment'];
        this.extComment = json['_comment'] == null ? null : FHIRObjectFactory.buildFromJSON('Element', json['_comment']);
        this.period = json['period'] == null ? null : FHIRObjectFactory.buildFromJSON('Period', json['period']);
    }
}
