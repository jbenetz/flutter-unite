import 'extension.dart';
import 'fhir_object_factory.dart';
import 'element.dart';
import 'structure_map_parameter.dart';
/// A Map of relationships between 2 structures that can be used to transform data.
class StructureMapTarget {
    /// Unique id for the element within a resource (for internal references). This may be any string value that does not contain spaces.
    String id;
    /// May be used to represent additional information that is not part of the basic definition of the element. To make the use of extensions safe and manageable, there is a strict set of governance  applied to the definition and use of extensions. Though any implementer can define an extension, there is a set of requirements that SHALL be met as part of the definition of the extension.
    List<Extension> extension;
    /// May be used to represent additional information that is not part of the basic definition of the element and that modifies the understanding of the element in which it is contained and/or the understanding of the containing element's descendants. Usually modifier elements provide negation or qualification. To make the use of extensions safe and manageable, there is a strict set of governance applied to the definition and use of extensions. Though any implementer can define an extension, there is a set of requirements that SHALL be met as part of the definition of the extension. Applications processing a resource are required to check for modifier extensions.
    /// 
    /// Modifier extensions SHALL NOT change the meaning of any elements on Resource or DomainResource (including cannot change the meaning of modifierExtension itself).
    List<Extension> modifierExtension;
    /// Type or variable this rule applies to.
    String context;
    /// Extensions for context
    Element extContext;
    /// How to interpret the context.
    String contextType;
    /// Extensions for contextType
    Element extContextType;
    /// Field to create in the context.
    String element;
    /// Extensions for element
    Element extElement;
    /// Named context for field, if desired, and a field is specified.
    String variable;
    /// Extensions for variable
    Element extVariable;
    /// Extensions for listMode
    List<Element> extListMode;
    /// Internal rule reference for shared list items.
    String listRuleId;
    /// Extensions for listRuleId
    Element extListRuleId;
    /// How the data is copied / created.
    String transform;
    /// Extensions for transform
    Element extTransform;
    /// Parameters to the transform.
    List<StructureMapParameter> parameter;
 
    StructureMapTarget.fromJSON( Map json ){
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
        this.context = json['context'];
        this.extContext = json['_context'] == null ? null : FHIRObjectFactory.buildFromJSON('Element', json['_context']);
        this.contextType = json['contextType'];
        this.extContextType = json['_contextType'] == null ? null : FHIRObjectFactory.buildFromJSON('Element', json['_contextType']);
        this.element = json['element'];
        this.extElement = json['_element'] == null ? null : FHIRObjectFactory.buildFromJSON('Element', json['_element']);
        this.variable = json['variable'];
        this.extVariable = json['_variable'] == null ? null : FHIRObjectFactory.buildFromJSON('Element', json['_variable']);
        this.extListMode = List<Element>();
        if (json['_listMode'] != null && json['_listMode'].length > 0) {
          if( json['_listMode'] is List ){
            json['_listMode'].forEach((i){
              this.extListMode.add(FHIRObjectFactory.buildFromJSON('Element', i));
            });
          } else {
            // this handles the case when the list only has one object and does not return as a list
            var i = json['_listMode'];
            this.extListMode.add(FHIRObjectFactory.buildFromJSON('Element', i));
          }          
        }
        this.listRuleId = json['listRuleId'];
        this.extListRuleId = json['_listRuleId'] == null ? null : FHIRObjectFactory.buildFromJSON('Element', json['_listRuleId']);
        this.transform = json['transform'];
        this.extTransform = json['_transform'] == null ? null : FHIRObjectFactory.buildFromJSON('Element', json['_transform']);
        this.parameter = List<StructureMapParameter>();
        if (json['parameter'] != null && json['parameter'].length > 0) {
          if( json['parameter'] is List ){
            json['parameter'].forEach((i){
              this.parameter.add(FHIRObjectFactory.buildFromJSON('StructureMapParameter', i));
            });
          } else {
            // this handles the case when the list only has one object and does not return as a list
            var i = json['parameter'];
            this.parameter.add(FHIRObjectFactory.buildFromJSON('StructureMapParameter', i));
          }          
        }
    }
}
