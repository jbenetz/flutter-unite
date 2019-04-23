import 'extension.dart';
import 'fhir_object_factory.dart';
import 'element.dart';
import 'graph_definition_target.dart';
/// A formal computable definition of a graph of resources - that is, a coherent set of resources that form a graph by following references. The Graph Definition resource defines a set and makes rules about the set.
class GraphDefinitionLink {
    /// Unique id for the element within a resource (for internal references). This may be any string value that does not contain spaces.
    String id;
    /// May be used to represent additional information that is not part of the basic definition of the element. To make the use of extensions safe and manageable, there is a strict set of governance  applied to the definition and use of extensions. Though any implementer can define an extension, there is a set of requirements that SHALL be met as part of the definition of the extension.
    List<Extension> extension;
    /// May be used to represent additional information that is not part of the basic definition of the element and that modifies the understanding of the element in which it is contained and/or the understanding of the containing element's descendants. Usually modifier elements provide negation or qualification. To make the use of extensions safe and manageable, there is a strict set of governance applied to the definition and use of extensions. Though any implementer can define an extension, there is a set of requirements that SHALL be met as part of the definition of the extension. Applications processing a resource are required to check for modifier extensions.
    /// 
    /// Modifier extensions SHALL NOT change the meaning of any elements on Resource or DomainResource (including cannot change the meaning of modifierExtension itself).
    List<Extension> modifierExtension;
    /// A FHIR expression that identifies one of FHIR References to other resources.
    String path;
    /// Extensions for path
    Element extPath;
    /// Which slice (if profiled).
    String sliceName;
    /// Extensions for sliceName
    Element extSliceName;
    /// Minimum occurrences for this link.
    int min;
    /// Extensions for min
    Element extMin;
    /// Maximum occurrences for this link.
    String max;
    /// Extensions for max
    Element extMax;
    /// Information about why this link is of interest in this graph definition.
    String description;
    /// Extensions for description
    Element extDescription;
    /// Potential target for the link.
    List<GraphDefinitionTarget> target;
 
    GraphDefinitionLink.fromJSON( Map json ){
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
        this.path = json['path'];
        this.extPath = json['_path'] == null ? null : FHIRObjectFactory.buildFromJSON('Element', json['_path']);
        this.sliceName = json['sliceName'];
        this.extSliceName = json['_sliceName'] == null ? null : FHIRObjectFactory.buildFromJSON('Element', json['_sliceName']);
        this.min = json['min'];
        this.extMin = json['_min'] == null ? null : FHIRObjectFactory.buildFromJSON('Element', json['_min']);
        this.max = json['max'];
        this.extMax = json['_max'] == null ? null : FHIRObjectFactory.buildFromJSON('Element', json['_max']);
        this.description = json['description'];
        this.extDescription = json['_description'] == null ? null : FHIRObjectFactory.buildFromJSON('Element', json['_description']);
        this.target = List<GraphDefinitionTarget>();
        if (json['target'] != null && json['target'].length > 0) {
          if( json['target'] is List ){
            json['target'].forEach((i){
              this.target.add(FHIRObjectFactory.buildFromJSON('GraphDefinitionTarget', i));
            });
          } else {
            // this handles the case when the list only has one object and does not return as a list
            var i = json['target'];
            this.target.add(FHIRObjectFactory.buildFromJSON('GraphDefinitionTarget', i));
          }          
        }
    }
}
