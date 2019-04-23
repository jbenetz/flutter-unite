import 'meta.dart';
import 'fhir_object_factory.dart';
import 'element.dart';
import 'narrative.dart';
import 'extension.dart';
import 'identifier.dart';
import 'reference.dart';
import 'period.dart';
import 'coverage_eligibility_response_insurance.dart';
import 'codeable_concept.dart';
import 'coverage_eligibility_response_error.dart';
/// This resource provides eligibility and plan details from the processing of an CoverageEligibilityRequest resource.
class CoverageEligibilityResponse {
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
    /// A unique identifier assigned to this coverage eligiblity request.
    List<Identifier> identifier;
    /// The status of the resource instance.
    String status;
    /// Extensions for status
    Element extStatus;
    /// Extensions for purpose
    List<Element> extPurpose;
    /// The party who is the beneficiary of the supplied coverage and for whom eligibility is sought.
    Reference patient;
    /// Extensions for servicedDate
    Element extServicedDate;
    /// The date or dates when the enclosed suite of services were performed or completed.
    Period servicedPeriod;
    /// The date this resource was created.
    DateTime created;
    /// Extensions for created
    Element extCreated;
    /// The provider which is responsible for the request.
    Reference requestor;
    /// Reference to the original request resource.
    Reference request;
    /// The outcome of the request processing.
    String outcome;
    /// Extensions for outcome
    Element extOutcome;
    /// A human readable description of the status of the adjudication.
    String disposition;
    /// Extensions for disposition
    Element extDisposition;
    /// The Insurer who issued the coverage in question and is the author of the response.
    Reference insurer;
    /// Financial instruments for reimbursement for the health care products and services.
    List<CoverageEligibilityResponseInsurance> insurance;
    /// A reference from the Insurer to which these services pertain to be used on further communication and as proof that the request occurred.
    String preAuthRef;
    /// Extensions for preAuthRef
    Element extPreAuthRef;
    /// A code for the form to be used for printing the content.
    CodeableConcept form;
    /// Errors encountered during the processing of the request.
    List<CoverageEligibilityResponseError> error;
 
    CoverageEligibilityResponse.fromJSON( Map json ){
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
        this.status = json['status'];
        this.extStatus = json['_status'] == null ? null : FHIRObjectFactory.buildFromJSON('Element', json['_status']);
        this.extPurpose = List<Element>();
        if (json['_purpose'] != null && json['_purpose'].length > 0) {
          if( json['_purpose'] is List ){
            json['_purpose'].forEach((i){
              this.extPurpose.add(FHIRObjectFactory.buildFromJSON('Element', i));
            });
          } else {
            // this handles the case when the list only has one object and does not return as a list
            var i = json['_purpose'];
            this.extPurpose.add(FHIRObjectFactory.buildFromJSON('Element', i));
          }          
        }
        this.patient = json['patient'] == null ? null : FHIRObjectFactory.buildFromJSON('Reference', json['patient']);
        this.extServicedDate = json['_servicedDate'] == null ? null : FHIRObjectFactory.buildFromJSON('Element', json['_servicedDate']);
        this.servicedPeriod = json['servicedPeriod'] == null ? null : FHIRObjectFactory.buildFromJSON('Period', json['servicedPeriod']);
        if( json['created'] != null ) { this.created = DateTime.parse(json['created']);}
        this.extCreated = json['_created'] == null ? null : FHIRObjectFactory.buildFromJSON('Element', json['_created']);
        this.requestor = json['requestor'] == null ? null : FHIRObjectFactory.buildFromJSON('Reference', json['requestor']);
        this.request = json['request'] == null ? null : FHIRObjectFactory.buildFromJSON('Reference', json['request']);
        this.outcome = json['outcome'];
        this.extOutcome = json['_outcome'] == null ? null : FHIRObjectFactory.buildFromJSON('Element', json['_outcome']);
        this.disposition = json['disposition'];
        this.extDisposition = json['_disposition'] == null ? null : FHIRObjectFactory.buildFromJSON('Element', json['_disposition']);
        this.insurer = json['insurer'] == null ? null : FHIRObjectFactory.buildFromJSON('Reference', json['insurer']);
        this.insurance = List<CoverageEligibilityResponseInsurance>();
        if (json['insurance'] != null && json['insurance'].length > 0) {
          if( json['insurance'] is List ){
            json['insurance'].forEach((i){
              this.insurance.add(FHIRObjectFactory.buildFromJSON('CoverageEligibilityResponseInsurance', i));
            });
          } else {
            // this handles the case when the list only has one object and does not return as a list
            var i = json['insurance'];
            this.insurance.add(FHIRObjectFactory.buildFromJSON('CoverageEligibilityResponseInsurance', i));
          }          
        }
        this.preAuthRef = json['preAuthRef'];
        this.extPreAuthRef = json['_preAuthRef'] == null ? null : FHIRObjectFactory.buildFromJSON('Element', json['_preAuthRef']);
        this.form = json['form'] == null ? null : FHIRObjectFactory.buildFromJSON('CodeableConcept', json['form']);
        this.error = List<CoverageEligibilityResponseError>();
        if (json['error'] != null && json['error'].length > 0) {
          if( json['error'] is List ){
            json['error'].forEach((i){
              this.error.add(FHIRObjectFactory.buildFromJSON('CoverageEligibilityResponseError', i));
            });
          } else {
            // this handles the case when the list only has one object and does not return as a list
            var i = json['error'];
            this.error.add(FHIRObjectFactory.buildFromJSON('CoverageEligibilityResponseError', i));
          }          
        }
    }
}
