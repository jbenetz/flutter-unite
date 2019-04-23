import 'extension.dart';
import 'fhir_object_factory.dart';
import 'codeable_concept.dart';
import 'human_name.dart';
import 'contact_point.dart';
import 'address.dart';
/// A formally or informally recognized grouping of people or organizations formed for the purpose of achieving some form of collective action.  Includes companies, institutions, corporations, departments, community groups, healthcare practice groups, payer/insurer, etc.
class OrganizationContact {
    /// Unique id for the element within a resource (for internal references). This may be any string value that does not contain spaces.
    String id;
    /// May be used to represent additional information that is not part of the basic definition of the element. To make the use of extensions safe and manageable, there is a strict set of governance  applied to the definition and use of extensions. Though any implementer can define an extension, there is a set of requirements that SHALL be met as part of the definition of the extension.
    List<Extension> extension;
    /// May be used to represent additional information that is not part of the basic definition of the element and that modifies the understanding of the element in which it is contained and/or the understanding of the containing element's descendants. Usually modifier elements provide negation or qualification. To make the use of extensions safe and manageable, there is a strict set of governance applied to the definition and use of extensions. Though any implementer can define an extension, there is a set of requirements that SHALL be met as part of the definition of the extension. Applications processing a resource are required to check for modifier extensions.
    /// 
    /// Modifier extensions SHALL NOT change the meaning of any elements on Resource or DomainResource (including cannot change the meaning of modifierExtension itself).
    List<Extension> modifierExtension;
    /// Indicates a purpose for which the contact can be reached.
    CodeableConcept purpose;
    /// A name associated with the contact.
    HumanName name;
    /// A contact detail (e.g. a telephone number or an email address) by which the party may be contacted.
    List<ContactPoint> telecom;
    /// Visiting or postal addresses for the contact.
    Address address;
 
    OrganizationContact.fromJSON( Map json ){
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
        this.purpose = json['purpose'] == null ? null : FHIRObjectFactory.buildFromJSON('CodeableConcept', json['purpose']);
        this.name = json['name'] == null ? null : FHIRObjectFactory.buildFromJSON('HumanName', json['name']);
        this.telecom = List<ContactPoint>();
        if (json['telecom'] != null && json['telecom'].length > 0) {
          if( json['telecom'] is List ){
            json['telecom'].forEach((i){
              this.telecom.add(FHIRObjectFactory.buildFromJSON('ContactPoint', i));
            });
          } else {
            // this handles the case when the list only has one object and does not return as a list
            var i = json['telecom'];
            this.telecom.add(FHIRObjectFactory.buildFromJSON('ContactPoint', i));
          }          
        }
        this.address = json['address'] == null ? null : FHIRObjectFactory.buildFromJSON('Address', json['address']);
    }
}
