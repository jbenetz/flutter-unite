import 'extension.dart';
import 'fhir_object_factory.dart';
import 'element.dart';
/// A structured set of tests against a FHIR server or client implementation to determine compliance against the FHIR specification.
class TestScriptVariable {
    /// Unique id for the element within a resource (for internal references). This may be any string value that does not contain spaces.
    String id;
    /// May be used to represent additional information that is not part of the basic definition of the element. To make the use of extensions safe and manageable, there is a strict set of governance  applied to the definition and use of extensions. Though any implementer can define an extension, there is a set of requirements that SHALL be met as part of the definition of the extension.
    List<Extension> extension;
    /// May be used to represent additional information that is not part of the basic definition of the element and that modifies the understanding of the element in which it is contained and/or the understanding of the containing element's descendants. Usually modifier elements provide negation or qualification. To make the use of extensions safe and manageable, there is a strict set of governance applied to the definition and use of extensions. Though any implementer can define an extension, there is a set of requirements that SHALL be met as part of the definition of the extension. Applications processing a resource are required to check for modifier extensions.
    /// 
    /// Modifier extensions SHALL NOT change the meaning of any elements on Resource or DomainResource (including cannot change the meaning of modifierExtension itself).
    List<Extension> modifierExtension;
    /// Descriptive name for this variable.
    String name;
    /// Extensions for name
    Element extName;
    /// A default, hard-coded, or user-defined value for this variable.
    String defaultValue;
    /// Extensions for defaultValue
    Element extDefaultValue;
    /// A free text natural language description of the variable and its purpose.
    String description;
    /// Extensions for description
    Element extDescription;
    /// The FHIRPath expression to evaluate against the fixture body. When variables are defined, only one of either expression, headerField or path must be specified.
    String expression;
    /// Extensions for expression
    Element extExpression;
    /// Will be used to grab the HTTP header field value from the headers that sourceId is pointing to.
    String headerField;
    /// Extensions for headerField
    Element extHeaderField;
    /// Displayable text string with hint help information to the user when entering a default value.
    String hint;
    /// Extensions for hint
    Element extHint;
    /// XPath or JSONPath to evaluate against the fixture body.  When variables are defined, only one of either expression, headerField or path must be specified.
    String path;
    /// Extensions for path
    Element extPath;
    /// Fixture to evaluate the XPath/JSONPath expression or the headerField  against within this variable.
    String sourceId;
    /// Extensions for sourceId
    Element extSourceId;
 
    TestScriptVariable.fromJSON( Map json ){
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
        this.name = json['name'];
        this.extName = json['_name'] == null ? null : FHIRObjectFactory.buildFromJSON('Element', json['_name']);
        this.defaultValue = json['defaultValue'];
        this.extDefaultValue = json['_defaultValue'] == null ? null : FHIRObjectFactory.buildFromJSON('Element', json['_defaultValue']);
        this.description = json['description'];
        this.extDescription = json['_description'] == null ? null : FHIRObjectFactory.buildFromJSON('Element', json['_description']);
        this.expression = json['expression'];
        this.extExpression = json['_expression'] == null ? null : FHIRObjectFactory.buildFromJSON('Element', json['_expression']);
        this.headerField = json['headerField'];
        this.extHeaderField = json['_headerField'] == null ? null : FHIRObjectFactory.buildFromJSON('Element', json['_headerField']);
        this.hint = json['hint'];
        this.extHint = json['_hint'] == null ? null : FHIRObjectFactory.buildFromJSON('Element', json['_hint']);
        this.path = json['path'];
        this.extPath = json['_path'] == null ? null : FHIRObjectFactory.buildFromJSON('Element', json['_path']);
        this.sourceId = json['sourceId'];
        this.extSourceId = json['_sourceId'] == null ? null : FHIRObjectFactory.buildFromJSON('Element', json['_sourceId']);
    }
}
