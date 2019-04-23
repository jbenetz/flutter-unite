import 'extension.dart';
import 'fhir_object_factory.dart';
import 'element.dart';
/// Captures constraints on each element within the resource, profile, or extension.
class ElementDefinitionConstraint {
    /// Unique id for the element within a resource (for internal references). This may be any string value that does not contain spaces.
    String id;
    /// May be used to represent additional information that is not part of the basic definition of the element. To make the use of extensions safe and manageable, there is a strict set of governance  applied to the definition and use of extensions. Though any implementer can define an extension, there is a set of requirements that SHALL be met as part of the definition of the extension.
    List<Extension> extension;
    /// May be used to represent additional information that is not part of the basic definition of the element and that modifies the understanding of the element in which it is contained and/or the understanding of the containing element's descendants. Usually modifier elements provide negation or qualification. To make the use of extensions safe and manageable, there is a strict set of governance applied to the definition and use of extensions. Though any implementer can define an extension, there is a set of requirements that SHALL be met as part of the definition of the extension. Applications processing a resource are required to check for modifier extensions.
    /// 
    /// Modifier extensions SHALL NOT change the meaning of any elements on Resource or DomainResource (including cannot change the meaning of modifierExtension itself).
    List<Extension> modifierExtension;
    /// Allows identification of which elements have their cardinalities impacted by the constraint.  Will not be referenced for constraints that do not affect cardinality.
    String key;
    /// Extensions for key
    Element extKey;
    /// Description of why this constraint is necessary or appropriate.
    String requirements;
    /// Extensions for requirements
    Element extRequirements;
    /// Identifies the impact constraint violation has on the conformance of the instance.
    String severity;
    /// Extensions for severity
    Element extSeverity;
    /// Text that can be used to describe the constraint in messages identifying that the constraint has been violated.
    String human;
    /// Extensions for human
    Element extHuman;
    /// A [FHIRPath](fhirpath.html) expression of constraint that can be executed to see if this constraint is met.
    String expression;
    /// Extensions for expression
    Element extExpression;
    /// An XPath expression of constraint that can be executed to see if this constraint is met.
    String xpath;
    /// Extensions for xpath
    Element extXpath;
    /// A reference to the original source of the constraint, for traceability purposes.
    String source;
 
    ElementDefinitionConstraint.fromJSON( Map json ){
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
        this.key = json['key'];
        this.extKey = json['_key'] == null ? null : FHIRObjectFactory.buildFromJSON('Element', json['_key']);
        this.requirements = json['requirements'];
        this.extRequirements = json['_requirements'] == null ? null : FHIRObjectFactory.buildFromJSON('Element', json['_requirements']);
        this.severity = json['severity'];
        this.extSeverity = json['_severity'] == null ? null : FHIRObjectFactory.buildFromJSON('Element', json['_severity']);
        this.human = json['human'];
        this.extHuman = json['_human'] == null ? null : FHIRObjectFactory.buildFromJSON('Element', json['_human']);
        this.expression = json['expression'];
        this.extExpression = json['_expression'] == null ? null : FHIRObjectFactory.buildFromJSON('Element', json['_expression']);
        this.xpath = json['xpath'];
        this.extXpath = json['_xpath'] == null ? null : FHIRObjectFactory.buildFromJSON('Element', json['_xpath']);
        this.source = json['source'];
    }
}
