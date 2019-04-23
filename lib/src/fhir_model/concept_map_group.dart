import 'extension.dart';
import 'fhir_object_factory.dart';
import 'element.dart';
import 'concept_map_element.dart';
import 'concept_map_unmapped.dart';
/// A statement of relationships from one set of concepts to one or more other concepts - either concepts in code systems, or data element/data element concepts, or classes in class models.
class ConceptMapGroup {
    /// Unique id for the element within a resource (for internal references). This may be any string value that does not contain spaces.
    String id;
    /// May be used to represent additional information that is not part of the basic definition of the element. To make the use of extensions safe and manageable, there is a strict set of governance  applied to the definition and use of extensions. Though any implementer can define an extension, there is a set of requirements that SHALL be met as part of the definition of the extension.
    List<Extension> extension;
    /// May be used to represent additional information that is not part of the basic definition of the element and that modifies the understanding of the element in which it is contained and/or the understanding of the containing element's descendants. Usually modifier elements provide negation or qualification. To make the use of extensions safe and manageable, there is a strict set of governance applied to the definition and use of extensions. Though any implementer can define an extension, there is a set of requirements that SHALL be met as part of the definition of the extension. Applications processing a resource are required to check for modifier extensions.
    /// 
    /// Modifier extensions SHALL NOT change the meaning of any elements on Resource or DomainResource (including cannot change the meaning of modifierExtension itself).
    List<Extension> modifierExtension;
    /// An absolute URI that identifies the source system where the concepts to be mapped are defined.
    String source;
    /// Extensions for source
    Element extSource;
    /// The specific version of the code system, as determined by the code system authority.
    String sourceVersion;
    /// Extensions for sourceVersion
    Element extSourceVersion;
    /// An absolute URI that identifies the target system that the concepts will be mapped to.
    String target;
    /// Extensions for target
    Element extTarget;
    /// The specific version of the code system, as determined by the code system authority.
    String targetVersion;
    /// Extensions for targetVersion
    Element extTargetVersion;
    /// Mappings for an individual concept in the source to one or more concepts in the target.
    List<ConceptMapElement> element;
    /// What to do when there is no mapping for the source concept. "Unmapped" does not include codes that are unmatched, and the unmapped element is ignored in a code is specified to have equivalence = unmatched.
    ConceptMapUnmapped unmapped;
 
    ConceptMapGroup.fromJSON( Map json ){
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
        this.source = json['source'];
        this.extSource = json['_source'] == null ? null : FHIRObjectFactory.buildFromJSON('Element', json['_source']);
        this.sourceVersion = json['sourceVersion'];
        this.extSourceVersion = json['_sourceVersion'] == null ? null : FHIRObjectFactory.buildFromJSON('Element', json['_sourceVersion']);
        this.target = json['target'];
        this.extTarget = json['_target'] == null ? null : FHIRObjectFactory.buildFromJSON('Element', json['_target']);
        this.targetVersion = json['targetVersion'];
        this.extTargetVersion = json['_targetVersion'] == null ? null : FHIRObjectFactory.buildFromJSON('Element', json['_targetVersion']);
        this.element = List<ConceptMapElement>();
        if (json['element'] != null && json['element'].length > 0) {
          if( json['element'] is List ){
            json['element'].forEach((i){
              this.element.add(FHIRObjectFactory.buildFromJSON('ConceptMapElement', i));
            });
          } else {
            // this handles the case when the list only has one object and does not return as a list
            var i = json['element'];
            this.element.add(FHIRObjectFactory.buildFromJSON('ConceptMapElement', i));
          }          
        }
        this.unmapped = json['unmapped'] == null ? null : FHIRObjectFactory.buildFromJSON('ConceptMapUnmapped', json['unmapped']);
    }
}
