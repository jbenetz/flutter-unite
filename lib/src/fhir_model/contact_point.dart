import 'extension.dart';
import 'fhir_object_factory.dart';
import 'element.dart';
import 'period.dart';
/// Details for all kinds of technology mediated contact points for a person or organization, including telephone, email, etc.
class ContactPoint {
    /// Unique id for the element within a resource (for internal references). This may be any string value that does not contain spaces.
    String id;
    /// May be used to represent additional information that is not part of the basic definition of the element. To make the use of extensions safe and manageable, there is a strict set of governance  applied to the definition and use of extensions. Though any implementer can define an extension, there is a set of requirements that SHALL be met as part of the definition of the extension.
    List<Extension> extension;
    /// Telecommunications form for contact point - what communications system is required to make use of the contact.
    String system;
    /// Extensions for system
    Element extSystem;
    /// The actual contact point details, in a form that is meaningful to the designated communication system (i.e. phone number or email address).
    String value;
    /// Extensions for value
    Element extValue;
    /// Identifies the purpose for the contact point.
    String use;
    /// Extensions for use
    Element extUse;
    /// Specifies a preferred order in which to use a set of contacts. ContactPoints with lower rank values are more preferred than those with higher rank values.
    int rank;
    /// Extensions for rank
    Element extRank;
    /// Time period when the contact point was/is in use.
    Period period;
 
    ContactPoint.fromJSON( Map json ){
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
        this.system = json['system'];
        this.extSystem = json['_system'] == null ? null : FHIRObjectFactory.buildFromJSON('Element', json['_system']);
        this.value = json['value'];
        this.extValue = json['_value'] == null ? null : FHIRObjectFactory.buildFromJSON('Element', json['_value']);
        this.use = json['use'];
        this.extUse = json['_use'] == null ? null : FHIRObjectFactory.buildFromJSON('Element', json['_use']);
        this.rank = json['rank'];
        this.extRank = json['_rank'] == null ? null : FHIRObjectFactory.buildFromJSON('Element', json['_rank']);
        this.period = json['period'] == null ? null : FHIRObjectFactory.buildFromJSON('Period', json['period']);
    }
}
