import 'extension.dart';
import 'fhir_object_factory.dart';
import 'element.dart';
/// A compartment definition that defines how resources are accessed on a server.
class CompartmentDefinitionResource {
    /// Unique id for the element within a resource (for internal references). This may be any string value that does not contain spaces.
    String id;
    /// May be used to represent additional information that is not part of the basic definition of the element. To make the use of extensions safe and manageable, there is a strict set of governance  applied to the definition and use of extensions. Though any implementer can define an extension, there is a set of requirements that SHALL be met as part of the definition of the extension.
    List<Extension> extension;
    /// May be used to represent additional information that is not part of the basic definition of the element and that modifies the understanding of the element in which it is contained and/or the understanding of the containing element's descendants. Usually modifier elements provide negation or qualification. To make the use of extensions safe and manageable, there is a strict set of governance applied to the definition and use of extensions. Though any implementer can define an extension, there is a set of requirements that SHALL be met as part of the definition of the extension. Applications processing a resource are required to check for modifier extensions.
    /// 
    /// Modifier extensions SHALL NOT change the meaning of any elements on Resource or DomainResource (including cannot change the meaning of modifierExtension itself).
    List<Extension> modifierExtension;
    /// The name of a resource supported by the server.
    String code;
    /// Extensions for code
    Element extCode;
    /// The name of a search parameter that represents the link to the compartment. More than one may be listed because a resource may be linked to a compartment in more than one way,.
    List<String> param;
    /// Extensions for param
    List<Element> extParam;
    /// Additional documentation about the resource and compartment.
    String documentation;
    /// Extensions for documentation
    Element extDocumentation;
 
    CompartmentDefinitionResource.fromJSON( Map json ){
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
        this.code = json['code'];
        this.extCode = json['_code'] == null ? null : FHIRObjectFactory.buildFromJSON('Element', json['_code']);
        this.param = List<String>();
        if (json['param'] != null && json['param'].length > 0) {
          if( json['param'] is List ){
            json['param'].forEach((i){
              this.param.add(i);
            });
          } else {
            // this handles the case when the list only has one object and does not return as a list
            var i = json['param'];
            this.param.add(i);
          }          
        }
        this.extParam = List<Element>();
        if (json['_param'] != null && json['_param'].length > 0) {
          if( json['_param'] is List ){
            json['_param'].forEach((i){
              this.extParam.add(FHIRObjectFactory.buildFromJSON('Element', i));
            });
          } else {
            // this handles the case when the list only has one object and does not return as a list
            var i = json['_param'];
            this.extParam.add(FHIRObjectFactory.buildFromJSON('Element', i));
          }          
        }
        this.documentation = json['documentation'];
        this.extDocumentation = json['_documentation'] == null ? null : FHIRObjectFactory.buildFromJSON('Element', json['_documentation']);
    }
}
