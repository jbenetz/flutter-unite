import 'meta.dart';
import 'fhir_object_factory.dart';
import 'element.dart';
import 'narrative.dart';
import 'extension.dart';
import 'identifier.dart';
import 'codeable_concept.dart';
import 'reference.dart';
import 'period.dart';
import 'explanation_of_benefit_related.dart';
import 'explanation_of_benefit_payee.dart';
import 'explanation_of_benefit_care_team.dart';
import 'explanation_of_benefit_supporting_info.dart';
import 'explanation_of_benefit_diagnosis.dart';
import 'explanation_of_benefit_procedure.dart';
import 'explanation_of_benefit_insurance.dart';
import 'explanation_of_benefit_accident.dart';
import 'explanation_of_benefit_item.dart';
import 'explanation_of_benefit_add_item.dart';
import 'explanation_of_benefit_adjudication.dart';
import 'explanation_of_benefit_total.dart';
import 'explanation_of_benefit_payment.dart';
import 'attachment.dart';
import 'explanation_of_benefit_process_note.dart';
import 'explanation_of_benefit_benefit_balance.dart';
/// This resource provides: the claim details; adjudication details from the processing of a Claim; and optionally account balance information, for informing the subscriber of the benefits provided.
class ExplanationOfBenefit {
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
    /// A unique identifier assigned to this explanation of benefit.
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
    /// The party to whom the professional services and/or products have been supplied or are being considered and for whom actual for forecast reimbursement is sought.
    Reference patient;
    /// The period for which charges are being submitted.
    Period billablePeriod;
    /// The date this resource was created.
    DateTime created;
    /// Extensions for created
    Element extCreated;
    /// Individual who created the claim, predetermination or preauthorization.
    Reference enterer;
    /// The party responsible for authorization, adjudication and reimbursement.
    Reference insurer;
    /// The provider which is responsible for the claim, predetermination or preauthorization.
    Reference provider;
    /// The provider-required urgency of processing the request. Typical values include: stat, routine deferred.
    CodeableConcept priority;
    /// A code to indicate whether and for whom funds are to be reserved for future claims.
    CodeableConcept fundsReserveRequested;
    /// A code, used only on a response to a preauthorization, to indicate whether the benefits payable have been reserved and for whom.
    CodeableConcept fundsReserve;
    /// Other claims which are related to this claim such as prior submissions or claims for related services or for the same event.
    List<ExplanationOfBenefitRelated> related;
    /// Prescription to support the dispensing of pharmacy, device or vision products.
    Reference prescription;
    /// Original prescription which has been superseded by this prescription to support the dispensing of pharmacy services, medications or products.
    Reference originalPrescription;
    /// The party to be reimbursed for cost of the products and services according to the terms of the policy.
    ExplanationOfBenefitPayee payee;
    /// A reference to a referral resource.
    Reference referral;
    /// Facility where the services were provided.
    Reference facility;
    /// The business identifier for the instance of the adjudication request: claim predetermination or preauthorization.
    Reference claim;
    /// The business identifier for the instance of the adjudication response: claim, predetermination or preauthorization response.
    Reference claimResponse;
    /// The outcome of the claim, predetermination, or preauthorization processing.
    String outcome;
    /// Extensions for outcome
    Element extOutcome;
    /// A human readable description of the status of the adjudication.
    String disposition;
    /// Extensions for disposition
    Element extDisposition;
    /// Reference from the Insurer which is used in later communications which refers to this adjudication.
    List<String> preAuthRef;
    /// Extensions for preAuthRef
    List<Element> extPreAuthRef;
    /// The timeframe during which the supplied preauthorization reference may be quoted on claims to obtain the adjudication as provided.
    List<Period> preAuthRefPeriod;
    /// The members of the team who provided the products and services.
    List<ExplanationOfBenefitCareTeam> careTeam;
    /// Additional information codes regarding exceptions, special considerations, the condition, situation, prior or concurrent issues.
    List<ExplanationOfBenefitSupportingInfo> supportingInfo;
    /// Information about diagnoses relevant to the claim items.
    List<ExplanationOfBenefitDiagnosis> diagnosis;
    /// Procedures performed on the patient relevant to the billing items with the claim.
    List<ExplanationOfBenefitProcedure> procedure;
    /// This indicates the relative order of a series of EOBs related to different coverages for the same suite of services.
    int precedence;
    /// Extensions for precedence
    Element extPrecedence;
    /// Financial instruments for reimbursement for the health care products and services specified on the claim.
    List<ExplanationOfBenefitInsurance> insurance;
    /// Details of a accident which resulted in injuries which required the products and services listed in the claim.
    ExplanationOfBenefitAccident accident;
    /// A claim line. Either a simple (a product or service) or a 'group' of details which can also be a simple items or groups of sub-details.
    List<ExplanationOfBenefitItem> item;
    /// The first-tier service adjudications for payor added product or service lines.
    List<ExplanationOfBenefitAddItem> addItem;
    /// The adjudication results which are presented at the header level rather than at the line-item or add-item levels.
    List<ExplanationOfBenefitAdjudication> adjudication;
    /// Categorized monetary totals for the adjudication.
    List<ExplanationOfBenefitTotal> total;
    /// Payment details for the adjudication of the claim.
    ExplanationOfBenefitPayment payment;
    /// A code for the form to be used for printing the content.
    CodeableConcept formCode;
    /// The actual form, by reference or inclusion, for printing the content or an EOB.
    Attachment form;
    /// A note that describes or explains adjudication results in a human readable form.
    List<ExplanationOfBenefitProcessNote> processNote;
    /// The term of the benefits documented in this response.
    Period benefitPeriod;
    /// Balance by Benefit Category.
    List<ExplanationOfBenefitBenefitBalance> benefitBalance;
 
    ExplanationOfBenefit.fromJSON( Map json ){
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
        this.fundsReserveRequested = json['fundsReserveRequested'] == null ? null : FHIRObjectFactory.buildFromJSON('CodeableConcept', json['fundsReserveRequested']);
        this.fundsReserve = json['fundsReserve'] == null ? null : FHIRObjectFactory.buildFromJSON('CodeableConcept', json['fundsReserve']);
        this.related = List<ExplanationOfBenefitRelated>();
        if (json['related'] != null && json['related'].length > 0) {
          if( json['related'] is List ){
            json['related'].forEach((i){
              this.related.add(FHIRObjectFactory.buildFromJSON('ExplanationOfBenefitRelated', i));
            });
          } else {
            // this handles the case when the list only has one object and does not return as a list
            var i = json['related'];
            this.related.add(FHIRObjectFactory.buildFromJSON('ExplanationOfBenefitRelated', i));
          }          
        }
        this.prescription = json['prescription'] == null ? null : FHIRObjectFactory.buildFromJSON('Reference', json['prescription']);
        this.originalPrescription = json['originalPrescription'] == null ? null : FHIRObjectFactory.buildFromJSON('Reference', json['originalPrescription']);
        this.payee = json['payee'] == null ? null : FHIRObjectFactory.buildFromJSON('ExplanationOfBenefitPayee', json['payee']);
        this.referral = json['referral'] == null ? null : FHIRObjectFactory.buildFromJSON('Reference', json['referral']);
        this.facility = json['facility'] == null ? null : FHIRObjectFactory.buildFromJSON('Reference', json['facility']);
        this.claim = json['claim'] == null ? null : FHIRObjectFactory.buildFromJSON('Reference', json['claim']);
        this.claimResponse = json['claimResponse'] == null ? null : FHIRObjectFactory.buildFromJSON('Reference', json['claimResponse']);
        this.outcome = json['outcome'];
        this.extOutcome = json['_outcome'] == null ? null : FHIRObjectFactory.buildFromJSON('Element', json['_outcome']);
        this.disposition = json['disposition'];
        this.extDisposition = json['_disposition'] == null ? null : FHIRObjectFactory.buildFromJSON('Element', json['_disposition']);
        this.preAuthRef = List<String>();
        if (json['preAuthRef'] != null && json['preAuthRef'].length > 0) {
          if( json['preAuthRef'] is List ){
            json['preAuthRef'].forEach((i){
              this.preAuthRef.add(i);
            });
          } else {
            // this handles the case when the list only has one object and does not return as a list
            var i = json['preAuthRef'];
            this.preAuthRef.add(i);
          }          
        }
        this.extPreAuthRef = List<Element>();
        if (json['_preAuthRef'] != null && json['_preAuthRef'].length > 0) {
          if( json['_preAuthRef'] is List ){
            json['_preAuthRef'].forEach((i){
              this.extPreAuthRef.add(FHIRObjectFactory.buildFromJSON('Element', i));
            });
          } else {
            // this handles the case when the list only has one object and does not return as a list
            var i = json['_preAuthRef'];
            this.extPreAuthRef.add(FHIRObjectFactory.buildFromJSON('Element', i));
          }          
        }
        this.preAuthRefPeriod = List<Period>();
        if (json['preAuthRefPeriod'] != null && json['preAuthRefPeriod'].length > 0) {
          if( json['preAuthRefPeriod'] is List ){
            json['preAuthRefPeriod'].forEach((i){
              this.preAuthRefPeriod.add(FHIRObjectFactory.buildFromJSON('Period', i));
            });
          } else {
            // this handles the case when the list only has one object and does not return as a list
            var i = json['preAuthRefPeriod'];
            this.preAuthRefPeriod.add(FHIRObjectFactory.buildFromJSON('Period', i));
          }          
        }
        this.careTeam = List<ExplanationOfBenefitCareTeam>();
        if (json['careTeam'] != null && json['careTeam'].length > 0) {
          if( json['careTeam'] is List ){
            json['careTeam'].forEach((i){
              this.careTeam.add(FHIRObjectFactory.buildFromJSON('ExplanationOfBenefitCareTeam', i));
            });
          } else {
            // this handles the case when the list only has one object and does not return as a list
            var i = json['careTeam'];
            this.careTeam.add(FHIRObjectFactory.buildFromJSON('ExplanationOfBenefitCareTeam', i));
          }          
        }
        this.supportingInfo = List<ExplanationOfBenefitSupportingInfo>();
        if (json['supportingInfo'] != null && json['supportingInfo'].length > 0) {
          if( json['supportingInfo'] is List ){
            json['supportingInfo'].forEach((i){
              this.supportingInfo.add(FHIRObjectFactory.buildFromJSON('ExplanationOfBenefitSupportingInfo', i));
            });
          } else {
            // this handles the case when the list only has one object and does not return as a list
            var i = json['supportingInfo'];
            this.supportingInfo.add(FHIRObjectFactory.buildFromJSON('ExplanationOfBenefitSupportingInfo', i));
          }          
        }
        this.diagnosis = List<ExplanationOfBenefitDiagnosis>();
        if (json['diagnosis'] != null && json['diagnosis'].length > 0) {
          if( json['diagnosis'] is List ){
            json['diagnosis'].forEach((i){
              this.diagnosis.add(FHIRObjectFactory.buildFromJSON('ExplanationOfBenefitDiagnosis', i));
            });
          } else {
            // this handles the case when the list only has one object and does not return as a list
            var i = json['diagnosis'];
            this.diagnosis.add(FHIRObjectFactory.buildFromJSON('ExplanationOfBenefitDiagnosis', i));
          }          
        }
        this.procedure = List<ExplanationOfBenefitProcedure>();
        if (json['procedure'] != null && json['procedure'].length > 0) {
          if( json['procedure'] is List ){
            json['procedure'].forEach((i){
              this.procedure.add(FHIRObjectFactory.buildFromJSON('ExplanationOfBenefitProcedure', i));
            });
          } else {
            // this handles the case when the list only has one object and does not return as a list
            var i = json['procedure'];
            this.procedure.add(FHIRObjectFactory.buildFromJSON('ExplanationOfBenefitProcedure', i));
          }          
        }
        this.precedence = json['precedence'];
        this.extPrecedence = json['_precedence'] == null ? null : FHIRObjectFactory.buildFromJSON('Element', json['_precedence']);
        this.insurance = List<ExplanationOfBenefitInsurance>();
        if (json['insurance'] != null && json['insurance'].length > 0) {
          if( json['insurance'] is List ){
            json['insurance'].forEach((i){
              this.insurance.add(FHIRObjectFactory.buildFromJSON('ExplanationOfBenefitInsurance', i));
            });
          } else {
            // this handles the case when the list only has one object and does not return as a list
            var i = json['insurance'];
            this.insurance.add(FHIRObjectFactory.buildFromJSON('ExplanationOfBenefitInsurance', i));
          }          
        }
        this.accident = json['accident'] == null ? null : FHIRObjectFactory.buildFromJSON('ExplanationOfBenefitAccident', json['accident']);
        this.item = List<ExplanationOfBenefitItem>();
        if (json['item'] != null && json['item'].length > 0) {
          if( json['item'] is List ){
            json['item'].forEach((i){
              this.item.add(FHIRObjectFactory.buildFromJSON('ExplanationOfBenefitItem', i));
            });
          } else {
            // this handles the case when the list only has one object and does not return as a list
            var i = json['item'];
            this.item.add(FHIRObjectFactory.buildFromJSON('ExplanationOfBenefitItem', i));
          }          
        }
        this.addItem = List<ExplanationOfBenefitAddItem>();
        if (json['addItem'] != null && json['addItem'].length > 0) {
          if( json['addItem'] is List ){
            json['addItem'].forEach((i){
              this.addItem.add(FHIRObjectFactory.buildFromJSON('ExplanationOfBenefitAddItem', i));
            });
          } else {
            // this handles the case when the list only has one object and does not return as a list
            var i = json['addItem'];
            this.addItem.add(FHIRObjectFactory.buildFromJSON('ExplanationOfBenefitAddItem', i));
          }          
        }
        this.adjudication = List<ExplanationOfBenefitAdjudication>();
        if (json['adjudication'] != null && json['adjudication'].length > 0) {
          if( json['adjudication'] is List ){
            json['adjudication'].forEach((i){
              this.adjudication.add(FHIRObjectFactory.buildFromJSON('ExplanationOfBenefitAdjudication', i));
            });
          } else {
            // this handles the case when the list only has one object and does not return as a list
            var i = json['adjudication'];
            this.adjudication.add(FHIRObjectFactory.buildFromJSON('ExplanationOfBenefitAdjudication', i));
          }          
        }
        this.total = List<ExplanationOfBenefitTotal>();
        if (json['total'] != null && json['total'].length > 0) {
          if( json['total'] is List ){
            json['total'].forEach((i){
              this.total.add(FHIRObjectFactory.buildFromJSON('ExplanationOfBenefitTotal', i));
            });
          } else {
            // this handles the case when the list only has one object and does not return as a list
            var i = json['total'];
            this.total.add(FHIRObjectFactory.buildFromJSON('ExplanationOfBenefitTotal', i));
          }          
        }
        this.payment = json['payment'] == null ? null : FHIRObjectFactory.buildFromJSON('ExplanationOfBenefitPayment', json['payment']);
        this.formCode = json['formCode'] == null ? null : FHIRObjectFactory.buildFromJSON('CodeableConcept', json['formCode']);
        this.form = json['form'] == null ? null : FHIRObjectFactory.buildFromJSON('Attachment', json['form']);
        this.processNote = List<ExplanationOfBenefitProcessNote>();
        if (json['processNote'] != null && json['processNote'].length > 0) {
          if( json['processNote'] is List ){
            json['processNote'].forEach((i){
              this.processNote.add(FHIRObjectFactory.buildFromJSON('ExplanationOfBenefitProcessNote', i));
            });
          } else {
            // this handles the case when the list only has one object and does not return as a list
            var i = json['processNote'];
            this.processNote.add(FHIRObjectFactory.buildFromJSON('ExplanationOfBenefitProcessNote', i));
          }          
        }
        this.benefitPeriod = json['benefitPeriod'] == null ? null : FHIRObjectFactory.buildFromJSON('Period', json['benefitPeriod']);
        this.benefitBalance = List<ExplanationOfBenefitBenefitBalance>();
        if (json['benefitBalance'] != null && json['benefitBalance'].length > 0) {
          if( json['benefitBalance'] is List ){
            json['benefitBalance'].forEach((i){
              this.benefitBalance.add(FHIRObjectFactory.buildFromJSON('ExplanationOfBenefitBenefitBalance', i));
            });
          } else {
            // this handles the case when the list only has one object and does not return as a list
            var i = json['benefitBalance'];
            this.benefitBalance.add(FHIRObjectFactory.buildFromJSON('ExplanationOfBenefitBenefitBalance', i));
          }          
        }
    }
}
