import 'extension.dart';
import 'fhir_object_factory.dart';
import 'element.dart';
import 'capability_statement_interaction.dart';
import 'capability_statement_search_param.dart';
import 'capability_statement_operation.dart';
/// A Capability Statement documents a set of capabilities (behaviors) of a FHIR Server for a particular version of FHIR that may be used as a statement of actual server functionality or a statement of required or desired server implementation.
class CapabilityStatementResource {
    /// Unique id for the element within a resource (for internal references). This may be any string value that does not contain spaces.
    String id;
    /// May be used to represent additional information that is not part of the basic definition of the element. To make the use of extensions safe and manageable, there is a strict set of governance  applied to the definition and use of extensions. Though any implementer can define an extension, there is a set of requirements that SHALL be met as part of the definition of the extension.
    List<Extension> extension;
    /// May be used to represent additional information that is not part of the basic definition of the element and that modifies the understanding of the element in which it is contained and/or the understanding of the containing element's descendants. Usually modifier elements provide negation or qualification. To make the use of extensions safe and manageable, there is a strict set of governance applied to the definition and use of extensions. Though any implementer can define an extension, there is a set of requirements that SHALL be met as part of the definition of the extension. Applications processing a resource are required to check for modifier extensions.
    /// 
    /// Modifier extensions SHALL NOT change the meaning of any elements on Resource or DomainResource (including cannot change the meaning of modifierExtension itself).
    List<Extension> modifierExtension;
    /// A type of resource exposed via the restful interface.
    String type;
    /// Extensions for type
    Element extType;
    /// A specification of the profile that describes the solution's overall support for the resource, including any constraints on cardinality, bindings, lengths or other limitations. See further discussion in [Using Profiles](profiling.html#profile-uses).
    String profile;
    /// A list of profiles that represent different use cases supported by the system. For a server, "supported by the system" means the system hosts/produces a set of resources that are conformant to a particular profile, and allows clients that use its services to search using this profile and to find appropriate data. For a client, it means the system will search by this profile and process data according to the guidance implicit in the profile. See further discussion in [Using Profiles](profiling.html#profile-uses).
    List<String> supportedProfile;
    /// Additional information about the resource type used by the system.
    String documentation;
    /// Extensions for documentation
    Element extDocumentation;
    /// Identifies a restful operation supported by the solution.
    List<CapabilityStatementInteraction> interaction;
    /// This field is set to no-version to specify that the system does not support (server) or use (client) versioning for this resource type. If this has some other value, the server must at least correctly track and populate the versionId meta-property on resources. If the value is 'versioned-update', then the server supports all the versioning features, including using e-tags for version integrity in the API.
    String versioning;
    /// Extensions for versioning
    Element extVersioning;
    /// A flag for whether the server is able to return past versions as part of the vRead operation.
    bool readHistory;
    /// Extensions for readHistory
    Element extReadHistory;
    /// A flag to indicate that the server allows or needs to allow the client to create new identities on the server (that is, the client PUTs to a location where there is no existing resource). Allowing this operation means that the server allows the client to create new identities on the server.
    bool updateCreate;
    /// Extensions for updateCreate
    Element extUpdateCreate;
    /// A flag that indicates that the server supports conditional create.
    bool conditionalCreate;
    /// Extensions for conditionalCreate
    Element extConditionalCreate;
    /// A code that indicates how the server supports conditional read.
    String conditionalRead;
    /// Extensions for conditionalRead
    Element extConditionalRead;
    /// A flag that indicates that the server supports conditional update.
    bool conditionalUpdate;
    /// Extensions for conditionalUpdate
    Element extConditionalUpdate;
    /// A code that indicates how the server supports conditional delete.
    String conditionalDelete;
    /// Extensions for conditionalDelete
    Element extConditionalDelete;
    /// Extensions for referencePolicy
    List<Element> extReferencePolicy;
    /// A list of _include values supported by the server.
    List<String> searchInclude;
    /// Extensions for searchInclude
    List<Element> extSearchInclude;
    /// A list of _revinclude (reverse include) values supported by the server.
    List<String> searchRevInclude;
    /// Extensions for searchRevInclude
    List<Element> extSearchRevInclude;
    /// Search parameters for implementations to support and/or make use of - either references to ones defined in the specification, or additional ones defined for/by the implementation.
    List<CapabilityStatementSearchParam> searchParam;
    /// Definition of an operation or a named query together with its parameters and their meaning and type. Consult the definition of the operation for details about how to invoke the operation, and the parameters.
    List<CapabilityStatementOperation> operation;
 
    CapabilityStatementResource.fromJSON( Map json ){
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
        this.type = json['type'];
        this.extType = json['_type'] == null ? null : FHIRObjectFactory.buildFromJSON('Element', json['_type']);
        this.profile = json['profile'];
        this.supportedProfile = List<String>();
        if (json['supportedProfile'] != null && json['supportedProfile'].length > 0) {
          if( json['supportedProfile'] is List ){
            json['supportedProfile'].forEach((i){
              this.supportedProfile.add(i);
            });
          } else {
            // this handles the case when the list only has one object and does not return as a list
            var i = json['supportedProfile'];
            this.supportedProfile.add(i);
          }          
        }
        this.documentation = json['documentation'];
        this.extDocumentation = json['_documentation'] == null ? null : FHIRObjectFactory.buildFromJSON('Element', json['_documentation']);
        this.interaction = List<CapabilityStatementInteraction>();
        if (json['interaction'] != null && json['interaction'].length > 0) {
          if( json['interaction'] is List ){
            json['interaction'].forEach((i){
              this.interaction.add(FHIRObjectFactory.buildFromJSON('CapabilityStatementInteraction', i));
            });
          } else {
            // this handles the case when the list only has one object and does not return as a list
            var i = json['interaction'];
            this.interaction.add(FHIRObjectFactory.buildFromJSON('CapabilityStatementInteraction', i));
          }          
        }
        this.versioning = json['versioning'];
        this.extVersioning = json['_versioning'] == null ? null : FHIRObjectFactory.buildFromJSON('Element', json['_versioning']);
        this.readHistory = json['readHistory'];
        this.extReadHistory = json['_readHistory'] == null ? null : FHIRObjectFactory.buildFromJSON('Element', json['_readHistory']);
        this.updateCreate = json['updateCreate'];
        this.extUpdateCreate = json['_updateCreate'] == null ? null : FHIRObjectFactory.buildFromJSON('Element', json['_updateCreate']);
        this.conditionalCreate = json['conditionalCreate'];
        this.extConditionalCreate = json['_conditionalCreate'] == null ? null : FHIRObjectFactory.buildFromJSON('Element', json['_conditionalCreate']);
        this.conditionalRead = json['conditionalRead'];
        this.extConditionalRead = json['_conditionalRead'] == null ? null : FHIRObjectFactory.buildFromJSON('Element', json['_conditionalRead']);
        this.conditionalUpdate = json['conditionalUpdate'];
        this.extConditionalUpdate = json['_conditionalUpdate'] == null ? null : FHIRObjectFactory.buildFromJSON('Element', json['_conditionalUpdate']);
        this.conditionalDelete = json['conditionalDelete'];
        this.extConditionalDelete = json['_conditionalDelete'] == null ? null : FHIRObjectFactory.buildFromJSON('Element', json['_conditionalDelete']);
        this.extReferencePolicy = List<Element>();
        if (json['_referencePolicy'] != null && json['_referencePolicy'].length > 0) {
          if( json['_referencePolicy'] is List ){
            json['_referencePolicy'].forEach((i){
              this.extReferencePolicy.add(FHIRObjectFactory.buildFromJSON('Element', i));
            });
          } else {
            // this handles the case when the list only has one object and does not return as a list
            var i = json['_referencePolicy'];
            this.extReferencePolicy.add(FHIRObjectFactory.buildFromJSON('Element', i));
          }          
        }
        this.searchInclude = List<String>();
        if (json['searchInclude'] != null && json['searchInclude'].length > 0) {
          if( json['searchInclude'] is List ){
            json['searchInclude'].forEach((i){
              this.searchInclude.add(i);
            });
          } else {
            // this handles the case when the list only has one object and does not return as a list
            var i = json['searchInclude'];
            this.searchInclude.add(i);
          }          
        }
        this.extSearchInclude = List<Element>();
        if (json['_searchInclude'] != null && json['_searchInclude'].length > 0) {
          if( json['_searchInclude'] is List ){
            json['_searchInclude'].forEach((i){
              this.extSearchInclude.add(FHIRObjectFactory.buildFromJSON('Element', i));
            });
          } else {
            // this handles the case when the list only has one object and does not return as a list
            var i = json['_searchInclude'];
            this.extSearchInclude.add(FHIRObjectFactory.buildFromJSON('Element', i));
          }          
        }
        this.searchRevInclude = List<String>();
        if (json['searchRevInclude'] != null && json['searchRevInclude'].length > 0) {
          if( json['searchRevInclude'] is List ){
            json['searchRevInclude'].forEach((i){
              this.searchRevInclude.add(i);
            });
          } else {
            // this handles the case when the list only has one object and does not return as a list
            var i = json['searchRevInclude'];
            this.searchRevInclude.add(i);
          }          
        }
        this.extSearchRevInclude = List<Element>();
        if (json['_searchRevInclude'] != null && json['_searchRevInclude'].length > 0) {
          if( json['_searchRevInclude'] is List ){
            json['_searchRevInclude'].forEach((i){
              this.extSearchRevInclude.add(FHIRObjectFactory.buildFromJSON('Element', i));
            });
          } else {
            // this handles the case when the list only has one object and does not return as a list
            var i = json['_searchRevInclude'];
            this.extSearchRevInclude.add(FHIRObjectFactory.buildFromJSON('Element', i));
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
    }
}
