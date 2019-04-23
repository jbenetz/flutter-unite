import 'extension.dart';
import 'fhir_object_factory.dart';
import 'implementation_guide_grouping.dart';
import 'implementation_guide_resource.dart';
import 'implementation_guide_page.dart';
import 'implementation_guide_parameter.dart';
import 'implementation_guide_template.dart';
/// A set of rules of how a particular interoperability or standards problem is solved - typically through the use of FHIR resources. This resource is used to gather all the parts of an implementation guide into a logical whole and to publish a computable definition of all the parts.
class ImplementationGuideDefinition {
    /// Unique id for the element within a resource (for internal references). This may be any string value that does not contain spaces.
    String id;
    /// May be used to represent additional information that is not part of the basic definition of the element. To make the use of extensions safe and manageable, there is a strict set of governance  applied to the definition and use of extensions. Though any implementer can define an extension, there is a set of requirements that SHALL be met as part of the definition of the extension.
    List<Extension> extension;
    /// May be used to represent additional information that is not part of the basic definition of the element and that modifies the understanding of the element in which it is contained and/or the understanding of the containing element's descendants. Usually modifier elements provide negation or qualification. To make the use of extensions safe and manageable, there is a strict set of governance applied to the definition and use of extensions. Though any implementer can define an extension, there is a set of requirements that SHALL be met as part of the definition of the extension. Applications processing a resource are required to check for modifier extensions.
    /// 
    /// Modifier extensions SHALL NOT change the meaning of any elements on Resource or DomainResource (including cannot change the meaning of modifierExtension itself).
    List<Extension> modifierExtension;
    /// A logical group of resources. Logical groups can be used when building pages.
    List<ImplementationGuideGrouping> grouping;
    /// A resource that is part of the implementation guide. Conformance resources (value set, structure definition, capability statements etc.) are obvious candidates for inclusion, but any kind of resource can be included as an example resource.
    List<ImplementationGuideResource> resource;
    /// A page / section in the implementation guide. The root page is the implementation guide home page.
    ImplementationGuidePage page;
    /// Defines how IG is built by tools.
    List<ImplementationGuideParameter> parameter;
    /// A template for building resources.
    List<ImplementationGuideTemplate> template;
 
    ImplementationGuideDefinition.fromJSON( Map json ){
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
        this.grouping = List<ImplementationGuideGrouping>();
        if (json['grouping'] != null && json['grouping'].length > 0) {
          if( json['grouping'] is List ){
            json['grouping'].forEach((i){
              this.grouping.add(FHIRObjectFactory.buildFromJSON('ImplementationGuideGrouping', i));
            });
          } else {
            // this handles the case when the list only has one object and does not return as a list
            var i = json['grouping'];
            this.grouping.add(FHIRObjectFactory.buildFromJSON('ImplementationGuideGrouping', i));
          }          
        }
        this.resource = List<ImplementationGuideResource>();
        if (json['resource'] != null && json['resource'].length > 0) {
          if( json['resource'] is List ){
            json['resource'].forEach((i){
              this.resource.add(FHIRObjectFactory.buildFromJSON('ImplementationGuideResource', i));
            });
          } else {
            // this handles the case when the list only has one object and does not return as a list
            var i = json['resource'];
            this.resource.add(FHIRObjectFactory.buildFromJSON('ImplementationGuideResource', i));
          }          
        }
        this.page = json['page'] == null ? null : FHIRObjectFactory.buildFromJSON('ImplementationGuidePage', json['page']);
        this.parameter = List<ImplementationGuideParameter>();
        if (json['parameter'] != null && json['parameter'].length > 0) {
          if( json['parameter'] is List ){
            json['parameter'].forEach((i){
              this.parameter.add(FHIRObjectFactory.buildFromJSON('ImplementationGuideParameter', i));
            });
          } else {
            // this handles the case when the list only has one object and does not return as a list
            var i = json['parameter'];
            this.parameter.add(FHIRObjectFactory.buildFromJSON('ImplementationGuideParameter', i));
          }          
        }
        this.template = List<ImplementationGuideTemplate>();
        if (json['template'] != null && json['template'].length > 0) {
          if( json['template'] is List ){
            json['template'].forEach((i){
              this.template.add(FHIRObjectFactory.buildFromJSON('ImplementationGuideTemplate', i));
            });
          } else {
            // this handles the case when the list only has one object and does not return as a list
            var i = json['template'];
            this.template.add(FHIRObjectFactory.buildFromJSON('ImplementationGuideTemplate', i));
          }          
        }
    }
}
