import 'meta.dart';
import 'fhir_object_factory.dart';
import 'element.dart';
import 'narrative.dart';
import 'extension.dart';
import 'identifier.dart';
import 'codeable_concept.dart';
import 'reference.dart';
import 'group_characteristic.dart';
import 'group_member.dart';
/// Represents a defined collection of entities that may be discussed or acted upon collectively but which are not expected to act collectively, and are not formally or legally recognized; i.e. a collection of entities that isn't an Organization.
class Group {
    /// The logical id of the resource, as used in the URL for the resource. Once assigned, this value never changes.
    String id;
    /// The metadata about the resource. This is content that is maintained by the infrastructure. Changes to the content might not always be associated with version changes to the resource.
    Meta meta;
    /// A reference to a set of rules that were followed when the resource was constructed, and which must be understood when processing the content. Often, this is a reference to an implementation guide that defines the special rules along with other profiles etc.
    String implicitRules;
    /// Extensions for implicitRules
    Element extImplicitRules;
    /// The base language in which the resource is written.
    String language;
    /// Extensions for language
    Element extLanguage;
    /// A human-readable narrative that contains a summary of the resource and can be used to represent the content of the resource to a human. The narrative need not encode all the structured data, but is required to contain sufficient detail to make it "clinically safe" for a human to just read the narrative. Resource definitions may define what content should be represented in the narrative to ensure clinical safety.
    Narrative text;
    /// May be used to represent additional information that is not part of the basic definition of the resource. To make the use of extensions safe and manageable, there is a strict set of governance  applied to the definition and use of extensions. Though any implementer can define an extension, there is a set of requirements that SHALL be met as part of the definition of the extension.
    List<Extension> extension;
    /// May be used to represent additional information that is not part of the basic definition of the resource and that modifies the understanding of the element that contains it and/or the understanding of the containing element's descendants. Usually modifier elements provide negation or qualification. To make the use of extensions safe and manageable, there is a strict set of governance applied to the definition and use of extensions. Though any implementer is allowed to define an extension, there is a set of requirements that SHALL be met as part of the definition of the extension. Applications processing a resource are required to check for modifier extensions.
    /// 
    /// Modifier extensions SHALL NOT change the meaning of any elements on Resource or DomainResource (including cannot change the meaning of modifierExtension itself).
    List<Extension> modifierExtension;
    /// A unique business identifier for this group.
    List<Identifier> identifier;
    /// Indicates whether the record for the group is available for use or is merely being retained for historical purposes.
    bool active;
    /// Extensions for active
    Element extActive;
    /// Identifies the broad classification of the kind of resources the group includes.
    String type;
    /// Extensions for type
    Element extType;
    /// If true, indicates that the resource refers to a specific group of real individuals.  If false, the group defines a set of intended individuals.
    bool actual;
    /// Extensions for actual
    Element extActual;
    /// Provides a specific type of resource the group includes; e.g. "cow", "syringe", etc.
    CodeableConcept code;
    /// A label assigned to the group for human identification and communication.
    String name;
    /// Extensions for name
    Element extName;
    /// A count of the number of resource instances that are part of the group.
    int quantity;
    /// Extensions for quantity
    Element extQuantity;
    /// Entity responsible for defining and maintaining Group characteristics and/or registered members.
    Reference managingEntity;
    /// Identifies traits whose presence r absence is shared by members of the group.
    List<GroupCharacteristic> characteristic;
    /// Identifies the resource instances that are members of the group.
    List<GroupMember> member;
 
    Group.fromJSON( Map json ){
        this.id = json['id'];
        this.meta = json['meta'] == null ? null : FHIRObjectFactory.buildFromJSON('Meta', json['meta']);
        this.implicitRules = json['implicitRules'];
        this.extImplicitRules = json['_implicitRules'] == null ? null : FHIRObjectFactory.buildFromJSON('Element', json['_implicitRules']);
        this.language = json['language'];
        this.extLanguage = json['_language'] == null ? null : FHIRObjectFactory.buildFromJSON('Element', json['_language']);
        this.text = json['text'] == null ? null : FHIRObjectFactory.buildFromJSON('Narrative', json['text']);
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
        this.identifier = List<Identifier>();
        if (json['identifier'] != null && json['identifier'].length > 0) {
          if( json['identifier'] is List ){
            json['identifier'].forEach((i){
              this.identifier.add(FHIRObjectFactory.buildFromJSON('Identifier', i));
            });
          } else {
            // this handles the case when the list only has one object and does not return as a list
            var i = json['identifier'];
            this.identifier.add(FHIRObjectFactory.buildFromJSON('Identifier', i));
          }          
        }
        this.active = json['active'];
        this.extActive = json['_active'] == null ? null : FHIRObjectFactory.buildFromJSON('Element', json['_active']);
        this.type = json['type'];
        this.extType = json['_type'] == null ? null : FHIRObjectFactory.buildFromJSON('Element', json['_type']);
        this.actual = json['actual'];
        this.extActual = json['_actual'] == null ? null : FHIRObjectFactory.buildFromJSON('Element', json['_actual']);
        this.code = json['code'] == null ? null : FHIRObjectFactory.buildFromJSON('CodeableConcept', json['code']);
        this.name = json['name'];
        this.extName = json['_name'] == null ? null : FHIRObjectFactory.buildFromJSON('Element', json['_name']);
        this.quantity = json['quantity'];
        this.extQuantity = json['_quantity'] == null ? null : FHIRObjectFactory.buildFromJSON('Element', json['_quantity']);
        this.managingEntity = json['managingEntity'] == null ? null : FHIRObjectFactory.buildFromJSON('Reference', json['managingEntity']);
        this.characteristic = List<GroupCharacteristic>();
        if (json['characteristic'] != null && json['characteristic'].length > 0) {
          if( json['characteristic'] is List ){
            json['characteristic'].forEach((i){
              this.characteristic.add(FHIRObjectFactory.buildFromJSON('GroupCharacteristic', i));
            });
          } else {
            // this handles the case when the list only has one object and does not return as a list
            var i = json['characteristic'];
            this.characteristic.add(FHIRObjectFactory.buildFromJSON('GroupCharacteristic', i));
          }          
        }
        this.member = List<GroupMember>();
        if (json['member'] != null && json['member'].length > 0) {
          if( json['member'] is List ){
            json['member'].forEach((i){
              this.member.add(FHIRObjectFactory.buildFromJSON('GroupMember', i));
            });
          } else {
            // this handles the case when the list only has one object and does not return as a list
            var i = json['member'];
            this.member.add(FHIRObjectFactory.buildFromJSON('GroupMember', i));
          }          
        }
    }
}
