import 'extension.dart';
import 'fhir_object_factory.dart';
import 'element.dart';
import 'value_set_parameter.dart';
import 'value_set_contains.dart';
/// A ValueSet resource instance specifies a set of codes drawn from one or more code systems, intended for use in a particular context. Value sets link between [[[CodeSystem]]] definitions and their use in [coded elements](terminologies.html).
class ValueSetExpansion {
    /// Unique id for the element within a resource (for internal references). This may be any string value that does not contain spaces.
    String id;
    /// May be used to represent additional information that is not part of the basic definition of the element. To make the use of extensions safe and manageable, there is a strict set of governance  applied to the definition and use of extensions. Though any implementer can define an extension, there is a set of requirements that SHALL be met as part of the definition of the extension.
    List<Extension> extension;
    /// May be used to represent additional information that is not part of the basic definition of the element and that modifies the understanding of the element in which it is contained and/or the understanding of the containing element's descendants. Usually modifier elements provide negation or qualification. To make the use of extensions safe and manageable, there is a strict set of governance applied to the definition and use of extensions. Though any implementer can define an extension, there is a set of requirements that SHALL be met as part of the definition of the extension. Applications processing a resource are required to check for modifier extensions.
    /// 
    /// Modifier extensions SHALL NOT change the meaning of any elements on Resource or DomainResource (including cannot change the meaning of modifierExtension itself).
    List<Extension> modifierExtension;
    /// An identifier that uniquely identifies this expansion of the valueset, based on a unique combination of the provided parameters, the system default parameters, and the underlying system code system versions etc. Systems may re-use the same identifier as long as those factors remain the same, and the expansion is the same, but are not required to do so. This is a business identifier.
    String identifier;
    /// Extensions for identifier
    Element extIdentifier;
    /// The time at which the expansion was produced by the expanding system.
    DateTime timestamp;
    /// Extensions for timestamp
    Element extTimestamp;
    /// The total number of concepts in the expansion. If the number of concept nodes in this resource is less than the stated number, then the server can return more using the offset parameter.
    int total;
    /// Extensions for total
    Element extTotal;
    /// If paging is being used, the offset at which this resource starts.  I.e. this resource is a partial view into the expansion. If paging is not being used, this element SHALL NOT be present.
    int offset;
    /// Extensions for offset
    Element extOffset;
    /// A parameter that controlled the expansion process. These parameters may be used by users of expanded value sets to check whether the expansion is suitable for a particular purpose, or to pick the correct expansion.
    List<ValueSetParameter> parameter;
    /// The codes that are contained in the value set expansion.
    List<ValueSetContains> contains;
 
    ValueSetExpansion.fromJSON( Map json ){
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
        this.identifier = json['identifier'];
        this.extIdentifier = json['_identifier'] == null ? null : FHIRObjectFactory.buildFromJSON('Element', json['_identifier']);
        if( json['timestamp'] != null ) { this.timestamp = DateTime.parse(json['timestamp']);}
        this.extTimestamp = json['_timestamp'] == null ? null : FHIRObjectFactory.buildFromJSON('Element', json['_timestamp']);
        this.total = json['total'];
        this.extTotal = json['_total'] == null ? null : FHIRObjectFactory.buildFromJSON('Element', json['_total']);
        this.offset = json['offset'];
        this.extOffset = json['_offset'] == null ? null : FHIRObjectFactory.buildFromJSON('Element', json['_offset']);
        this.parameter = List<ValueSetParameter>();
        if (json['parameter'] != null && json['parameter'].length > 0) {
          if( json['parameter'] is List ){
            json['parameter'].forEach((i){
              this.parameter.add(FHIRObjectFactory.buildFromJSON('ValueSetParameter', i));
            });
          } else {
            // this handles the case when the list only has one object and does not return as a list
            var i = json['parameter'];
            this.parameter.add(FHIRObjectFactory.buildFromJSON('ValueSetParameter', i));
          }          
        }
        this.contains = List<ValueSetContains>();
        if (json['contains'] != null && json['contains'].length > 0) {
          if( json['contains'] is List ){
            json['contains'].forEach((i){
              this.contains.add(FHIRObjectFactory.buildFromJSON('ValueSetContains', i));
            });
          } else {
            // this handles the case when the list only has one object and does not return as a list
            var i = json['contains'];
            this.contains.add(FHIRObjectFactory.buildFromJSON('ValueSetContains', i));
          }          
        }
    }
}
