import 'extension.dart';
import 'fhir_object_factory.dart';
import 'element.dart';
/// Captures constraints on each element within the resource, profile, or extension.
class ElementDefinitionMapping {
    /// Unique id for the element within a resource (for internal references). This may be any string value that does not contain spaces.
    String id;
    /// May be used to represent additional information that is not part of the basic definition of the element. To make the use of extensions safe and manageable, there is a strict set of governance  applied to the definition and use of extensions. Though any implementer can define an extension, there is a set of requirements that SHALL be met as part of the definition of the extension.
    List<Extension> extension;
    /// May be used to represent additional information that is not part of the basic definition of the element and that modifies the understanding of the element in which it is contained and/or the understanding of the containing element's descendants. Usually modifier elements provide negation or qualification. To make the use of extensions safe and manageable, there is a strict set of governance applied to the definition and use of extensions. Though any implementer can define an extension, there is a set of requirements that SHALL be met as part of the definition of the extension. Applications processing a resource are required to check for modifier extensions.
    /// 
    /// Modifier extensions SHALL NOT change the meaning of any elements on Resource or DomainResource (including cannot change the meaning of modifierExtension itself).
    List<Extension> modifierExtension;
    /// An internal reference to the definition of a mapping.
    String identity;
    /// Extensions for identity
    Element extIdentity;
    /// Identifies the computable language in which mapping.map is expressed.
    String language;
    /// Extensions for language
    Element extLanguage;
    /// Expresses what part of the target specification corresponds to this element.
    String map;
    /// Extensions for map
    Element extMap;
    /// Comments that provide information about the mapping or its use.
    String comment;
    /// Extensions for comment
    Element extComment;
 
    ElementDefinitionMapping.fromJSON( Map json ){
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
        this.identity = json['identity'];
        this.extIdentity = json['_identity'] == null ? null : FHIRObjectFactory.buildFromJSON('Element', json['_identity']);
        this.language = json['language'];
        this.extLanguage = json['_language'] == null ? null : FHIRObjectFactory.buildFromJSON('Element', json['_language']);
        this.map = json['map'];
        this.extMap = json['_map'] == null ? null : FHIRObjectFactory.buildFromJSON('Element', json['_map']);
        this.comment = json['comment'];
        this.extComment = json['_comment'] == null ? null : FHIRObjectFactory.buildFromJSON('Element', json['_comment']);
    }
}
