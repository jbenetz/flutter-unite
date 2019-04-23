import 'extension.dart';
import 'fhir_object_factory.dart';
import 'element.dart';
import 'concept_map_depends_on.dart';
/// A statement of relationships from one set of concepts to one or more other concepts - either concepts in code systems, or data element/data element concepts, or classes in class models.
class ConceptMapTarget {
    /// Unique id for the element within a resource (for internal references). This may be any string value that does not contain spaces.
    String id;
    /// May be used to represent additional information that is not part of the basic definition of the element. To make the use of extensions safe and manageable, there is a strict set of governance  applied to the definition and use of extensions. Though any implementer can define an extension, there is a set of requirements that SHALL be met as part of the definition of the extension.
    List<Extension> extension;
    /// May be used to represent additional information that is not part of the basic definition of the element and that modifies the understanding of the element in which it is contained and/or the understanding of the containing element's descendants. Usually modifier elements provide negation or qualification. To make the use of extensions safe and manageable, there is a strict set of governance applied to the definition and use of extensions. Though any implementer can define an extension, there is a set of requirements that SHALL be met as part of the definition of the extension. Applications processing a resource are required to check for modifier extensions.
    /// 
    /// Modifier extensions SHALL NOT change the meaning of any elements on Resource or DomainResource (including cannot change the meaning of modifierExtension itself).
    List<Extension> modifierExtension;
    /// Identity (code or path) or the element/item that the map refers to.
    String code;
    /// Extensions for code
    Element extCode;
    /// The display for the code. The display is only provided to help editors when editing the concept map.
    String display;
    /// Extensions for display
    Element extDisplay;
    /// The equivalence between the source and target concepts (counting for the dependencies and products). The equivalence is read from target to source (e.g. the target is 'wider' than the source).
    String equivalence;
    /// Extensions for equivalence
    Element extEquivalence;
    /// A description of status/issues in mapping that conveys additional information not represented in  the structured data.
    String comment;
    /// Extensions for comment
    Element extComment;
    /// A set of additional dependencies for this mapping to hold. This mapping is only applicable if the specified element can be resolved, and it has the specified value.
    List<ConceptMapDependsOn> dependsOn;
    /// A set of additional outcomes from this mapping to other elements. To properly execute this mapping, the specified element must be mapped to some data element or source that is in context. The mapping may still be useful without a place for the additional data elements, but the equivalence cannot be relied on.
    List<ConceptMapDependsOn> product;
 
    ConceptMapTarget.fromJSON( Map json ){
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
        this.equivalence = json['equivalence'];
        this.extEquivalence = json['_equivalence'] == null ? null : FHIRObjectFactory.buildFromJSON('Element', json['_equivalence']);
        this.comment = json['comment'];
        this.extComment = json['_comment'] == null ? null : FHIRObjectFactory.buildFromJSON('Element', json['_comment']);
        this.dependsOn = List<ConceptMapDependsOn>();
        if (json['dependsOn'] != null && json['dependsOn'].length > 0) {
          if( json['dependsOn'] is List ){
            json['dependsOn'].forEach((i){
              this.dependsOn.add(FHIRObjectFactory.buildFromJSON('ConceptMapDependsOn', i));
            });
          } else {
            // this handles the case when the list only has one object and does not return as a list
            var i = json['dependsOn'];
            this.dependsOn.add(FHIRObjectFactory.buildFromJSON('ConceptMapDependsOn', i));
          }          
        }
        this.product = List<ConceptMapDependsOn>();
        if (json['product'] != null && json['product'].length > 0) {
          if( json['product'] is List ){
            json['product'].forEach((i){
              this.product.add(FHIRObjectFactory.buildFromJSON('ConceptMapDependsOn', i));
            });
          } else {
            // this handles the case when the list only has one object and does not return as a list
            var i = json['product'];
            this.product.add(FHIRObjectFactory.buildFromJSON('ConceptMapDependsOn', i));
          }          
        }
    }
}
