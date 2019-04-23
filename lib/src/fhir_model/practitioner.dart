import 'meta.dart';
import 'fhir_object_factory.dart';
import 'element.dart';
import 'narrative.dart';
import 'extension.dart';
import 'identifier.dart';
import 'human_name.dart';
import 'contact_point.dart';
import 'address.dart';
import 'attachment.dart';
import 'practitioner_qualification.dart';
import 'codeable_concept.dart';
/// A person who is directly or indirectly involved in the provisioning of healthcare.
class Practitioner {
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
    /// An identifier that applies to this person in this role.
    List<Identifier> identifier;
    /// Whether this practitioner's record is in active use.
    bool active;
    /// Extensions for active
    Element extActive;
    /// The name(s) associated with the practitioner.
    List<HumanName> name;
    /// A contact detail for the practitioner, e.g. a telephone number or an email address.
    List<ContactPoint> telecom;
    /// Address(es) of the practitioner that are not role specific (typically home address). 
    /// Work addresses are not typically entered in this property as they are usually role dependent.
    List<Address> address;
    /// Administrative Gender - the gender that the person is considered to have for administration and record keeping purposes.
    String gender;
    /// Extensions for gender
    Element extGender;
    /// The date of birth for the practitioner.
    DateTime birthDate;
    /// Extensions for birthDate
    Element extBirthDate;
    /// Image of the person.
    List<Attachment> photo;
    /// The official certifications, training, and licenses that authorize or otherwise pertain to the provision of care by the practitioner.  For example, a medical license issued by a medical board authorizing the practitioner to practice medicine within a certian locality.
    List<PractitionerQualification> qualification;
    /// A language the practitioner can use in patient communication.
    List<CodeableConcept> communication;
 
    Practitioner.fromJSON( Map json ){
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
        this.name = List<HumanName>();
        if (json['name'] != null && json['name'].length > 0) {
          if( json['name'] is List ){
            json['name'].forEach((i){
              this.name.add(FHIRObjectFactory.buildFromJSON('HumanName', i));
            });
          } else {
            // this handles the case when the list only has one object and does not return as a list
            var i = json['name'];
            this.name.add(FHIRObjectFactory.buildFromJSON('HumanName', i));
          }          
        }
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
        this.address = List<Address>();
        if (json['address'] != null && json['address'].length > 0) {
          if( json['address'] is List ){
            json['address'].forEach((i){
              this.address.add(FHIRObjectFactory.buildFromJSON('Address', i));
            });
          } else {
            // this handles the case when the list only has one object and does not return as a list
            var i = json['address'];
            this.address.add(FHIRObjectFactory.buildFromJSON('Address', i));
          }          
        }
        this.gender = json['gender'];
        this.extGender = json['_gender'] == null ? null : FHIRObjectFactory.buildFromJSON('Element', json['_gender']);
        if( json['birthDate'] != null ) { this.birthDate = DateTime.parse(json['birthDate']);}
        this.extBirthDate = json['_birthDate'] == null ? null : FHIRObjectFactory.buildFromJSON('Element', json['_birthDate']);
        this.photo = List<Attachment>();
        if (json['photo'] != null && json['photo'].length > 0) {
          if( json['photo'] is List ){
            json['photo'].forEach((i){
              this.photo.add(FHIRObjectFactory.buildFromJSON('Attachment', i));
            });
          } else {
            // this handles the case when the list only has one object and does not return as a list
            var i = json['photo'];
            this.photo.add(FHIRObjectFactory.buildFromJSON('Attachment', i));
          }          
        }
        this.qualification = List<PractitionerQualification>();
        if (json['qualification'] != null && json['qualification'].length > 0) {
          if( json['qualification'] is List ){
            json['qualification'].forEach((i){
              this.qualification.add(FHIRObjectFactory.buildFromJSON('PractitionerQualification', i));
            });
          } else {
            // this handles the case when the list only has one object and does not return as a list
            var i = json['qualification'];
            this.qualification.add(FHIRObjectFactory.buildFromJSON('PractitionerQualification', i));
          }          
        }
        this.communication = List<CodeableConcept>();
        if (json['communication'] != null && json['communication'].length > 0) {
          if( json['communication'] is List ){
            json['communication'].forEach((i){
              this.communication.add(FHIRObjectFactory.buildFromJSON('CodeableConcept', i));
            });
          } else {
            // this handles the case when the list only has one object and does not return as a list
            var i = json['communication'];
            this.communication.add(FHIRObjectFactory.buildFromJSON('CodeableConcept', i));
          }          
        }
    }
}
