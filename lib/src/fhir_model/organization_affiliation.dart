import 'meta.dart';
import 'fhir_object_factory.dart';
import 'element.dart';
import 'narrative.dart';
import 'extension.dart';
import 'identifier.dart';
import 'period.dart';
import 'reference.dart';
import 'codeable_concept.dart';
import 'contact_point.dart';
/// Defines an affiliation/assotiation/relationship between 2 distinct oganizations, that is not a part-of relationship/sub-division relationship.
class OrganizationAffiliation {
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
    /// Business identifiers that are specific to this role.
    List<Identifier> identifier;
    /// Whether this organization affiliation record is in active use.
    bool active;
    /// Extensions for active
    Element extActive;
    /// The period during which the participatingOrganization is affiliated with the primary organization.
    Period period;
    /// Organization where the role is available (primary organization/has members).
    Reference organization;
    /// The Participating Organization provides/performs the role(s) defined by the code to the Primary Organization (e.g. providing services or is a member of).
    Reference participatingOrganization;
    /// Health insurance provider network in which the participatingOrganization provides the role's services (if defined) at the indicated locations (if defined).
    List<Reference> network;
    /// Definition of the role the participatingOrganization plays in the association.
    List<CodeableConcept> code;
    /// Specific specialty of the participatingOrganization in the context of the role.
    List<CodeableConcept> specialty;
    /// The location(s) at which the role occurs.
    List<Reference> location;
    /// Healthcare services provided through the role.
    List<Reference> healthcareService;
    /// Contact details at the participatingOrganization relevant to this Affiliation.
    List<ContactPoint> telecom;
    /// Technical endpoints providing access to services operated for this role.
    List<Reference> endpoint;
 
    OrganizationAffiliation.fromJSON( Map json ){
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
        this.period = json['period'] == null ? null : FHIRObjectFactory.buildFromJSON('Period', json['period']);
        this.organization = json['organization'] == null ? null : FHIRObjectFactory.buildFromJSON('Reference', json['organization']);
        this.participatingOrganization = json['participatingOrganization'] == null ? null : FHIRObjectFactory.buildFromJSON('Reference', json['participatingOrganization']);
        this.network = List<Reference>();
        if (json['network'] != null && json['network'].length > 0) {
          if( json['network'] is List ){
            json['network'].forEach((i){
              this.network.add(FHIRObjectFactory.buildFromJSON('Reference', i));
            });
          } else {
            // this handles the case when the list only has one object and does not return as a list
            var i = json['network'];
            this.network.add(FHIRObjectFactory.buildFromJSON('Reference', i));
          }          
        }
        this.code = List<CodeableConcept>();
        if (json['code'] != null && json['code'].length > 0) {
          if( json['code'] is List ){
            json['code'].forEach((i){
              this.code.add(FHIRObjectFactory.buildFromJSON('CodeableConcept', i));
            });
          } else {
            // this handles the case when the list only has one object and does not return as a list
            var i = json['code'];
            this.code.add(FHIRObjectFactory.buildFromJSON('CodeableConcept', i));
          }          
        }
        this.specialty = List<CodeableConcept>();
        if (json['specialty'] != null && json['specialty'].length > 0) {
          if( json['specialty'] is List ){
            json['specialty'].forEach((i){
              this.specialty.add(FHIRObjectFactory.buildFromJSON('CodeableConcept', i));
            });
          } else {
            // this handles the case when the list only has one object and does not return as a list
            var i = json['specialty'];
            this.specialty.add(FHIRObjectFactory.buildFromJSON('CodeableConcept', i));
          }          
        }
        this.location = List<Reference>();
        if (json['location'] != null && json['location'].length > 0) {
          if( json['location'] is List ){
            json['location'].forEach((i){
              this.location.add(FHIRObjectFactory.buildFromJSON('Reference', i));
            });
          } else {
            // this handles the case when the list only has one object and does not return as a list
            var i = json['location'];
            this.location.add(FHIRObjectFactory.buildFromJSON('Reference', i));
          }          
        }
        this.healthcareService = List<Reference>();
        if (json['healthcareService'] != null && json['healthcareService'].length > 0) {
          if( json['healthcareService'] is List ){
            json['healthcareService'].forEach((i){
              this.healthcareService.add(FHIRObjectFactory.buildFromJSON('Reference', i));
            });
          } else {
            // this handles the case when the list only has one object and does not return as a list
            var i = json['healthcareService'];
            this.healthcareService.add(FHIRObjectFactory.buildFromJSON('Reference', i));
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
        this.endpoint = List<Reference>();
        if (json['endpoint'] != null && json['endpoint'].length > 0) {
          if( json['endpoint'] is List ){
            json['endpoint'].forEach((i){
              this.endpoint.add(FHIRObjectFactory.buildFromJSON('Reference', i));
            });
          } else {
            // this handles the case when the list only has one object and does not return as a list
            var i = json['endpoint'];
            this.endpoint.add(FHIRObjectFactory.buildFromJSON('Reference', i));
          }          
        }
    }
}
