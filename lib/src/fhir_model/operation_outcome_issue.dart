import 'extension.dart';
import 'fhir_object_factory.dart';
import 'element.dart';
import 'codeable_concept.dart';
/// A collection of error, warning, or information messages that result from a system action.
class OperationOutcomeIssue {
    /// Unique id for the element within a resource (for internal references). This may be any string value that does not contain spaces.
    String id;
    /// May be used to represent additional information that is not part of the basic definition of the element. To make the use of extensions safe and manageable, there is a strict set of governance  applied to the definition and use of extensions. Though any implementer can define an extension, there is a set of requirements that SHALL be met as part of the definition of the extension.
    List<Extension> extension;
    /// May be used to represent additional information that is not part of the basic definition of the element and that modifies the understanding of the element in which it is contained and/or the understanding of the containing element's descendants. Usually modifier elements provide negation or qualification. To make the use of extensions safe and manageable, there is a strict set of governance applied to the definition and use of extensions. Though any implementer can define an extension, there is a set of requirements that SHALL be met as part of the definition of the extension. Applications processing a resource are required to check for modifier extensions.
    /// 
    /// Modifier extensions SHALL NOT change the meaning of any elements on Resource or DomainResource (including cannot change the meaning of modifierExtension itself).
    List<Extension> modifierExtension;
    /// Indicates whether the issue indicates a variation from successful processing.
    String severity;
    /// Extensions for severity
    Element extSeverity;
    /// Describes the type of the issue. The system that creates an OperationOutcome SHALL choose the most applicable code from the IssueType value set, and may additional provide its own code for the error in the details element.
    String code;
    /// Extensions for code
    Element extCode;
    /// Additional details about the error. This may be a text description of the error or a system code that identifies the error.
    CodeableConcept details;
    /// Additional diagnostic information about the issue.
    String diagnostics;
    /// Extensions for diagnostics
    Element extDiagnostics;
    /// This element is deprecated because it is XML specific. It is replaced by issue.expression, which is format independent, and simpler to parse. 
    /// 
    /// For resource issues, this will be a simple XPath limited to element names, repetition indicators and the default child accessor that identifies one of the elements in the resource that caused this issue to be raised.  For HTTP errors, will be "http." + the parameter name.
    List<String> location;
    /// Extensions for location
    List<Element> extLocation;
    /// A [simple subset of FHIRPath](fhirpath.html#simple) limited to element names, repetition indicators and the default child accessor that identifies one of the elements in the resource that caused this issue to be raised.
    List<String> expression;
    /// Extensions for expression
    List<Element> extExpression;
 
    OperationOutcomeIssue.fromJSON( Map json ){
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
        this.severity = json['severity'];
        this.extSeverity = json['_severity'] == null ? null : FHIRObjectFactory.buildFromJSON('Element', json['_severity']);
        this.code = json['code'];
        this.extCode = json['_code'] == null ? null : FHIRObjectFactory.buildFromJSON('Element', json['_code']);
        this.details = json['details'] == null ? null : FHIRObjectFactory.buildFromJSON('CodeableConcept', json['details']);
        this.diagnostics = json['diagnostics'];
        this.extDiagnostics = json['_diagnostics'] == null ? null : FHIRObjectFactory.buildFromJSON('Element', json['_diagnostics']);
        this.location = List<String>();
        if (json['location'] != null && json['location'].length > 0) {
          if( json['location'] is List ){
            json['location'].forEach((i){
              this.location.add(i);
            });
          } else {
            // this handles the case when the list only has one object and does not return as a list
            var i = json['location'];
            this.location.add(i);
          }          
        }
        this.extLocation = List<Element>();
        if (json['_location'] != null && json['_location'].length > 0) {
          if( json['_location'] is List ){
            json['_location'].forEach((i){
              this.extLocation.add(FHIRObjectFactory.buildFromJSON('Element', i));
            });
          } else {
            // this handles the case when the list only has one object and does not return as a list
            var i = json['_location'];
            this.extLocation.add(FHIRObjectFactory.buildFromJSON('Element', i));
          }          
        }
        this.expression = List<String>();
        if (json['expression'] != null && json['expression'].length > 0) {
          if( json['expression'] is List ){
            json['expression'].forEach((i){
              this.expression.add(i);
            });
          } else {
            // this handles the case when the list only has one object and does not return as a list
            var i = json['expression'];
            this.expression.add(i);
          }          
        }
        this.extExpression = List<Element>();
        if (json['_expression'] != null && json['_expression'].length > 0) {
          if( json['_expression'] is List ){
            json['_expression'].forEach((i){
              this.extExpression.add(FHIRObjectFactory.buildFromJSON('Element', i));
            });
          } else {
            // this handles the case when the list only has one object and does not return as a list
            var i = json['_expression'];
            this.extExpression.add(FHIRObjectFactory.buildFromJSON('Element', i));
          }          
        }
    }
}
