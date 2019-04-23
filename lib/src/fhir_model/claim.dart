import 'meta.dart';
import 'fhir_object_factory.dart';
import 'element.dart';
import 'narrative.dart';
import 'extension.dart';
import 'identifier.dart';
import 'codeable_concept.dart';
import 'reference.dart';
import 'period.dart';
import 'claim_related.dart';
import 'claim_payee.dart';
import 'claim_care_team.dart';
import 'claim_supporting_info.dart';
import 'claim_diagnosis.dart';
import 'claim_procedure.dart';
import 'claim_insurance.dart';
import 'claim_accident.dart';
import 'claim_item.dart';
import 'money.dart';
/// A provider issued list of professional services and products which have been provided, or are to be provided, to a patient which is sent to an insurer for reimbursement.
class Claim {
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
    /// A unique identifier assigned to this claim.
    List<Identifier> identifier;
    /// The status of the resource instance.
    String status;
    /// Extensions for status
    Element extStatus;
    /// The category of claim, e.g. oral, pharmacy, vision, institutional, professional.
    CodeableConcept type;
    /// A finer grained suite of claim type codes which may convey additional information such as Inpatient vs Outpatient and/or a specialty service.
    CodeableConcept subType;
    /// A code to indicate whether the nature of the request is: to request adjudication of products and services previously rendered; or requesting authorization and adjudication for provision in the future; or requesting the non-binding adjudication of the listed products and services which could be provided in the future.
    String use;
    /// Extensions for use
    Element extUse;
    /// The party to whom the professional services and/or products have been supplied or are being considered and for whom actual or forecast reimbursement is sought.
    Reference patient;
    /// The period for which charges are being submitted.
    Period billablePeriod;
    /// The date this resource was created.
    DateTime created;
    /// Extensions for created
    Element extCreated;
    /// Individual who created the claim, predetermination or preauthorization.
    Reference enterer;
    /// The Insurer who is target of the request.
    Reference insurer;
    /// The provider which is responsible for the claim, predetermination or preauthorization.
    Reference provider;
    /// The provider-required urgency of processing the request. Typical values include: stat, routine deferred.
    CodeableConcept priority;
    /// A code to indicate whether and for whom funds are to be reserved for future claims.
    CodeableConcept fundsReserve;
    /// Other claims which are related to this claim such as prior submissions or claims for related services or for the same event.
    List<ClaimRelated> related;
    /// Prescription to support the dispensing of pharmacy, device or vision products.
    Reference prescription;
    /// Original prescription which has been superseded by this prescription to support the dispensing of pharmacy services, medications or products.
    Reference originalPrescription;
    /// The party to be reimbursed for cost of the products and services according to the terms of the policy.
    ClaimPayee payee;
    /// A reference to a referral resource.
    Reference referral;
    /// Facility where the services were provided.
    Reference facility;
    /// The members of the team who provided the products and services.
    List<ClaimCareTeam> careTeam;
    /// Additional information codes regarding exceptions, special considerations, the condition, situation, prior or concurrent issues.
    List<ClaimSupportingInfo> supportingInfo;
    /// Information about diagnoses relevant to the claim items.
    List<ClaimDiagnosis> diagnosis;
    /// Procedures performed on the patient relevant to the billing items with the claim.
    List<ClaimProcedure> procedure;
    /// Financial instruments for reimbursement for the health care products and services specified on the claim.
    List<ClaimInsurance> insurance;
    /// Details of an accident which resulted in injuries which required the products and services listed in the claim.
    ClaimAccident accident;
    /// A claim line. Either a simple  product or service or a 'group' of details which can each be a simple items or groups of sub-details.
    List<ClaimItem> item;
    /// The total value of the all the items in the claim.
    Money total;
 
    Claim.fromJSON( Map json ){
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
        this.type = json['type'] == null ? null : FHIRObjectFactory.buildFromJSON('CodeableConcept', json['type']);
        this.subType = json['subType'] == null ? null : FHIRObjectFactory.buildFromJSON('CodeableConcept', json['subType']);
        this.use = json['use'];
        this.extUse = json['_use'] == null ? null : FHIRObjectFactory.buildFromJSON('Element', json['_use']);
        this.patient = json['patient'] == null ? null : FHIRObjectFactory.buildFromJSON('Reference', json['patient']);
        this.billablePeriod = json['billablePeriod'] == null ? null : FHIRObjectFactory.buildFromJSON('Period', json['billablePeriod']);
        if( json['created'] != null ) { this.created = DateTime.parse(json['created']);}
        this.extCreated = json['_created'] == null ? null : FHIRObjectFactory.buildFromJSON('Element', json['_created']);
        this.enterer = json['enterer'] == null ? null : FHIRObjectFactory.buildFromJSON('Reference', json['enterer']);
        this.insurer = json['insurer'] == null ? null : FHIRObjectFactory.buildFromJSON('Reference', json['insurer']);
        this.provider = json['provider'] == null ? null : FHIRObjectFactory.buildFromJSON('Reference', json['provider']);
        this.priority = json['priority'] == null ? null : FHIRObjectFactory.buildFromJSON('CodeableConcept', json['priority']);
        this.fundsReserve = json['fundsReserve'] == null ? null : FHIRObjectFactory.buildFromJSON('CodeableConcept', json['fundsReserve']);
        this.related = List<ClaimRelated>();
        if (json['related'] != null && json['related'].length > 0) {
          if( json['related'] is List ){
            json['related'].forEach((i){
              this.related.add(FHIRObjectFactory.buildFromJSON('ClaimRelated', i));
            });
          } else {
            // this handles the case when the list only has one object and does not return as a list
            var i = json['related'];
            this.related.add(FHIRObjectFactory.buildFromJSON('ClaimRelated', i));
          }          
        }
        this.prescription = json['prescription'] == null ? null : FHIRObjectFactory.buildFromJSON('Reference', json['prescription']);
        this.originalPrescription = json['originalPrescription'] == null ? null : FHIRObjectFactory.buildFromJSON('Reference', json['originalPrescription']);
        this.payee = json['payee'] == null ? null : FHIRObjectFactory.buildFromJSON('ClaimPayee', json['payee']);
        this.referral = json['referral'] == null ? null : FHIRObjectFactory.buildFromJSON('Reference', json['referral']);
        this.facility = json['facility'] == null ? null : FHIRObjectFactory.buildFromJSON('Reference', json['facility']);
        this.careTeam = List<ClaimCareTeam>();
        if (json['careTeam'] != null && json['careTeam'].length > 0) {
          if( json['careTeam'] is List ){
            json['careTeam'].forEach((i){
              this.careTeam.add(FHIRObjectFactory.buildFromJSON('ClaimCareTeam', i));
            });
          } else {
            // this handles the case when the list only has one object and does not return as a list
            var i = json['careTeam'];
            this.careTeam.add(FHIRObjectFactory.buildFromJSON('ClaimCareTeam', i));
          }          
        }
        this.supportingInfo = List<ClaimSupportingInfo>();
        if (json['supportingInfo'] != null && json['supportingInfo'].length > 0) {
          if( json['supportingInfo'] is List ){
            json['supportingInfo'].forEach((i){
              this.supportingInfo.add(FHIRObjectFactory.buildFromJSON('ClaimSupportingInfo', i));
            });
          } else {
            // this handles the case when the list only has one object and does not return as a list
            var i = json['supportingInfo'];
            this.supportingInfo.add(FHIRObjectFactory.buildFromJSON('ClaimSupportingInfo', i));
          }          
        }
        this.diagnosis = List<ClaimDiagnosis>();
        if (json['diagnosis'] != null && json['diagnosis'].length > 0) {
          if( json['diagnosis'] is List ){
            json['diagnosis'].forEach((i){
              this.diagnosis.add(FHIRObjectFactory.buildFromJSON('ClaimDiagnosis', i));
            });
          } else {
            // this handles the case when the list only has one object and does not return as a list
            var i = json['diagnosis'];
            this.diagnosis.add(FHIRObjectFactory.buildFromJSON('ClaimDiagnosis', i));
          }          
        }
        this.procedure = List<ClaimProcedure>();
        if (json['procedure'] != null && json['procedure'].length > 0) {
          if( json['procedure'] is List ){
            json['procedure'].forEach((i){
              this.procedure.add(FHIRObjectFactory.buildFromJSON('ClaimProcedure', i));
            });
          } else {
            // this handles the case when the list only has one object and does not return as a list
            var i = json['procedure'];
            this.procedure.add(FHIRObjectFactory.buildFromJSON('ClaimProcedure', i));
          }          
        }
        this.insurance = List<ClaimInsurance>();
        if (json['insurance'] != null && json['insurance'].length > 0) {
          if( json['insurance'] is List ){
            json['insurance'].forEach((i){
              this.insurance.add(FHIRObjectFactory.buildFromJSON('ClaimInsurance', i));
            });
          } else {
            // this handles the case when the list only has one object and does not return as a list
            var i = json['insurance'];
            this.insurance.add(FHIRObjectFactory.buildFromJSON('ClaimInsurance', i));
          }          
        }
        this.accident = json['accident'] == null ? null : FHIRObjectFactory.buildFromJSON('ClaimAccident', json['accident']);
        this.item = List<ClaimItem>();
        if (json['item'] != null && json['item'].length > 0) {
          if( json['item'] is List ){
            json['item'].forEach((i){
              this.item.add(FHIRObjectFactory.buildFromJSON('ClaimItem', i));
            });
          } else {
            // this handles the case when the list only has one object and does not return as a list
            var i = json['item'];
            this.item.add(FHIRObjectFactory.buildFromJSON('ClaimItem', i));
          }          
        }
        this.total = json['total'] == null ? null : FHIRObjectFactory.buildFromJSON('Money', json['total']);
    }
}
