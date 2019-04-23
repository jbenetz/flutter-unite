import 'meta.dart';
import 'fhir_object_factory.dart';
import 'element.dart';
import 'narrative.dart';
import 'extension.dart';
import 'identifier.dart';
import 'reference.dart';
import 'codeable_concept.dart';
import 'attachment.dart';
import 'contact_point.dart';
import 'healthcare_service_eligibility.dart';
import 'healthcare_service_available_time.dart';
import 'healthcare_service_not_available.dart';
/// The details of a healthcare service available at a location.
class HealthcareService {
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
    /// External identifiers for this item.
    List<Identifier> identifier;
    /// This flag is used to mark the record to not be used. This is not used when a center is closed for maintenance, or for holidays, the notAvailable period is to be used for this.
    bool active;
    /// Extensions for active
    Element extActive;
    /// The organization that provides this healthcare service.
    Reference providedBy;
    /// Identifies the broad category of service being performed or delivered.
    List<CodeableConcept> category;
    /// The specific type of service that may be delivered or performed.
    List<CodeableConcept> type;
    /// Collection of specialties handled by the service site. This is more of a medical term.
    List<CodeableConcept> specialty;
    /// The location(s) where this healthcare service may be provided.
    List<Reference> location;
    /// Further description of the service as it would be presented to a consumer while searching.
    String name;
    /// Extensions for name
    Element extName;
    /// Any additional description of the service and/or any specific issues not covered by the other attributes, which can be displayed as further detail under the serviceName.
    String comment;
    /// Extensions for comment
    Element extComment;
    /// Extra details about the service that can't be placed in the other fields.
    String extraDetails;
    /// Extensions for extraDetails
    Element extExtraDetails;
    /// If there is a photo/symbol associated with this HealthcareService, it may be included here to facilitate quick identification of the service in a list.
    Attachment photo;
    /// List of contacts related to this specific healthcare service.
    List<ContactPoint> telecom;
    /// The location(s) that this service is available to (not where the service is provided).
    List<Reference> coverageArea;
    /// The code(s) that detail the conditions under which the healthcare service is available/offered.
    List<CodeableConcept> serviceProvisionCode;
    /// Does this service have specific eligibility requirements that need to be met in order to use the service?
    List<HealthcareServiceEligibility> eligibility;
    /// Programs that this service is applicable to.
    List<CodeableConcept> program;
    /// Collection of characteristics (attributes).
    List<CodeableConcept> characteristic;
    /// Some services are specifically made available in multiple languages, this property permits a directory to declare the languages this is offered in. Typically this is only provided where a service operates in communities with mixed languages used.
    List<CodeableConcept> communication;
    /// Ways that the service accepts referrals, if this is not provided then it is implied that no referral is required.
    List<CodeableConcept> referralMethod;
    /// Indicates whether or not a prospective consumer will require an appointment for a particular service at a site to be provided by the Organization. Indicates if an appointment is required for access to this service.
    bool appointmentRequired;
    /// Extensions for appointmentRequired
    Element extAppointmentRequired;
    /// A collection of times that the Service Site is available.
    List<HealthcareServiceAvailableTime> availableTime;
    /// The HealthcareService is not available during this period of time due to the provided reason.
    List<HealthcareServiceNotAvailable> notAvailable;
    /// A description of site availability exceptions, e.g. public holiday availability. Succinctly describing all possible exceptions to normal site availability as details in the available Times and not available Times.
    String availabilityExceptions;
    /// Extensions for availabilityExceptions
    Element extAvailabilityExceptions;
    /// Technical endpoints providing access to services operated for the specific healthcare services defined at this resource.
    List<Reference> endpoint;
 
    HealthcareService.fromJSON( Map json ){
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
        this.providedBy = json['providedBy'] == null ? null : FHIRObjectFactory.buildFromJSON('Reference', json['providedBy']);
        this.category = List<CodeableConcept>();
        if (json['category'] != null && json['category'].length > 0) {
          if( json['category'] is List ){
            json['category'].forEach((i){
              this.category.add(FHIRObjectFactory.buildFromJSON('CodeableConcept', i));
            });
          } else {
            // this handles the case when the list only has one object and does not return as a list
            var i = json['category'];
            this.category.add(FHIRObjectFactory.buildFromJSON('CodeableConcept', i));
          }          
        }
        this.type = List<CodeableConcept>();
        if (json['type'] != null && json['type'].length > 0) {
          if( json['type'] is List ){
            json['type'].forEach((i){
              this.type.add(FHIRObjectFactory.buildFromJSON('CodeableConcept', i));
            });
          } else {
            // this handles the case when the list only has one object and does not return as a list
            var i = json['type'];
            this.type.add(FHIRObjectFactory.buildFromJSON('CodeableConcept', i));
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
        this.name = json['name'];
        this.extName = json['_name'] == null ? null : FHIRObjectFactory.buildFromJSON('Element', json['_name']);
        this.comment = json['comment'];
        this.extComment = json['_comment'] == null ? null : FHIRObjectFactory.buildFromJSON('Element', json['_comment']);
        this.extraDetails = json['extraDetails'];
        this.extExtraDetails = json['_extraDetails'] == null ? null : FHIRObjectFactory.buildFromJSON('Element', json['_extraDetails']);
        this.photo = json['photo'] == null ? null : FHIRObjectFactory.buildFromJSON('Attachment', json['photo']);
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
        this.coverageArea = List<Reference>();
        if (json['coverageArea'] != null && json['coverageArea'].length > 0) {
          if( json['coverageArea'] is List ){
            json['coverageArea'].forEach((i){
              this.coverageArea.add(FHIRObjectFactory.buildFromJSON('Reference', i));
            });
          } else {
            // this handles the case when the list only has one object and does not return as a list
            var i = json['coverageArea'];
            this.coverageArea.add(FHIRObjectFactory.buildFromJSON('Reference', i));
          }          
        }
        this.serviceProvisionCode = List<CodeableConcept>();
        if (json['serviceProvisionCode'] != null && json['serviceProvisionCode'].length > 0) {
          if( json['serviceProvisionCode'] is List ){
            json['serviceProvisionCode'].forEach((i){
              this.serviceProvisionCode.add(FHIRObjectFactory.buildFromJSON('CodeableConcept', i));
            });
          } else {
            // this handles the case when the list only has one object and does not return as a list
            var i = json['serviceProvisionCode'];
            this.serviceProvisionCode.add(FHIRObjectFactory.buildFromJSON('CodeableConcept', i));
          }          
        }
        this.eligibility = List<HealthcareServiceEligibility>();
        if (json['eligibility'] != null && json['eligibility'].length > 0) {
          if( json['eligibility'] is List ){
            json['eligibility'].forEach((i){
              this.eligibility.add(FHIRObjectFactory.buildFromJSON('HealthcareServiceEligibility', i));
            });
          } else {
            // this handles the case when the list only has one object and does not return as a list
            var i = json['eligibility'];
            this.eligibility.add(FHIRObjectFactory.buildFromJSON('HealthcareServiceEligibility', i));
          }          
        }
        this.program = List<CodeableConcept>();
        if (json['program'] != null && json['program'].length > 0) {
          if( json['program'] is List ){
            json['program'].forEach((i){
              this.program.add(FHIRObjectFactory.buildFromJSON('CodeableConcept', i));
            });
          } else {
            // this handles the case when the list only has one object and does not return as a list
            var i = json['program'];
            this.program.add(FHIRObjectFactory.buildFromJSON('CodeableConcept', i));
          }          
        }
        this.characteristic = List<CodeableConcept>();
        if (json['characteristic'] != null && json['characteristic'].length > 0) {
          if( json['characteristic'] is List ){
            json['characteristic'].forEach((i){
              this.characteristic.add(FHIRObjectFactory.buildFromJSON('CodeableConcept', i));
            });
          } else {
            // this handles the case when the list only has one object and does not return as a list
            var i = json['characteristic'];
            this.characteristic.add(FHIRObjectFactory.buildFromJSON('CodeableConcept', i));
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
        this.referralMethod = List<CodeableConcept>();
        if (json['referralMethod'] != null && json['referralMethod'].length > 0) {
          if( json['referralMethod'] is List ){
            json['referralMethod'].forEach((i){
              this.referralMethod.add(FHIRObjectFactory.buildFromJSON('CodeableConcept', i));
            });
          } else {
            // this handles the case when the list only has one object and does not return as a list
            var i = json['referralMethod'];
            this.referralMethod.add(FHIRObjectFactory.buildFromJSON('CodeableConcept', i));
          }          
        }
        this.appointmentRequired = json['appointmentRequired'];
        this.extAppointmentRequired = json['_appointmentRequired'] == null ? null : FHIRObjectFactory.buildFromJSON('Element', json['_appointmentRequired']);
        this.availableTime = List<HealthcareServiceAvailableTime>();
        if (json['availableTime'] != null && json['availableTime'].length > 0) {
          if( json['availableTime'] is List ){
            json['availableTime'].forEach((i){
              this.availableTime.add(FHIRObjectFactory.buildFromJSON('HealthcareServiceAvailableTime', i));
            });
          } else {
            // this handles the case when the list only has one object and does not return as a list
            var i = json['availableTime'];
            this.availableTime.add(FHIRObjectFactory.buildFromJSON('HealthcareServiceAvailableTime', i));
          }          
        }
        this.notAvailable = List<HealthcareServiceNotAvailable>();
        if (json['notAvailable'] != null && json['notAvailable'].length > 0) {
          if( json['notAvailable'] is List ){
            json['notAvailable'].forEach((i){
              this.notAvailable.add(FHIRObjectFactory.buildFromJSON('HealthcareServiceNotAvailable', i));
            });
          } else {
            // this handles the case when the list only has one object and does not return as a list
            var i = json['notAvailable'];
            this.notAvailable.add(FHIRObjectFactory.buildFromJSON('HealthcareServiceNotAvailable', i));
          }          
        }
        this.availabilityExceptions = json['availabilityExceptions'];
        this.extAvailabilityExceptions = json['_availabilityExceptions'] == null ? null : FHIRObjectFactory.buildFromJSON('Element', json['_availabilityExceptions']);
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
