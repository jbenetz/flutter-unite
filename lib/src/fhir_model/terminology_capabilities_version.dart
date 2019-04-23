import 'extension.dart';
import 'fhir_object_factory.dart';
import 'element.dart';
import 'terminology_capabilities_filter.dart';
/// A TerminologyCapabilities resource documents a set of capabilities (behaviors) of a FHIR Terminology Server that may be used as a statement of actual server functionality or a statement of required or desired server implementation.
class TerminologyCapabilitiesVersion {
    /// Unique id for the element within a resource (for internal references). This may be any string value that does not contain spaces.
    String id;
    /// May be used to represent additional information that is not part of the basic definition of the element. To make the use of extensions safe and manageable, there is a strict set of governance  applied to the definition and use of extensions. Though any implementer can define an extension, there is a set of requirements that SHALL be met as part of the definition of the extension.
    List<Extension> extension;
    /// May be used to represent additional information that is not part of the basic definition of the element and that modifies the understanding of the element in which it is contained and/or the understanding of the containing element's descendants. Usually modifier elements provide negation or qualification. To make the use of extensions safe and manageable, there is a strict set of governance applied to the definition and use of extensions. Though any implementer can define an extension, there is a set of requirements that SHALL be met as part of the definition of the extension. Applications processing a resource are required to check for modifier extensions.
    /// 
    /// Modifier extensions SHALL NOT change the meaning of any elements on Resource or DomainResource (including cannot change the meaning of modifierExtension itself).
    List<Extension> modifierExtension;
    /// For version-less code systems, there should be a single version with no identifier.
    String code;
    /// Extensions for code
    Element extCode;
    /// If this is the default version for this code system.
    bool isDefault;
    /// Extensions for isDefault
    Element extIsDefault;
    /// If the compositional grammar defined by the code system is supported.
    bool compositional;
    /// Extensions for compositional
    Element extCompositional;
    /// Language Displays supported.
    List<String> language;
    /// Extensions for language
    List<Element> extLanguage;
    /// Filter Properties supported.
    List<TerminologyCapabilitiesFilter> filter;
    /// Properties supported for $lookup.
    List<String> property;
    /// Extensions for property
    List<Element> extProperty;
 
    TerminologyCapabilitiesVersion.fromJSON( Map json ){
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
        this.isDefault = json['isDefault'];
        this.extIsDefault = json['_isDefault'] == null ? null : FHIRObjectFactory.buildFromJSON('Element', json['_isDefault']);
        this.compositional = json['compositional'];
        this.extCompositional = json['_compositional'] == null ? null : FHIRObjectFactory.buildFromJSON('Element', json['_compositional']);
        this.language = List<String>();
        if (json['language'] != null && json['language'].length > 0) {
          if( json['language'] is List ){
            json['language'].forEach((i){
              this.language.add(i);
            });
          } else {
            // this handles the case when the list only has one object and does not return as a list
            var i = json['language'];
            this.language.add(i);
          }          
        }
        this.extLanguage = List<Element>();
        if (json['_language'] != null && json['_language'].length > 0) {
          if( json['_language'] is List ){
            json['_language'].forEach((i){
              this.extLanguage.add(FHIRObjectFactory.buildFromJSON('Element', i));
            });
          } else {
            // this handles the case when the list only has one object and does not return as a list
            var i = json['_language'];
            this.extLanguage.add(FHIRObjectFactory.buildFromJSON('Element', i));
          }          
        }
        this.filter = List<TerminologyCapabilitiesFilter>();
        if (json['filter'] != null && json['filter'].length > 0) {
          if( json['filter'] is List ){
            json['filter'].forEach((i){
              this.filter.add(FHIRObjectFactory.buildFromJSON('TerminologyCapabilitiesFilter', i));
            });
          } else {
            // this handles the case when the list only has one object and does not return as a list
            var i = json['filter'];
            this.filter.add(FHIRObjectFactory.buildFromJSON('TerminologyCapabilitiesFilter', i));
          }          
        }
        this.property = List<String>();
        if (json['property'] != null && json['property'].length > 0) {
          if( json['property'] is List ){
            json['property'].forEach((i){
              this.property.add(i);
            });
          } else {
            // this handles the case when the list only has one object and does not return as a list
            var i = json['property'];
            this.property.add(i);
          }          
        }
        this.extProperty = List<Element>();
        if (json['_property'] != null && json['_property'].length > 0) {
          if( json['_property'] is List ){
            json['_property'].forEach((i){
              this.extProperty.add(FHIRObjectFactory.buildFromJSON('Element', i));
            });
          } else {
            // this handles the case when the list only has one object and does not return as a list
            var i = json['_property'];
            this.extProperty.add(FHIRObjectFactory.buildFromJSON('Element', i));
          }          
        }
    }
}
