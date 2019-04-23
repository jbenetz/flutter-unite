import 'extension.dart';
import 'fhir_object_factory.dart';
import 'element.dart';
import 'terminology_capabilities_parameter.dart';
/// A TerminologyCapabilities resource documents a set of capabilities (behaviors) of a FHIR Terminology Server that may be used as a statement of actual server functionality or a statement of required or desired server implementation.
class TerminologyCapabilitiesExpansion {
    /// Unique id for the element within a resource (for internal references). This may be any string value that does not contain spaces.
    String id;
    /// May be used to represent additional information that is not part of the basic definition of the element. To make the use of extensions safe and manageable, there is a strict set of governance  applied to the definition and use of extensions. Though any implementer can define an extension, there is a set of requirements that SHALL be met as part of the definition of the extension.
    List<Extension> extension;
    /// May be used to represent additional information that is not part of the basic definition of the element and that modifies the understanding of the element in which it is contained and/or the understanding of the containing element's descendants. Usually modifier elements provide negation or qualification. To make the use of extensions safe and manageable, there is a strict set of governance applied to the definition and use of extensions. Though any implementer can define an extension, there is a set of requirements that SHALL be met as part of the definition of the extension. Applications processing a resource are required to check for modifier extensions.
    /// 
    /// Modifier extensions SHALL NOT change the meaning of any elements on Resource or DomainResource (including cannot change the meaning of modifierExtension itself).
    List<Extension> modifierExtension;
    /// Whether the server can return nested value sets.
    bool hierarchical;
    /// Extensions for hierarchical
    Element extHierarchical;
    /// Whether the server supports paging on expansion.
    bool paging;
    /// Extensions for paging
    Element extPaging;
    /// Allow request for incomplete expansions?
    bool incomplete;
    /// Extensions for incomplete
    Element extIncomplete;
    /// Supported expansion parameter.
    List<TerminologyCapabilitiesParameter> parameter;
    /// Documentation about text searching works.
    String textFilter;
    /// Extensions for textFilter
    Element extTextFilter;
 
    TerminologyCapabilitiesExpansion.fromJSON( Map json ){
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
        this.hierarchical = json['hierarchical'];
        this.extHierarchical = json['_hierarchical'] == null ? null : FHIRObjectFactory.buildFromJSON('Element', json['_hierarchical']);
        this.paging = json['paging'];
        this.extPaging = json['_paging'] == null ? null : FHIRObjectFactory.buildFromJSON('Element', json['_paging']);
        this.incomplete = json['incomplete'];
        this.extIncomplete = json['_incomplete'] == null ? null : FHIRObjectFactory.buildFromJSON('Element', json['_incomplete']);
        this.parameter = List<TerminologyCapabilitiesParameter>();
        if (json['parameter'] != null && json['parameter'].length > 0) {
          if( json['parameter'] is List ){
            json['parameter'].forEach((i){
              this.parameter.add(FHIRObjectFactory.buildFromJSON('TerminologyCapabilitiesParameter', i));
            });
          } else {
            // this handles the case when the list only has one object and does not return as a list
            var i = json['parameter'];
            this.parameter.add(FHIRObjectFactory.buildFromJSON('TerminologyCapabilitiesParameter', i));
          }          
        }
        this.textFilter = json['textFilter'];
        this.extTextFilter = json['_textFilter'] == null ? null : FHIRObjectFactory.buildFromJSON('Element', json['_textFilter']);
    }
}
