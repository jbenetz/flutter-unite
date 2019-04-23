import 'extension.dart';
import 'fhir_object_factory.dart';
import 'element_definition_discriminator.dart';
import 'element.dart';
/// Captures constraints on each element within the resource, profile, or extension.
class ElementDefinitionSlicing {
    /// Unique id for the element within a resource (for internal references). This may be any string value that does not contain spaces.
    String id;
    /// May be used to represent additional information that is not part of the basic definition of the element. To make the use of extensions safe and manageable, there is a strict set of governance  applied to the definition and use of extensions. Though any implementer can define an extension, there is a set of requirements that SHALL be met as part of the definition of the extension.
    List<Extension> extension;
    /// May be used to represent additional information that is not part of the basic definition of the element and that modifies the understanding of the element in which it is contained and/or the understanding of the containing element's descendants. Usually modifier elements provide negation or qualification. To make the use of extensions safe and manageable, there is a strict set of governance applied to the definition and use of extensions. Though any implementer can define an extension, there is a set of requirements that SHALL be met as part of the definition of the extension. Applications processing a resource are required to check for modifier extensions.
    /// 
    /// Modifier extensions SHALL NOT change the meaning of any elements on Resource or DomainResource (including cannot change the meaning of modifierExtension itself).
    List<Extension> modifierExtension;
    /// Designates which child elements are used to discriminate between the slices when processing an instance. If one or more discriminators are provided, the value of the child elements in the instance data SHALL completely distinguish which slice the element in the resource matches based on the allowed values for those elements in each of the slices.
    List<ElementDefinitionDiscriminator> discriminator;
    /// A human-readable text description of how the slicing works. If there is no discriminator, this is required to be present to provide whatever information is possible about how the slices can be differentiated.
    String description;
    /// Extensions for description
    Element extDescription;
    /// If the matching elements have to occur in the same order as defined in the profile.
    bool ordered;
    /// Extensions for ordered
    Element extOrdered;
    /// Whether additional slices are allowed or not. When the slices are ordered, profile authors can also say that additional slices are only allowed at the end.
    String rules;
    /// Extensions for rules
    Element extRules;
 
    ElementDefinitionSlicing.fromJSON( Map json ){
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
        this.discriminator = List<ElementDefinitionDiscriminator>();
        if (json['discriminator'] != null && json['discriminator'].length > 0) {
          if( json['discriminator'] is List ){
            json['discriminator'].forEach((i){
              this.discriminator.add(FHIRObjectFactory.buildFromJSON('ElementDefinitionDiscriminator', i));
            });
          } else {
            // this handles the case when the list only has one object and does not return as a list
            var i = json['discriminator'];
            this.discriminator.add(FHIRObjectFactory.buildFromJSON('ElementDefinitionDiscriminator', i));
          }          
        }
        this.description = json['description'];
        this.extDescription = json['_description'] == null ? null : FHIRObjectFactory.buildFromJSON('Element', json['_description']);
        this.ordered = json['ordered'];
        this.extOrdered = json['_ordered'] == null ? null : FHIRObjectFactory.buildFromJSON('Element', json['_ordered']);
        this.rules = json['rules'];
        this.extRules = json['_rules'] == null ? null : FHIRObjectFactory.buildFromJSON('Element', json['_rules']);
    }
}
