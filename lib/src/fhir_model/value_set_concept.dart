import 'extension.dart';
import 'fhir_object_factory.dart';
import 'element.dart';
import 'value_set_designation.dart';
/// A ValueSet resource instance specifies a set of codes drawn from one or more code systems, intended for use in a particular context. Value sets link between [[[CodeSystem]]] definitions and their use in [coded elements](terminologies.html).
class ValueSetConcept {
    /// Unique id for the element within a resource (for internal references). This may be any string value that does not contain spaces.
    String id;
    /// May be used to represent additional information that is not part of the basic definition of the element. To make the use of extensions safe and manageable, there is a strict set of governance  applied to the definition and use of extensions. Though any implementer can define an extension, there is a set of requirements that SHALL be met as part of the definition of the extension.
    List<Extension> extension;
    /// May be used to represent additional information that is not part of the basic definition of the element and that modifies the understanding of the element in which it is contained and/or the understanding of the containing element's descendants. Usually modifier elements provide negation or qualification. To make the use of extensions safe and manageable, there is a strict set of governance applied to the definition and use of extensions. Though any implementer can define an extension, there is a set of requirements that SHALL be met as part of the definition of the extension. Applications processing a resource are required to check for modifier extensions.
    /// 
    /// Modifier extensions SHALL NOT change the meaning of any elements on Resource or DomainResource (including cannot change the meaning of modifierExtension itself).
    List<Extension> modifierExtension;
    /// Specifies a code for the concept to be included or excluded.
    String code;
    /// Extensions for code
    Element extCode;
    /// The text to display to the user for this concept in the context of this valueset. If no display is provided, then applications using the value set use the display specified for the code by the system.
    String display;
    /// Extensions for display
    Element extDisplay;
    /// Additional representations for this concept when used in this value set - other languages, aliases, specialized purposes, used for particular purposes, etc.
    List<ValueSetDesignation> designation;
 
    ValueSetConcept.fromJSON( Map json ){
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
        this.designation = List<ValueSetDesignation>();
        if (json['designation'] != null && json['designation'].length > 0) {
          if( json['designation'] is List ){
            json['designation'].forEach((i){
              this.designation.add(FHIRObjectFactory.buildFromJSON('ValueSetDesignation', i));
            });
          } else {
            // this handles the case when the list only has one object and does not return as a list
            var i = json['designation'];
            this.designation.add(FHIRObjectFactory.buildFromJSON('ValueSetDesignation', i));
          }          
        }
    }
}
