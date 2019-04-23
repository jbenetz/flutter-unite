import 'extension.dart';
import 'fhir_object_factory.dart';
import 'element.dart';
/// A expression that is evaluated in a specified context and returns a value. The context of use of the expression must specify the context in which the expression is evaluated, and how the result of the expression is used.
class Expression {
    /// Unique id for the element within a resource (for internal references). This may be any string value that does not contain spaces.
    String id;
    /// May be used to represent additional information that is not part of the basic definition of the element. To make the use of extensions safe and manageable, there is a strict set of governance  applied to the definition and use of extensions. Though any implementer can define an extension, there is a set of requirements that SHALL be met as part of the definition of the extension.
    List<Extension> extension;
    /// A brief, natural language description of the condition that effectively communicates the intended semantics.
    String description;
    /// Extensions for description
    Element extDescription;
    /// A short name assigned to the expression to allow for multiple reuse of the expression in the context where it is defined.
    String name;
    /// Extensions for name
    Element extName;
    /// The media type of the language for the expression.
    String language;
    /// Extensions for language
    Element extLanguage;
    /// An expression in the specified language that returns a value.
    String expression;
    /// Extensions for expression
    Element extExpression;
    /// A URI that defines where the expression is found.
    String reference;
    /// Extensions for reference
    Element extReference;
 
    Expression.fromJSON( Map json ){
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
        this.description = json['description'];
        this.extDescription = json['_description'] == null ? null : FHIRObjectFactory.buildFromJSON('Element', json['_description']);
        this.name = json['name'];
        this.extName = json['_name'] == null ? null : FHIRObjectFactory.buildFromJSON('Element', json['_name']);
        this.language = json['language'];
        this.extLanguage = json['_language'] == null ? null : FHIRObjectFactory.buildFromJSON('Element', json['_language']);
        this.expression = json['expression'];
        this.extExpression = json['_expression'] == null ? null : FHIRObjectFactory.buildFromJSON('Element', json['_expression']);
        this.reference = json['reference'];
        this.extReference = json['_reference'] == null ? null : FHIRObjectFactory.buildFromJSON('Element', json['_reference']);
    }
}
