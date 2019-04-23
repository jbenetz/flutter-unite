import 'extension.dart';
import 'fhir_object_factory.dart';
import 'element.dart';
/// The CodeSystem resource is used to declare the existence of and describe a code system or code system supplement and its key properties, and optionally define a part or all of its content.
class CodeSystemFilter {
    /// Unique id for the element within a resource (for internal references). This may be any string value that does not contain spaces.
    String id;
    /// May be used to represent additional information that is not part of the basic definition of the element. To make the use of extensions safe and manageable, there is a strict set of governance  applied to the definition and use of extensions. Though any implementer can define an extension, there is a set of requirements that SHALL be met as part of the definition of the extension.
    List<Extension> extension;
    /// May be used to represent additional information that is not part of the basic definition of the element and that modifies the understanding of the element in which it is contained and/or the understanding of the containing element's descendants. Usually modifier elements provide negation or qualification. To make the use of extensions safe and manageable, there is a strict set of governance applied to the definition and use of extensions. Though any implementer can define an extension, there is a set of requirements that SHALL be met as part of the definition of the extension. Applications processing a resource are required to check for modifier extensions.
    /// 
    /// Modifier extensions SHALL NOT change the meaning of any elements on Resource or DomainResource (including cannot change the meaning of modifierExtension itself).
    List<Extension> modifierExtension;
    /// The code that identifies this filter when it is used as a filter in [[[ValueSet]]].compose.include.filter.
    String code;
    /// Extensions for code
    Element extCode;
    /// A description of how or why the filter is used.
    String description;
    /// Extensions for description
    Element extDescription;
    /// A list of operators that can be used with the filter.
    List<String> operator;
    /// Extensions for operator
    List<Element> extOperator;
    /// A description of what the value for the filter should be.
    String value;
    /// Extensions for value
    Element extValue;
 
    CodeSystemFilter.fromJSON( Map json ){
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
        this.description = json['description'];
        this.extDescription = json['_description'] == null ? null : FHIRObjectFactory.buildFromJSON('Element', json['_description']);
        this.operator = List<String>();
        if (json['operator'] != null && json['operator'].length > 0) {
          if( json['operator'] is List ){
            json['operator'].forEach((i){
              this.operator.add(i);
            });
          } else {
            // this handles the case when the list only has one object and does not return as a list
            var i = json['operator'];
            this.operator.add(i);
          }          
        }
        this.extOperator = List<Element>();
        if (json['_operator'] != null && json['_operator'].length > 0) {
          if( json['_operator'] is List ){
            json['_operator'].forEach((i){
              this.extOperator.add(FHIRObjectFactory.buildFromJSON('Element', i));
            });
          } else {
            // this handles the case when the list only has one object and does not return as a list
            var i = json['_operator'];
            this.extOperator.add(FHIRObjectFactory.buildFromJSON('Element', i));
          }          
        }
        this.value = json['value'];
        this.extValue = json['_value'] == null ? null : FHIRObjectFactory.buildFromJSON('Element', json['_value']);
    }
}
