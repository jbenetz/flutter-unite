import 'extension.dart';
import 'fhir_object_factory.dart';
import 'element.dart';
import 'coding.dart';
/// The CodeSystem resource is used to declare the existence of and describe a code system or code system supplement and its key properties, and optionally define a part or all of its content.
class CodeSystemProperty1 {
    /// Unique id for the element within a resource (for internal references). This may be any string value that does not contain spaces.
    String id;
    /// May be used to represent additional information that is not part of the basic definition of the element. To make the use of extensions safe and manageable, there is a strict set of governance  applied to the definition and use of extensions. Though any implementer can define an extension, there is a set of requirements that SHALL be met as part of the definition of the extension.
    List<Extension> extension;
    /// May be used to represent additional information that is not part of the basic definition of the element and that modifies the understanding of the element in which it is contained and/or the understanding of the containing element's descendants. Usually modifier elements provide negation or qualification. To make the use of extensions safe and manageable, there is a strict set of governance applied to the definition and use of extensions. Though any implementer can define an extension, there is a set of requirements that SHALL be met as part of the definition of the extension. Applications processing a resource are required to check for modifier extensions.
    /// 
    /// Modifier extensions SHALL NOT change the meaning of any elements on Resource or DomainResource (including cannot change the meaning of modifierExtension itself).
    List<Extension> modifierExtension;
    /// A code that is a reference to CodeSystem.property.code.
    String code;
    /// Extensions for code
    Element extCode;
    /// Extensions for valueCode
    Element extValueCode;
    /// The value of this property.
    Coding valueCoding;
    /// Extensions for valueString
    Element extValueString;
    /// Extensions for valueInteger
    Element extValueInteger;
    /// Extensions for valueBoolean
    Element extValueBoolean;
    /// Extensions for valueDateTime
    Element extValueDateTime;
    /// Extensions for valueDecimal
    Element extValueDecimal;
 
    CodeSystemProperty1.fromJSON( Map json ){
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
        this.extValueCode = json['_valueCode'] == null ? null : FHIRObjectFactory.buildFromJSON('Element', json['_valueCode']);
        this.valueCoding = json['valueCoding'] == null ? null : FHIRObjectFactory.buildFromJSON('Coding', json['valueCoding']);
        this.extValueString = json['_valueString'] == null ? null : FHIRObjectFactory.buildFromJSON('Element', json['_valueString']);
        this.extValueInteger = json['_valueInteger'] == null ? null : FHIRObjectFactory.buildFromJSON('Element', json['_valueInteger']);
        this.extValueBoolean = json['_valueBoolean'] == null ? null : FHIRObjectFactory.buildFromJSON('Element', json['_valueBoolean']);
        this.extValueDateTime = json['_valueDateTime'] == null ? null : FHIRObjectFactory.buildFromJSON('Element', json['_valueDateTime']);
        this.extValueDecimal = json['_valueDecimal'] == null ? null : FHIRObjectFactory.buildFromJSON('Element', json['_valueDecimal']);
    }
}
