import 'extension.dart';
import 'fhir_object_factory.dart';
import 'element.dart';
import 'example_scenario_version.dart';
import 'example_scenario_contained_instance.dart';
/// Example of workflow instance.
class ExampleScenarioInstance {
    /// Unique id for the element within a resource (for internal references). This may be any string value that does not contain spaces.
    String id;
    /// May be used to represent additional information that is not part of the basic definition of the element. To make the use of extensions safe and manageable, there is a strict set of governance  applied to the definition and use of extensions. Though any implementer can define an extension, there is a set of requirements that SHALL be met as part of the definition of the extension.
    List<Extension> extension;
    /// May be used to represent additional information that is not part of the basic definition of the element and that modifies the understanding of the element in which it is contained and/or the understanding of the containing element's descendants. Usually modifier elements provide negation or qualification. To make the use of extensions safe and manageable, there is a strict set of governance applied to the definition and use of extensions. Though any implementer can define an extension, there is a set of requirements that SHALL be met as part of the definition of the extension. Applications processing a resource are required to check for modifier extensions.
    /// 
    /// Modifier extensions SHALL NOT change the meaning of any elements on Resource or DomainResource (including cannot change the meaning of modifierExtension itself).
    List<Extension> modifierExtension;
    /// The id of the resource for referencing.
    String resourceId;
    /// Extensions for resourceId
    Element extResourceId;
    /// The type of the resource.
    String resourceType;
    /// Extensions for resourceType
    Element extResourceType;
    /// A short name for the resource instance.
    String name;
    /// Extensions for name
    Element extName;
    /// Human-friendly description of the resource instance.
    String description;
    /// Extensions for description
    Element extDescription;
    /// A specific version of the resource.
    List<ExampleScenarioVersion> version;
    /// Resources contained in the instance (e.g. the observations contained in a bundle).
    List<ExampleScenarioContainedInstance> containedInstance;
 
    ExampleScenarioInstance.fromJSON( Map json ){
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
        this.resourceId = json['resourceId'];
        this.extResourceId = json['_resourceId'] == null ? null : FHIRObjectFactory.buildFromJSON('Element', json['_resourceId']);
        this.resourceType = json['resourceType'];
        this.extResourceType = json['_resourceType'] == null ? null : FHIRObjectFactory.buildFromJSON('Element', json['_resourceType']);
        this.name = json['name'];
        this.extName = json['_name'] == null ? null : FHIRObjectFactory.buildFromJSON('Element', json['_name']);
        this.description = json['description'];
        this.extDescription = json['_description'] == null ? null : FHIRObjectFactory.buildFromJSON('Element', json['_description']);
        this.version = List<ExampleScenarioVersion>();
        if (json['version'] != null && json['version'].length > 0) {
          if( json['version'] is List ){
            json['version'].forEach((i){
              this.version.add(FHIRObjectFactory.buildFromJSON('ExampleScenarioVersion', i));
            });
          } else {
            // this handles the case when the list only has one object and does not return as a list
            var i = json['version'];
            this.version.add(FHIRObjectFactory.buildFromJSON('ExampleScenarioVersion', i));
          }          
        }
        this.containedInstance = List<ExampleScenarioContainedInstance>();
        if (json['containedInstance'] != null && json['containedInstance'].length > 0) {
          if( json['containedInstance'] is List ){
            json['containedInstance'].forEach((i){
              this.containedInstance.add(FHIRObjectFactory.buildFromJSON('ExampleScenarioContainedInstance', i));
            });
          } else {
            // this handles the case when the list only has one object and does not return as a list
            var i = json['containedInstance'];
            this.containedInstance.add(FHIRObjectFactory.buildFromJSON('ExampleScenarioContainedInstance', i));
          }          
        }
    }
}
