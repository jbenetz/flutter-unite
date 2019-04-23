import 'extension.dart';
import 'fhir_object_factory.dart';
import 'element.dart';
import 'graph_definition_compartment.dart';
import 'graph_definition_link.dart';
/// A formal computable definition of a graph of resources - that is, a coherent set of resources that form a graph by following references. The Graph Definition resource defines a set and makes rules about the set.
class GraphDefinitionTarget {
    /// Unique id for the element within a resource (for internal references). This may be any string value that does not contain spaces.
    String id;
    /// May be used to represent additional information that is not part of the basic definition of the element. To make the use of extensions safe and manageable, there is a strict set of governance  applied to the definition and use of extensions. Though any implementer can define an extension, there is a set of requirements that SHALL be met as part of the definition of the extension.
    List<Extension> extension;
    /// May be used to represent additional information that is not part of the basic definition of the element and that modifies the understanding of the element in which it is contained and/or the understanding of the containing element's descendants. Usually modifier elements provide negation or qualification. To make the use of extensions safe and manageable, there is a strict set of governance applied to the definition and use of extensions. Though any implementer can define an extension, there is a set of requirements that SHALL be met as part of the definition of the extension. Applications processing a resource are required to check for modifier extensions.
    /// 
    /// Modifier extensions SHALL NOT change the meaning of any elements on Resource or DomainResource (including cannot change the meaning of modifierExtension itself).
    List<Extension> modifierExtension;
    /// Type of resource this link refers to.
    String type;
    /// Extensions for type
    Element extType;
    /// A set of parameters to look up.
    String params;
    /// Extensions for params
    Element extParams;
    /// Profile for the target resource.
    String profile;
    /// Compartment Consistency Rules.
    List<GraphDefinitionCompartment> compartment;
    /// Additional links from target resource.
    List<GraphDefinitionLink> link;
 
    GraphDefinitionTarget.fromJSON( Map json ){
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
        this.type = json['type'];
        this.extType = json['_type'] == null ? null : FHIRObjectFactory.buildFromJSON('Element', json['_type']);
        this.params = json['params'];
        this.extParams = json['_params'] == null ? null : FHIRObjectFactory.buildFromJSON('Element', json['_params']);
        this.profile = json['profile'];
        this.compartment = List<GraphDefinitionCompartment>();
        if (json['compartment'] != null && json['compartment'].length > 0) {
          if( json['compartment'] is List ){
            json['compartment'].forEach((i){
              this.compartment.add(FHIRObjectFactory.buildFromJSON('GraphDefinitionCompartment', i));
            });
          } else {
            // this handles the case when the list only has one object and does not return as a list
            var i = json['compartment'];
            this.compartment.add(FHIRObjectFactory.buildFromJSON('GraphDefinitionCompartment', i));
          }          
        }
        this.link = List<GraphDefinitionLink>();
        if (json['link'] != null && json['link'].length > 0) {
          if( json['link'] is List ){
            json['link'].forEach((i){
              this.link.add(FHIRObjectFactory.buildFromJSON('GraphDefinitionLink', i));
            });
          } else {
            // this handles the case when the list only has one object and does not return as a list
            var i = json['link'];
            this.link.add(FHIRObjectFactory.buildFromJSON('GraphDefinitionLink', i));
          }          
        }
    }
}
