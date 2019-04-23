import 'extension.dart';
import 'fhir_object_factory.dart';
import 'element.dart';
/// The parameters to the module. This collection specifies both the input and output parameters. Input parameters are provided by the caller as part of the $evaluate operation. Output parameters are included in the GuidanceResponse.
class ParameterDefinition {
    /// Unique id for the element within a resource (for internal references). This may be any string value that does not contain spaces.
    String id;
    /// May be used to represent additional information that is not part of the basic definition of the element. To make the use of extensions safe and manageable, there is a strict set of governance  applied to the definition and use of extensions. Though any implementer can define an extension, there is a set of requirements that SHALL be met as part of the definition of the extension.
    List<Extension> extension;
    /// The name of the parameter used to allow access to the value of the parameter in evaluation contexts.
    String name;
    /// Extensions for name
    Element extName;
    /// Whether the parameter is input or output for the module.
    String use;
    /// Extensions for use
    Element extUse;
    /// The minimum number of times this parameter SHALL appear in the request or response.
    int min;
    /// Extensions for min
    Element extMin;
    /// The maximum number of times this element is permitted to appear in the request or response.
    String max;
    /// Extensions for max
    Element extMax;
    /// A brief discussion of what the parameter is for and how it is used by the module.
    String documentation;
    /// Extensions for documentation
    Element extDocumentation;
    /// The type of the parameter.
    String type;
    /// Extensions for type
    Element extType;
    /// If specified, this indicates a profile that the input data must conform to, or that the output data will conform to.
    String profile;
 
    ParameterDefinition.fromJSON( Map json ){
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
        this.name = json['name'];
        this.extName = json['_name'] == null ? null : FHIRObjectFactory.buildFromJSON('Element', json['_name']);
        this.use = json['use'];
        this.extUse = json['_use'] == null ? null : FHIRObjectFactory.buildFromJSON('Element', json['_use']);
        this.min = json['min'];
        this.extMin = json['_min'] == null ? null : FHIRObjectFactory.buildFromJSON('Element', json['_min']);
        this.max = json['max'];
        this.extMax = json['_max'] == null ? null : FHIRObjectFactory.buildFromJSON('Element', json['_max']);
        this.documentation = json['documentation'];
        this.extDocumentation = json['_documentation'] == null ? null : FHIRObjectFactory.buildFromJSON('Element', json['_documentation']);
        this.type = json['type'];
        this.extType = json['_type'] == null ? null : FHIRObjectFactory.buildFromJSON('Element', json['_type']);
        this.profile = json['profile'];
    }
}
