import 'extension.dart';
import 'fhir_object_factory.dart';
import 'element.dart';
import 'structure_map_input.dart';
import 'structure_map_rule.dart';
/// A Map of relationships between 2 structures that can be used to transform data.
class StructureMapGroup {
    /// Unique id for the element within a resource (for internal references). This may be any string value that does not contain spaces.
    String id;
    /// May be used to represent additional information that is not part of the basic definition of the element. To make the use of extensions safe and manageable, there is a strict set of governance  applied to the definition and use of extensions. Though any implementer can define an extension, there is a set of requirements that SHALL be met as part of the definition of the extension.
    List<Extension> extension;
    /// May be used to represent additional information that is not part of the basic definition of the element and that modifies the understanding of the element in which it is contained and/or the understanding of the containing element's descendants. Usually modifier elements provide negation or qualification. To make the use of extensions safe and manageable, there is a strict set of governance applied to the definition and use of extensions. Though any implementer can define an extension, there is a set of requirements that SHALL be met as part of the definition of the extension. Applications processing a resource are required to check for modifier extensions.
    /// 
    /// Modifier extensions SHALL NOT change the meaning of any elements on Resource or DomainResource (including cannot change the meaning of modifierExtension itself).
    List<Extension> modifierExtension;
    /// A unique name for the group for the convenience of human readers.
    String name;
    /// Extensions for name
    Element extName;
    /// Another group that this group adds rules to.
    String extends1;
    /// Extensions for extends
    Element extExtends;
    /// If this is the default rule set to apply for the source type or this combination of types.
    String typeMode;
    /// Extensions for typeMode
    Element extTypeMode;
    /// Additional supporting documentation that explains the purpose of the group and the types of mappings within it.
    String documentation;
    /// Extensions for documentation
    Element extDocumentation;
    /// A name assigned to an instance of data. The instance must be provided when the mapping is invoked.
    List<StructureMapInput> input;
    /// Transform Rule from source to target.
    List<StructureMapRule> rule;
 
    StructureMapGroup.fromJSON( Map json ){
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
        this.extends1 = json['extends'];
        this.extExtends = json['_extends'] == null ? null : FHIRObjectFactory.buildFromJSON('Element', json['_extends']);
        this.typeMode = json['typeMode'];
        this.extTypeMode = json['_typeMode'] == null ? null : FHIRObjectFactory.buildFromJSON('Element', json['_typeMode']);
        this.documentation = json['documentation'];
        this.extDocumentation = json['_documentation'] == null ? null : FHIRObjectFactory.buildFromJSON('Element', json['_documentation']);
        this.input = List<StructureMapInput>();
        if (json['input'] != null && json['input'].length > 0) {
          if( json['input'] is List ){
            json['input'].forEach((i){
              this.input.add(FHIRObjectFactory.buildFromJSON('StructureMapInput', i));
            });
          } else {
            // this handles the case when the list only has one object and does not return as a list
            var i = json['input'];
            this.input.add(FHIRObjectFactory.buildFromJSON('StructureMapInput', i));
          }          
        }
        this.rule = List<StructureMapRule>();
        if (json['rule'] != null && json['rule'].length > 0) {
          if( json['rule'] is List ){
            json['rule'].forEach((i){
              this.rule.add(FHIRObjectFactory.buildFromJSON('StructureMapRule', i));
            });
          } else {
            // this handles the case when the list only has one object and does not return as a list
            var i = json['rule'];
            this.rule.add(FHIRObjectFactory.buildFromJSON('StructureMapRule', i));
          }          
        }
    }
}
