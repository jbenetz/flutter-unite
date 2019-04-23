import 'extension.dart';
import 'fhir_object_factory.dart';
import 'element.dart';
/// A reference to a code defined by a terminology system.
class Coding {
    /// Unique id for the element within a resource (for internal references). This may be any string value that does not contain spaces.
    String id;
    /// May be used to represent additional information that is not part of the basic definition of the element. To make the use of extensions safe and manageable, there is a strict set of governance  applied to the definition and use of extensions. Though any implementer can define an extension, there is a set of requirements that SHALL be met as part of the definition of the extension.
    List<Extension> extension;
    /// The identification of the code system that defines the meaning of the symbol in the code.
    String system;
    /// Extensions for system
    Element extSystem;
    /// The version of the code system which was used when choosing this code. Note that a well-maintained code system does not need the version reported, because the meaning of codes is consistent across versions. However this cannot consistently be assured, and when the meaning is not guaranteed to be consistent, the version SHOULD be exchanged.
    String version;
    /// Extensions for version
    Element extVersion;
    /// A symbol in syntax defined by the system. The symbol may be a predefined code or an expression in a syntax defined by the coding system (e.g. post-coordination).
    String code;
    /// Extensions for code
    Element extCode;
    /// A representation of the meaning of the code in the system, following the rules of the system.
    String display;
    /// Extensions for display
    Element extDisplay;
    /// Indicates that this coding was chosen by a user directly - e.g. off a pick list of available items (codes or displays).
    bool userSelected;
    /// Extensions for userSelected
    Element extUserSelected;
 
    Coding.fromJSON( Map json ){
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
        this.system = json['system'];
        this.extSystem = json['_system'] == null ? null : FHIRObjectFactory.buildFromJSON('Element', json['_system']);
        this.version = json['version'];
        this.extVersion = json['_version'] == null ? null : FHIRObjectFactory.buildFromJSON('Element', json['_version']);
        this.code = json['code'];
        this.extCode = json['_code'] == null ? null : FHIRObjectFactory.buildFromJSON('Element', json['_code']);
        this.display = json['display'];
        this.extDisplay = json['_display'] == null ? null : FHIRObjectFactory.buildFromJSON('Element', json['_display']);
        this.userSelected = json['userSelected'];
        this.extUserSelected = json['_userSelected'] == null ? null : FHIRObjectFactory.buildFromJSON('Element', json['_userSelected']);
    }
}
