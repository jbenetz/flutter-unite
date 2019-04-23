import 'extension.dart';
import 'fhir_object_factory.dart';
import 'element.dart';
/// A Map of relationships between 2 structures that can be used to transform data.
class StructureMapDependent {
    /// Unique id for the element within a resource (for internal references). This may be any string value that does not contain spaces.
    String id;
    /// May be used to represent additional information that is not part of the basic definition of the element. To make the use of extensions safe and manageable, there is a strict set of governance  applied to the definition and use of extensions. Though any implementer can define an extension, there is a set of requirements that SHALL be met as part of the definition of the extension.
    List<Extension> extension;
    /// May be used to represent additional information that is not part of the basic definition of the element and that modifies the understanding of the element in which it is contained and/or the understanding of the containing element's descendants. Usually modifier elements provide negation or qualification. To make the use of extensions safe and manageable, there is a strict set of governance applied to the definition and use of extensions. Though any implementer can define an extension, there is a set of requirements that SHALL be met as part of the definition of the extension. Applications processing a resource are required to check for modifier extensions.
    /// 
    /// Modifier extensions SHALL NOT change the meaning of any elements on Resource or DomainResource (including cannot change the meaning of modifierExtension itself).
    List<Extension> modifierExtension;
    /// Name of a rule or group to apply.
    String name;
    /// Extensions for name
    Element extName;
    /// Variable to pass to the rule or group.
    List<String> variable;
    /// Extensions for variable
    List<Element> extVariable;
 
    StructureMapDependent.fromJSON( Map json ){
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
        this.name = json['name'];
        this.extName = json['_name'] == null ? null : FHIRObjectFactory.buildFromJSON('Element', json['_name']);
        this.variable = List<String>();
        if (json['variable'] != null && json['variable'].length > 0) {
          if( json['variable'] is List ){
            json['variable'].forEach((i){
              this.variable.add(i);
            });
          } else {
            // this handles the case when the list only has one object and does not return as a list
            var i = json['variable'];
            this.variable.add(i);
          }          
        }
        this.extVariable = List<Element>();
        if (json['_variable'] != null && json['_variable'].length > 0) {
          if( json['_variable'] is List ){
            json['_variable'].forEach((i){
              this.extVariable.add(FHIRObjectFactory.buildFromJSON('Element', i));
            });
          } else {
            // this handles the case when the list only has one object and does not return as a list
            var i = json['_variable'];
            this.extVariable.add(FHIRObjectFactory.buildFromJSON('Element', i));
          }          
        }
    }
}
