import 'extension.dart';
import 'fhir_object_factory.dart';
import 'element.dart';
import 'concept_map_target.dart';
/// A statement of relationships from one set of concepts to one or more other concepts - either concepts in code systems, or data element/data element concepts, or classes in class models.
class ConceptMapElement {
    /// Unique id for the element within a resource (for internal references). This may be any string value that does not contain spaces.
    String id;
    /// May be used to represent additional information that is not part of the basic definition of the element. To make the use of extensions safe and manageable, there is a strict set of governance  applied to the definition and use of extensions. Though any implementer can define an extension, there is a set of requirements that SHALL be met as part of the definition of the extension.
    List<Extension> extension;
    /// May be used to represent additional information that is not part of the basic definition of the element and that modifies the understanding of the element in which it is contained and/or the understanding of the containing element's descendants. Usually modifier elements provide negation or qualification. To make the use of extensions safe and manageable, there is a strict set of governance applied to the definition and use of extensions. Though any implementer can define an extension, there is a set of requirements that SHALL be met as part of the definition of the extension. Applications processing a resource are required to check for modifier extensions.
    /// 
    /// Modifier extensions SHALL NOT change the meaning of any elements on Resource or DomainResource (including cannot change the meaning of modifierExtension itself).
    List<Extension> modifierExtension;
    /// Identity (code or path) or the element/item being mapped.
    String code;
    /// Extensions for code
    Element extCode;
    /// The display for the code. The display is only provided to help editors when editing the concept map.
    String display;
    /// Extensions for display
    Element extDisplay;
    /// A concept from the target value set that this concept maps to.
    List<ConceptMapTarget> target;
 
    ConceptMapElement.fromJSON( Map json ){
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
        this.display = json['display'];
        this.extDisplay = json['_display'] == null ? null : FHIRObjectFactory.buildFromJSON('Element', json['_display']);
        this.target = List<ConceptMapTarget>();
        if (json['target'] != null && json['target'].length > 0) {
          if( json['target'] is List ){
            json['target'].forEach((i){
              this.target.add(FHIRObjectFactory.buildFromJSON('ConceptMapTarget', i));
            });
          } else {
            // this handles the case when the list only has one object and does not return as a list
            var i = json['target'];
            this.target.add(FHIRObjectFactory.buildFromJSON('ConceptMapTarget', i));
          }          
        }
    }
}
