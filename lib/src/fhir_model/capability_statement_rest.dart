import 'extension.dart';
import 'fhir_object_factory.dart';
import 'element.dart';
import 'capability_statement_security.dart';
import 'capability_statement_resource.dart';
import 'capability_statement_interaction1.dart';
import 'capability_statement_search_param.dart';
import 'capability_statement_operation.dart';
/// A Capability Statement documents a set of capabilities (behaviors) of a FHIR Server for a particular version of FHIR that may be used as a statement of actual server functionality or a statement of required or desired server implementation.
class CapabilityStatementRest {
    /// Unique id for the element within a resource (for internal references). This may be any string value that does not contain spaces.
    String id;
    /// May be used to represent additional information that is not part of the basic definition of the element. To make the use of extensions safe and manageable, there is a strict set of governance  applied to the definition and use of extensions. Though any implementer can define an extension, there is a set of requirements that SHALL be met as part of the definition of the extension.
    List<Extension> extension;
    /// May be used to represent additional information that is not part of the basic definition of the element and that modifies the understanding of the element in which it is contained and/or the understanding of the containing element's descendants. Usually modifier elements provide negation or qualification. To make the use of extensions safe and manageable, there is a strict set of governance applied to the definition and use of extensions. Though any implementer can define an extension, there is a set of requirements that SHALL be met as part of the definition of the extension. Applications processing a resource are required to check for modifier extensions.
    /// 
    /// Modifier extensions SHALL NOT change the meaning of any elements on Resource or DomainResource (including cannot change the meaning of modifierExtension itself).
    List<Extension> modifierExtension;
    /// Identifies whether this portion of the statement is describing the ability to initiate or receive restful operations.
    String mode;
    /// Extensions for mode
    Element extMode;
    /// Information about the system's restful capabilities that apply across all applications, such as security.
    String documentation;
    /// Extensions for documentation
    Element extDocumentation;
    /// Information about security implementation from an interface perspective - what a client needs to know.
    CapabilityStatementSecurity security;
    /// A specification of the restful capabilities of the solution for a specific resource type.
    List<CapabilityStatementResource> resource;
    /// A specification of restful operations supported by the system.
    List<CapabilityStatementInteraction1> interaction;
    /// Search parameters that are supported for searching all resources for implementations to support and/or make use of - either references to ones defined in the specification, or additional ones defined for/by the implementation.
    List<CapabilityStatementSearchParam> searchParam;
    /// Definition of an operation or a named query together with its parameters and their meaning and type.
    List<CapabilityStatementOperation> operation;
    /// An absolute URI which is a reference to the definition of a compartment that the system supports. The reference is to a CompartmentDefinition resource by its canonical URL .
    List<String> compartment;
 
    CapabilityStatementRest.fromJSON( Map json ){
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
        this.mode = json['mode'];
        this.extMode = json['_mode'] == null ? null : FHIRObjectFactory.buildFromJSON('Element', json['_mode']);
        this.documentation = json['documentation'];
        this.extDocumentation = json['_documentation'] == null ? null : FHIRObjectFactory.buildFromJSON('Element', json['_documentation']);
        this.security = json['security'] == null ? null : FHIRObjectFactory.buildFromJSON('CapabilityStatementSecurity', json['security']);
        this.resource = List<CapabilityStatementResource>();
        if (json['resource'] != null && json['resource'].length > 0) {
          if( json['resource'] is List ){
            json['resource'].forEach((i){
              this.resource.add(FHIRObjectFactory.buildFromJSON('CapabilityStatementResource', i));
            });
          } else {
            // this handles the case when the list only has one object and does not return as a list
            var i = json['resource'];
            this.resource.add(FHIRObjectFactory.buildFromJSON('CapabilityStatementResource', i));
          }          
        }
        this.interaction = List<CapabilityStatementInteraction1>();
        if (json['interaction'] != null && json['interaction'].length > 0) {
          if( json['interaction'] is List ){
            json['interaction'].forEach((i){
              this.interaction.add(FHIRObjectFactory.buildFromJSON('CapabilityStatementInteraction1', i));
            });
          } else {
            // this handles the case when the list only has one object and does not return as a list
            var i = json['interaction'];
            this.interaction.add(FHIRObjectFactory.buildFromJSON('CapabilityStatementInteraction1', i));
          }          
        }
        this.searchParam = List<CapabilityStatementSearchParam>();
        if (json['searchParam'] != null && json['searchParam'].length > 0) {
          if( json['searchParam'] is List ){
            json['searchParam'].forEach((i){
              this.searchParam.add(FHIRObjectFactory.buildFromJSON('CapabilityStatementSearchParam', i));
            });
          } else {
            // this handles the case when the list only has one object and does not return as a list
            var i = json['searchParam'];
            this.searchParam.add(FHIRObjectFactory.buildFromJSON('CapabilityStatementSearchParam', i));
          }          
        }
        this.operation = List<CapabilityStatementOperation>();
        if (json['operation'] != null && json['operation'].length > 0) {
          if( json['operation'] is List ){
            json['operation'].forEach((i){
              this.operation.add(FHIRObjectFactory.buildFromJSON('CapabilityStatementOperation', i));
            });
          } else {
            // this handles the case when the list only has one object and does not return as a list
            var i = json['operation'];
            this.operation.add(FHIRObjectFactory.buildFromJSON('CapabilityStatementOperation', i));
          }          
        }
        this.compartment = List<String>();
        if (json['compartment'] != null && json['compartment'].length > 0) {
          if( json['compartment'] is List ){
            json['compartment'].forEach((i){
              this.compartment.add(i);
            });
          } else {
            // this handles the case when the list only has one object and does not return as a list
            var i = json['compartment'];
            this.compartment.add(i);
          }          
        }
    }
}
