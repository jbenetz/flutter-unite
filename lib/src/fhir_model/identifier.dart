import 'extension.dart';
import 'fhir_object_factory.dart';
import 'element.dart';
import 'codeable_concept.dart';
import 'period.dart';
import 'reference.dart';
/// An identifier - identifies some entity uniquely and unambiguously. Typically this is used for business identifiers.
class Identifier {
    /// Unique id for the element within a resource (for internal references). This may be any string value that does not contain spaces.
    String id;
    /// May be used to represent additional information that is not part of the basic definition of the element. To make the use of extensions safe and manageable, there is a strict set of governance  applied to the definition and use of extensions. Though any implementer can define an extension, there is a set of requirements that SHALL be met as part of the definition of the extension.
    List<Extension> extension;
    /// The purpose of this identifier.
    String use;
    /// Extensions for use
    Element extUse;
    /// A coded type for the identifier that can be used to determine which identifier to use for a specific purpose.
    CodeableConcept type;
    /// Establishes the namespace for the value - that is, a URL that describes a set values that are unique.
    String system;
    /// Extensions for system
    Element extSystem;
    /// The portion of the identifier typically relevant to the user and which is unique within the context of the system.
    String value;
    /// Extensions for value
    Element extValue;
    /// Time period during which identifier is/was valid for use.
    Period period;
    /// Organization that issued/manages the identifier.
    Reference assigner;
 
    Identifier.fromJSON( Map json ){
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
        this.use = json['use'];
        this.extUse = json['_use'] == null ? null : FHIRObjectFactory.buildFromJSON('Element', json['_use']);
        this.type = json['type'] == null ? null : FHIRObjectFactory.buildFromJSON('CodeableConcept', json['type']);
        this.system = json['system'];
        this.extSystem = json['_system'] == null ? null : FHIRObjectFactory.buildFromJSON('Element', json['_system']);
        this.value = json['value'];
        this.extValue = json['_value'] == null ? null : FHIRObjectFactory.buildFromJSON('Element', json['_value']);
        this.period = json['period'] == null ? null : FHIRObjectFactory.buildFromJSON('Period', json['period']);
        this.assigner = json['assigner'] == null ? null : FHIRObjectFactory.buildFromJSON('Reference', json['assigner']);
    }
}
