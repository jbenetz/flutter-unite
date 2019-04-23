import 'extension.dart';
import 'fhir_object_factory.dart';
import 'element.dart';
import 'value_set_concept.dart';
import 'value_set_filter.dart';
/// A ValueSet resource instance specifies a set of codes drawn from one or more code systems, intended for use in a particular context. Value sets link between [[[CodeSystem]]] definitions and their use in [coded elements](terminologies.html).
class ValueSetInclude {
    /// Unique id for the element within a resource (for internal references). This may be any string value that does not contain spaces.
    String id;
    /// May be used to represent additional information that is not part of the basic definition of the element. To make the use of extensions safe and manageable, there is a strict set of governance  applied to the definition and use of extensions. Though any implementer can define an extension, there is a set of requirements that SHALL be met as part of the definition of the extension.
    List<Extension> extension;
    /// May be used to represent additional information that is not part of the basic definition of the element and that modifies the understanding of the element in which it is contained and/or the understanding of the containing element's descendants. Usually modifier elements provide negation or qualification. To make the use of extensions safe and manageable, there is a strict set of governance applied to the definition and use of extensions. Though any implementer can define an extension, there is a set of requirements that SHALL be met as part of the definition of the extension. Applications processing a resource are required to check for modifier extensions.
    /// 
    /// Modifier extensions SHALL NOT change the meaning of any elements on Resource or DomainResource (including cannot change the meaning of modifierExtension itself).
    List<Extension> modifierExtension;
    /// An absolute URI which is the code system from which the selected codes come from.
    String system;
    /// Extensions for system
    Element extSystem;
    /// The version of the code system that the codes are selected from, or the special version '*' for all versions.
    String version;
    /// Extensions for version
    Element extVersion;
    /// Specifies a concept to be included or excluded.
    List<ValueSetConcept> concept;
    /// Select concepts by specify a matching criterion based on the properties (including relationships) defined by the system, or on filters defined by the system. If multiple filters are specified, they SHALL all be true.
    List<ValueSetFilter> filter;
    /// Selects the concepts found in this value set (based on its value set definition). This is an absolute URI that is a reference to ValueSet.url.  If multiple value sets are specified this includes the union of the contents of all of the referenced value sets.
    List<String> valueSet;
 
    ValueSetInclude.fromJSON( Map json ){
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
        this.system = json['system'];
        this.extSystem = json['_system'] == null ? null : FHIRObjectFactory.buildFromJSON('Element', json['_system']);
        this.version = json['version'];
        this.extVersion = json['_version'] == null ? null : FHIRObjectFactory.buildFromJSON('Element', json['_version']);
        this.concept = List<ValueSetConcept>();
        if (json['concept'] != null && json['concept'].length > 0) {
          if( json['concept'] is List ){
            json['concept'].forEach((i){
              this.concept.add(FHIRObjectFactory.buildFromJSON('ValueSetConcept', i));
            });
          } else {
            // this handles the case when the list only has one object and does not return as a list
            var i = json['concept'];
            this.concept.add(FHIRObjectFactory.buildFromJSON('ValueSetConcept', i));
          }          
        }
        this.filter = List<ValueSetFilter>();
        if (json['filter'] != null && json['filter'].length > 0) {
          if( json['filter'] is List ){
            json['filter'].forEach((i){
              this.filter.add(FHIRObjectFactory.buildFromJSON('ValueSetFilter', i));
            });
          } else {
            // this handles the case when the list only has one object and does not return as a list
            var i = json['filter'];
            this.filter.add(FHIRObjectFactory.buildFromJSON('ValueSetFilter', i));
          }          
        }
        this.valueSet = List<String>();
        if (json['valueSet'] != null && json['valueSet'].length > 0) {
          if( json['valueSet'] is List ){
            json['valueSet'].forEach((i){
              this.valueSet.add(i);
            });
          } else {
            // this handles the case when the list only has one object and does not return as a list
            var i = json['valueSet'];
            this.valueSet.add(i);
          }          
        }
    }
}
