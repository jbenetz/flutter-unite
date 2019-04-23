import 'extension.dart';
import 'fhir_object_factory.dart';
import 'example_scenario_process.dart';
import 'element.dart';
import 'example_scenario_operation.dart';
import 'example_scenario_alternative.dart';
/// Example of workflow instance.
class ExampleScenarioStep {
    /// Unique id for the element within a resource (for internal references). This may be any string value that does not contain spaces.
    String id;
    /// May be used to represent additional information that is not part of the basic definition of the element. To make the use of extensions safe and manageable, there is a strict set of governance  applied to the definition and use of extensions. Though any implementer can define an extension, there is a set of requirements that SHALL be met as part of the definition of the extension.
    List<Extension> extension;
    /// May be used to represent additional information that is not part of the basic definition of the element and that modifies the understanding of the element in which it is contained and/or the understanding of the containing element's descendants. Usually modifier elements provide negation or qualification. To make the use of extensions safe and manageable, there is a strict set of governance applied to the definition and use of extensions. Though any implementer can define an extension, there is a set of requirements that SHALL be met as part of the definition of the extension. Applications processing a resource are required to check for modifier extensions.
    /// 
    /// Modifier extensions SHALL NOT change the meaning of any elements on Resource or DomainResource (including cannot change the meaning of modifierExtension itself).
    List<Extension> modifierExtension;
    /// Nested process.
    List<ExampleScenarioProcess> process;
    /// If there is a pause in the flow.
    bool pause;
    /// Extensions for pause
    Element extPause;
    /// Each interaction or action.
    ExampleScenarioOperation operation;
    /// Indicates an alternative step that can be taken instead of the operations on the base step in exceptional/atypical circumstances.
    List<ExampleScenarioAlternative> alternative;
 
    ExampleScenarioStep.fromJSON( Map json ){
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
        this.process = List<ExampleScenarioProcess>();
        if (json['process'] != null && json['process'].length > 0) {
          if( json['process'] is List ){
            json['process'].forEach((i){
              this.process.add(FHIRObjectFactory.buildFromJSON('ExampleScenarioProcess', i));
            });
          } else {
            // this handles the case when the list only has one object and does not return as a list
            var i = json['process'];
            this.process.add(FHIRObjectFactory.buildFromJSON('ExampleScenarioProcess', i));
          }          
        }
        this.pause = json['pause'];
        this.extPause = json['_pause'] == null ? null : FHIRObjectFactory.buildFromJSON('Element', json['_pause']);
        this.operation = json['operation'] == null ? null : FHIRObjectFactory.buildFromJSON('ExampleScenarioOperation', json['operation']);
        this.alternative = List<ExampleScenarioAlternative>();
        if (json['alternative'] != null && json['alternative'].length > 0) {
          if( json['alternative'] is List ){
            json['alternative'].forEach((i){
              this.alternative.add(FHIRObjectFactory.buildFromJSON('ExampleScenarioAlternative', i));
            });
          } else {
            // this handles the case when the list only has one object and does not return as a list
            var i = json['alternative'];
            this.alternative.add(FHIRObjectFactory.buildFromJSON('ExampleScenarioAlternative', i));
          }          
        }
    }
}
