import 'meta.dart';
import 'fhir_object_factory.dart';
import 'element.dart';
import 'narrative.dart';
import 'extension.dart';
import 'identifier.dart';
import 'codeable_concept.dart';
import 'reference.dart';
import 'period.dart';
import 'claim_response_item.dart';
import 'claim_response_add_item.dart';
import 'claim_response_adjudication.dart';
import 'claim_response_total.dart';
import 'claim_response_payment.dart';
import 'attachment.dart';
import 'claim_response_process_note.dart';
import 'claim_response_insurance.dart';
import 'claim_response_error.dart';
/// This resource provides the adjudication details from the processing of a Claim resource.
class ClaimResponse {
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
    /// A unique identifier assigned to this claim response.
    List<Identifier> identifier;
    /// The status of the resource instance.
    String status;
    /// Extensions for status
    Element extStatus;
    /// A finer grained suite of claim type codes which may convey additional information such as Inpatient vs Outpatient and/or a specialty service.
    CodeableConcept type;
    /// A finer grained suite of claim type codes which may convey additional information such as Inpatient vs Outpatient and/or a specialty service.
    CodeableConcept subType;
    /// A code to indicate whether the nature of the request is: to request adjudication of products and services previously rendered; or requesting authorization and adjudication for provision in the future; or requesting the non-binding adjudication of the listed products and services which could be provided in the future.
    String use;
    /// Extensions for use
    Element extUse;
    /// The party to whom the professional services and/or products have been supplied or are being considered and for whom actual for facast reimbursement is sought.
    Reference patient;
    /// The date this resource was created.
    DateTime created;
    /// Extensions for created
    Element extCreated;
    /// The party responsible for authorization, adjudication and reimbursement.
    Reference insurer;
    /// The provider which is responsible for the claim, predetermination or preauthorization.
    Reference requestor;
    /// Original request resource reference.
    Reference request;
    /// The outcome of the claim, predetermination, or preauthorization processing.
    String outcome;
    /// Extensions for outcome
    Element extOutcome;
    /// A human readable description of the status of the adjudication.
    String disposition;
    /// Extensions for disposition
    Element extDisposition;
    /// Reference from the Insurer which is used in later communications which refers to this adjudication.
    String preAuthRef;
    /// Extensions for preAuthRef
    Element extPreAuthRef;
    /// The time frame during which this authorization is effective.
    Period preAuthPeriod;
    /// Type of Party to be reimbursed: subscriber, provider, other.
    CodeableConcept payeeType;
    /// A claim line. Either a simple (a product or service) or a 'group' of details which can also be a simple items or groups of sub-details.
    List<ClaimResponseItem> item;
    /// The first-tier service adjudications for payor added product or service lines.
    List<ClaimResponseAddItem> addItem;
    /// The adjudication results which are presented at the header level rather than at the line-item or add-item levels.
    List<ClaimResponseAdjudication> adjudication;
    /// Categorized monetary totals for the adjudication.
    List<ClaimResponseTotal> total;
    /// Payment details for the adjudication of the claim.
    ClaimResponsePayment payment;
    /// A code, used only on a response to a preauthorization, to indicate whether the benefits payable have been reserved and for whom.
    CodeableConcept fundsReserve;
    /// A code for the form to be used for printing the content.
    CodeableConcept formCode;
    /// The actual form, by reference or inclusion, for printing the content or an EOB.
    Attachment form;
    /// A note that describes or explains adjudication results in a human readable form.
    List<ClaimResponseProcessNote> processNote;
    /// Request for additional supporting or authorizing information.
    List<Reference> communicationRequest;
    /// Financial instruments for reimbursement for the health care products and services specified on the claim.
    List<ClaimResponseInsurance> insurance;
    /// Errors encountered during the processing of the adjudication.
    List<ClaimResponseError> error;
 
    ClaimResponse.fromJSON( Map json ){
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
        if( json['created'] != null ) { this.created = DateTime.parse(json['created']);}
        this.extCreated = json['_created'] == null ? null : FHIRObjectFactory.buildFromJSON('Element', json['_created']);
        this.insurer = json['insurer'] == null ? null : FHIRObjectFactory.buildFromJSON('Reference', json['insurer']);
        this.requestor = json['requestor'] == null ? null : FHIRObjectFactory.buildFromJSON('Reference', json['requestor']);
        this.request = json['request'] == null ? null : FHIRObjectFactory.buildFromJSON('Reference', json['request']);
        this.outcome = json['outcome'];
        this.extOutcome = json['_outcome'] == null ? null : FHIRObjectFactory.buildFromJSON('Element', json['_outcome']);
        this.disposition = json['disposition'];
        this.extDisposition = json['_disposition'] == null ? null : FHIRObjectFactory.buildFromJSON('Element', json['_disposition']);
        this.preAuthRef = json['preAuthRef'];
        this.extPreAuthRef = json['_preAuthRef'] == null ? null : FHIRObjectFactory.buildFromJSON('Element', json['_preAuthRef']);
        this.preAuthPeriod = json['preAuthPeriod'] == null ? null : FHIRObjectFactory.buildFromJSON('Period', json['preAuthPeriod']);
        this.payeeType = json['payeeType'] == null ? null : FHIRObjectFactory.buildFromJSON('CodeableConcept', json['payeeType']);
        this.item = List<ClaimResponseItem>();
        if (json['item'] != null && json['item'].length > 0) {
          if( json['item'] is List ){
            json['item'].forEach((i){
              this.item.add(FHIRObjectFactory.buildFromJSON('ClaimResponseItem', i));
            });
          } else {
            // this handles the case when the list only has one object and does not return as a list
            var i = json['item'];
            this.item.add(FHIRObjectFactory.buildFromJSON('ClaimResponseItem', i));
          }          
        }
        this.addItem = List<ClaimResponseAddItem>();
        if (json['addItem'] != null && json['addItem'].length > 0) {
          if( json['addItem'] is List ){
            json['addItem'].forEach((i){
              this.addItem.add(FHIRObjectFactory.buildFromJSON('ClaimResponseAddItem', i));
            });
          } else {
            // this handles the case when the list only has one object and does not return as a list
            var i = json['addItem'];
            this.addItem.add(FHIRObjectFactory.buildFromJSON('ClaimResponseAddItem', i));
          }          
        }
        this.adjudication = List<ClaimResponseAdjudication>();
        if (json['adjudication'] != null && json['adjudication'].length > 0) {
          if( json['adjudication'] is List ){
            json['adjudication'].forEach((i){
              this.adjudication.add(FHIRObjectFactory.buildFromJSON('ClaimResponseAdjudication', i));
            });
          } else {
            // this handles the case when the list only has one object and does not return as a list
            var i = json['adjudication'];
            this.adjudication.add(FHIRObjectFactory.buildFromJSON('ClaimResponseAdjudication', i));
          }          
        }
        this.total = List<ClaimResponseTotal>();
        if (json['total'] != null && json['total'].length > 0) {
          if( json['total'] is List ){
            json['total'].forEach((i){
              this.total.add(FHIRObjectFactory.buildFromJSON('ClaimResponseTotal', i));
            });
          } else {
            // this handles the case when the list only has one object and does not return as a list
            var i = json['total'];
            this.total.add(FHIRObjectFactory.buildFromJSON('ClaimResponseTotal', i));
          }          
        }
        this.payment = json['payment'] == null ? null : FHIRObjectFactory.buildFromJSON('ClaimResponsePayment', json['payment']);
        this.fundsReserve = json['fundsReserve'] == null ? null : FHIRObjectFactory.buildFromJSON('CodeableConcept', json['fundsReserve']);
        this.formCode = json['formCode'] == null ? null : FHIRObjectFactory.buildFromJSON('CodeableConcept', json['formCode']);
        this.form = json['form'] == null ? null : FHIRObjectFactory.buildFromJSON('Attachment', json['form']);
        this.processNote = List<ClaimResponseProcessNote>();
        if (json['processNote'] != null && json['processNote'].length > 0) {
          if( json['processNote'] is List ){
            json['processNote'].forEach((i){
              this.processNote.add(FHIRObjectFactory.buildFromJSON('ClaimResponseProcessNote', i));
            });
          } else {
            // this handles the case when the list only has one object and does not return as a list
            var i = json['processNote'];
            this.processNote.add(FHIRObjectFactory.buildFromJSON('ClaimResponseProcessNote', i));
          }          
        }
        this.communicationRequest = List<Reference>();
        if (json['communicationRequest'] != null && json['communicationRequest'].length > 0) {
          if( json['communicationRequest'] is List ){
            json['communicationRequest'].forEach((i){
              this.communicationRequest.add(FHIRObjectFactory.buildFromJSON('Reference', i));
            });
          } else {
            // this handles the case when the list only has one object and does not return as a list
            var i = json['communicationRequest'];
            this.communicationRequest.add(FHIRObjectFactory.buildFromJSON('Reference', i));
          }          
        }
        this.insurance = List<ClaimResponseInsurance>();
        if (json['insurance'] != null && json['insurance'].length > 0) {
          if( json['insurance'] is List ){
            json['insurance'].forEach((i){
              this.insurance.add(FHIRObjectFactory.buildFromJSON('ClaimResponseInsurance', i));
            });
          } else {
            // this handles the case when the list only has one object and does not return as a list
            var i = json['insurance'];
            this.insurance.add(FHIRObjectFactory.buildFromJSON('ClaimResponseInsurance', i));
          }          
        }
        this.error = List<ClaimResponseError>();
        if (json['error'] != null && json['error'].length > 0) {
          if( json['error'] is List ){
            json['error'].forEach((i){
              this.error.add(FHIRObjectFactory.buildFromJSON('ClaimResponseError', i));
            });
          } else {
            // this handles the case when the list only has one object and does not return as a list
            var i = json['error'];
            this.error.add(FHIRObjectFactory.buildFromJSON('ClaimResponseError', i));
          }          
        }
    }
}
