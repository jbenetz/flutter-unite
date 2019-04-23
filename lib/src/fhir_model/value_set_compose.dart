import 'extension.dart';
import 'fhir_object_factory.dart';
import 'element.dart';
import 'value_set_include.dart';
/// A ValueSet resource instance specifies a set of codes drawn from one or more code systems, intended for use in a particular context. Value sets link between [[[CodeSystem]]] definitions and their use in [coded elements](terminologies.html).
class ValueSetCompose {
    /// Unique id for the element within a resource (for internal references). This may be any string value that does not contain spaces.
    String id;
    /// May be used to represent additional information that is not part of the basic definition of the element. To make the use of extensions safe and manageable, there is a strict set of governance  applied to the definition and use of extensions. Though any implementer can define an extension, there is a set of requirements that SHALL be met as part of the definition of the extension.
    List<Extension> extension;
    /// May be used to represent additional information that is not part of the basic definition of the element and that modifies the understanding of the element in which it is contained and/or the understanding of the containing element's descendants. Usually modifier elements provide negation or qualification. To make the use of extensions safe and manageable, there is a strict set of governance applied to the definition and use of extensions. Though any implementer can define an extension, there is a set of requirements that SHALL be met as part of the definition of the extension. Applications processing a resource are required to check for modifier extensions.
    /// 
    /// Modifier extensions SHALL NOT change the meaning of any elements on Resource or DomainResource (including cannot change the meaning of modifierExtension itself).
    List<Extension> modifierExtension;
    /// The Locked Date is  the effective date that is used to determine the version of all referenced Code Systems and Value Set Definitions included in the compose that are not already tied to a specific version.
    DateTime lockedDate;
    /// Extensions for lockedDate
    Element extLockedDate;
    /// Whether inactive codes - codes that are not approved for current use - are in the value set. If inactive = true, inactive codes are to be included in the expansion, if inactive = false, the inactive codes will not be included in the expansion. If absent, the behavior is determined by the implementation, or by the applicable $expand parameters (but generally, inactive codes would be expected to be included).
    bool inactive;
    /// Extensions for inactive
    Element extInactive;
    /// Include one or more codes from a code system or other value set(s).
    List<ValueSetInclude> include;
    /// Exclude one or more codes from the value set based on code system filters and/or other value sets.
    List<ValueSetInclude> exclude;
 
    ValueSetCompose.fromJSON( Map json ){
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
        if( json['lockedDate'] != null ) { this.lockedDate = DateTime.parse(json['lockedDate']);}
        this.extLockedDate = json['_lockedDate'] == null ? null : FHIRObjectFactory.buildFromJSON('Element', json['_lockedDate']);
        this.inactive = json['inactive'];
        this.extInactive = json['_inactive'] == null ? null : FHIRObjectFactory.buildFromJSON('Element', json['_inactive']);
        this.include = List<ValueSetInclude>();
        if (json['include'] != null && json['include'].length > 0) {
          if( json['include'] is List ){
            json['include'].forEach((i){
              this.include.add(FHIRObjectFactory.buildFromJSON('ValueSetInclude', i));
            });
          } else {
            // this handles the case when the list only has one object and does not return as a list
            var i = json['include'];
            this.include.add(FHIRObjectFactory.buildFromJSON('ValueSetInclude', i));
          }          
        }
        this.exclude = List<ValueSetInclude>();
        if (json['exclude'] != null && json['exclude'].length > 0) {
          if( json['exclude'] is List ){
            json['exclude'].forEach((i){
              this.exclude.add(FHIRObjectFactory.buildFromJSON('ValueSetInclude', i));
            });
          } else {
            // this handles the case when the list only has one object and does not return as a list
            var i = json['exclude'];
            this.exclude.add(FHIRObjectFactory.buildFromJSON('ValueSetInclude', i));
          }          
        }
    }
}
