import 'extension.dart';
import 'fhir_object_factory.dart';
import 'element.dart';
/// Captures constraints on each element within the resource, profile, or extension.
class ElementDefinitionType {
    /// Unique id for the element within a resource (for internal references). This may be any string value that does not contain spaces.
    String id;
    /// May be used to represent additional information that is not part of the basic definition of the element. To make the use of extensions safe and manageable, there is a strict set of governance  applied to the definition and use of extensions. Though any implementer can define an extension, there is a set of requirements that SHALL be met as part of the definition of the extension.
    List<Extension> extension;
    /// May be used to represent additional information that is not part of the basic definition of the element and that modifies the understanding of the element in which it is contained and/or the understanding of the containing element's descendants. Usually modifier elements provide negation or qualification. To make the use of extensions safe and manageable, there is a strict set of governance applied to the definition and use of extensions. Though any implementer can define an extension, there is a set of requirements that SHALL be met as part of the definition of the extension. Applications processing a resource are required to check for modifier extensions.
    /// 
    /// Modifier extensions SHALL NOT change the meaning of any elements on Resource or DomainResource (including cannot change the meaning of modifierExtension itself).
    List<Extension> modifierExtension;
    /// URL of Data type or Resource that is a(or the) type used for this element. References are URLs that are relative to http://hl7.org/fhir/StructureDefinition e.g. "string" is a reference to http://hl7.org/fhir/StructureDefinition/string. Absolute URLs are only allowed in logical models.
    String code;
    /// Extensions for code
    Element extCode;
    /// Identifies a profile structure or implementation Guide that applies to the datatype this element refers to. If any profiles are specified, then the content must conform to at least one of them. The URL can be a local reference - to a contained StructureDefinition, or a reference to another StructureDefinition or Implementation Guide by a canonical URL. When an implementation guide is specified, the type SHALL conform to at least one profile defined in the implementation guide.
    List<String> profile;
    /// Used when the type is "Reference" or "canonical", and identifies a profile structure or implementation Guide that applies to the target of the reference this element refers to. If any profiles are specified, then the content must conform to at least one of them. The URL can be a local reference - to a contained StructureDefinition, or a reference to another StructureDefinition or Implementation Guide by a canonical URL. When an implementation guide is specified, the target resource SHALL conform to at least one profile defined in the implementation guide.
    List<String> targetProfile;
    /// Extensions for aggregation
    List<Element> extAggregation;
    /// Whether this reference needs to be version specific or version independent, or whether either can be used.
    String versioning;
    /// Extensions for versioning
    Element extVersioning;
 
    ElementDefinitionType.fromJSON( Map json ){
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
        this.profile = List<String>();
        if (json['profile'] != null && json['profile'].length > 0) {
          if( json['profile'] is List ){
            json['profile'].forEach((i){
              this.profile.add(i);
            });
          } else {
            // this handles the case when the list only has one object and does not return as a list
            var i = json['profile'];
            this.profile.add(i);
          }          
        }
        this.targetProfile = List<String>();
        if (json['targetProfile'] != null && json['targetProfile'].length > 0) {
          if( json['targetProfile'] is List ){
            json['targetProfile'].forEach((i){
              this.targetProfile.add(i);
            });
          } else {
            // this handles the case when the list only has one object and does not return as a list
            var i = json['targetProfile'];
            this.targetProfile.add(i);
          }          
        }
        this.extAggregation = List<Element>();
        if (json['_aggregation'] != null && json['_aggregation'].length > 0) {
          if( json['_aggregation'] is List ){
            json['_aggregation'].forEach((i){
              this.extAggregation.add(FHIRObjectFactory.buildFromJSON('Element', i));
            });
          } else {
            // this handles the case when the list only has one object and does not return as a list
            var i = json['_aggregation'];
            this.extAggregation.add(FHIRObjectFactory.buildFromJSON('Element', i));
          }          
        }
        this.versioning = json['versioning'];
        this.extVersioning = json['_versioning'] == null ? null : FHIRObjectFactory.buildFromJSON('Element', json['_versioning']);
    }
}
