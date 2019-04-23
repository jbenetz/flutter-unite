import 'meta.dart';
import 'fhir_object_factory.dart';
import 'element.dart';
import 'narrative.dart';
import 'extension.dart';
import 'identifier.dart';
import 'period.dart';
import 'reference.dart';
import 'money.dart';
import 'payment_reconciliation_detail.dart';
import 'codeable_concept.dart';
import 'payment_reconciliation_process_note.dart';
/// This resource provides the details including amount of a payment and allocates the payment items being paid.
class PaymentReconciliation {
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
    /// A unique identifier assigned to this payment reconciliation.
    List<Identifier> identifier;
    /// The status of the resource instance.
    String status;
    /// Extensions for status
    Element extStatus;
    /// The period of time for which payments have been gathered into this bulk payment for settlement.
    Period period;
    /// The date when the resource was created.
    DateTime created;
    /// Extensions for created
    Element extCreated;
    /// The party who generated the payment.
    Reference paymentIssuer;
    /// Original request resource reference.
    Reference request;
    /// The practitioner who is responsible for the services rendered to the patient.
    Reference requestor;
    /// The outcome of a request for a reconciliation.
    String outcome;
    /// Extensions for outcome
    Element extOutcome;
    /// A human readable description of the status of the request for the reconciliation.
    String disposition;
    /// Extensions for disposition
    Element extDisposition;
    /// The date of payment as indicated on the financial instrument.
    DateTime paymentDate;
    /// Extensions for paymentDate
    Element extPaymentDate;
    /// Total payment amount as indicated on the financial instrument.
    Money paymentAmount;
    /// Issuer's unique identifier for the payment instrument.
    Identifier paymentIdentifier;
    /// Distribution of the payment amount for a previously acknowledged payable.
    List<PaymentReconciliationDetail> detail;
    /// A code for the form to be used for printing the content.
    CodeableConcept formCode;
    /// A note that describes or explains the processing in a human readable form.
    List<PaymentReconciliationProcessNote> processNote;
 
    PaymentReconciliation.fromJSON( Map json ){
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
        this.period = json['period'] == null ? null : FHIRObjectFactory.buildFromJSON('Period', json['period']);
        if( json['created'] != null ) { this.created = DateTime.parse(json['created']);}
        this.extCreated = json['_created'] == null ? null : FHIRObjectFactory.buildFromJSON('Element', json['_created']);
        this.paymentIssuer = json['paymentIssuer'] == null ? null : FHIRObjectFactory.buildFromJSON('Reference', json['paymentIssuer']);
        this.request = json['request'] == null ? null : FHIRObjectFactory.buildFromJSON('Reference', json['request']);
        this.requestor = json['requestor'] == null ? null : FHIRObjectFactory.buildFromJSON('Reference', json['requestor']);
        this.outcome = json['outcome'];
        this.extOutcome = json['_outcome'] == null ? null : FHIRObjectFactory.buildFromJSON('Element', json['_outcome']);
        this.disposition = json['disposition'];
        this.extDisposition = json['_disposition'] == null ? null : FHIRObjectFactory.buildFromJSON('Element', json['_disposition']);
        if( json['paymentDate'] != null ) { this.paymentDate = DateTime.parse(json['paymentDate']);}
        this.extPaymentDate = json['_paymentDate'] == null ? null : FHIRObjectFactory.buildFromJSON('Element', json['_paymentDate']);
        this.paymentAmount = json['paymentAmount'] == null ? null : FHIRObjectFactory.buildFromJSON('Money', json['paymentAmount']);
        this.paymentIdentifier = json['paymentIdentifier'] == null ? null : FHIRObjectFactory.buildFromJSON('Identifier', json['paymentIdentifier']);
        this.detail = List<PaymentReconciliationDetail>();
        if (json['detail'] != null && json['detail'].length > 0) {
          if( json['detail'] is List ){
            json['detail'].forEach((i){
              this.detail.add(FHIRObjectFactory.buildFromJSON('PaymentReconciliationDetail', i));
            });
          } else {
            // this handles the case when the list only has one object and does not return as a list
            var i = json['detail'];
            this.detail.add(FHIRObjectFactory.buildFromJSON('PaymentReconciliationDetail', i));
          }          
        }
        this.formCode = json['formCode'] == null ? null : FHIRObjectFactory.buildFromJSON('CodeableConcept', json['formCode']);
        this.processNote = List<PaymentReconciliationProcessNote>();
        if (json['processNote'] != null && json['processNote'].length > 0) {
          if( json['processNote'] is List ){
            json['processNote'].forEach((i){
              this.processNote.add(FHIRObjectFactory.buildFromJSON('PaymentReconciliationProcessNote', i));
            });
          } else {
            // this handles the case when the list only has one object and does not return as a list
            var i = json['processNote'];
            this.processNote.add(FHIRObjectFactory.buildFromJSON('PaymentReconciliationProcessNote', i));
          }          
        }
    }
}
