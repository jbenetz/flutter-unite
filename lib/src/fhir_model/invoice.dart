import 'meta.dart';
import 'fhir_object_factory.dart';
import 'element.dart';
import 'narrative.dart';
import 'extension.dart';
import 'identifier.dart';
import 'codeable_concept.dart';
import 'reference.dart';
import 'invoice_participant.dart';
import 'invoice_line_item.dart';
import 'invoice_price_component.dart';
import 'money.dart';
import 'annotation.dart';
/// Invoice containing collected ChargeItems from an Account with calculated individual and total price for Billing purpose.
class Invoice {
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
    /// Identifier of this Invoice, often used for reference in correspondence about this invoice or for tracking of payments.
    List<Identifier> identifier;
    /// The current state of the Invoice.
    String status;
    /// Extensions for status
    Element extStatus;
    /// In case of Invoice cancellation a reason must be given (entered in error, superseded by corrected invoice etc.).
    String cancelledReason;
    /// Extensions for cancelledReason
    Element extCancelledReason;
    /// Type of Invoice depending on domain, realm an usage (e.g. internal/external, dental, preliminary).
    CodeableConcept type;
    /// The individual or set of individuals receiving the goods and services billed in this invoice.
    Reference subject;
    /// The individual or Organization responsible for balancing of this invoice.
    Reference recipient;
    /// Date/time(s) of when this Invoice was posted.
    DateTime date;
    /// Extensions for date
    Element extDate;
    /// Indicates who or what performed or participated in the charged service.
    List<InvoiceParticipant> participant;
    /// The organizationissuing the Invoice.
    Reference issuer;
    /// Account which is supposed to be balanced with this Invoice.
    Reference account;
    /// Each line item represents one charge for goods and services rendered. Details such as date, code and amount are found in the referenced ChargeItem resource.
    List<InvoiceLineItem> lineItem;
    /// The total amount for the Invoice may be calculated as the sum of the line items with surcharges/deductions that apply in certain conditions.  The priceComponent element can be used to offer transparency to the recipient of the Invoice of how the total price was calculated.
    List<InvoicePriceComponent> totalPriceComponent;
    /// Invoice total , taxes excluded.
    Money totalNet;
    /// Invoice total, tax included.
    Money totalGross;
    /// Payment details such as banking details, period of payment, deductibles, methods of payment.
    String paymentTerms;
    /// Extensions for paymentTerms
    Element extPaymentTerms;
    /// Comments made about the invoice by the issuer, subject, or other participants.
    List<Annotation> note;
 
    Invoice.fromJSON( Map json ){
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
        this.cancelledReason = json['cancelledReason'];
        this.extCancelledReason = json['_cancelledReason'] == null ? null : FHIRObjectFactory.buildFromJSON('Element', json['_cancelledReason']);
        this.type = json['type'] == null ? null : FHIRObjectFactory.buildFromJSON('CodeableConcept', json['type']);
        this.subject = json['subject'] == null ? null : FHIRObjectFactory.buildFromJSON('Reference', json['subject']);
        this.recipient = json['recipient'] == null ? null : FHIRObjectFactory.buildFromJSON('Reference', json['recipient']);
        if( json['date'] != null ) { this.date = DateTime.parse(json['date']);}
        this.extDate = json['_date'] == null ? null : FHIRObjectFactory.buildFromJSON('Element', json['_date']);
        this.participant = List<InvoiceParticipant>();
        if (json['participant'] != null && json['participant'].length > 0) {
          if( json['participant'] is List ){
            json['participant'].forEach((i){
              this.participant.add(FHIRObjectFactory.buildFromJSON('InvoiceParticipant', i));
            });
          } else {
            // this handles the case when the list only has one object and does not return as a list
            var i = json['participant'];
            this.participant.add(FHIRObjectFactory.buildFromJSON('InvoiceParticipant', i));
          }          
        }
        this.issuer = json['issuer'] == null ? null : FHIRObjectFactory.buildFromJSON('Reference', json['issuer']);
        this.account = json['account'] == null ? null : FHIRObjectFactory.buildFromJSON('Reference', json['account']);
        this.lineItem = List<InvoiceLineItem>();
        if (json['lineItem'] != null && json['lineItem'].length > 0) {
          if( json['lineItem'] is List ){
            json['lineItem'].forEach((i){
              this.lineItem.add(FHIRObjectFactory.buildFromJSON('InvoiceLineItem', i));
            });
          } else {
            // this handles the case when the list only has one object and does not return as a list
            var i = json['lineItem'];
            this.lineItem.add(FHIRObjectFactory.buildFromJSON('InvoiceLineItem', i));
          }          
        }
        this.totalPriceComponent = List<InvoicePriceComponent>();
        if (json['totalPriceComponent'] != null && json['totalPriceComponent'].length > 0) {
          if( json['totalPriceComponent'] is List ){
            json['totalPriceComponent'].forEach((i){
              this.totalPriceComponent.add(FHIRObjectFactory.buildFromJSON('InvoicePriceComponent', i));
            });
          } else {
            // this handles the case when the list only has one object and does not return as a list
            var i = json['totalPriceComponent'];
            this.totalPriceComponent.add(FHIRObjectFactory.buildFromJSON('InvoicePriceComponent', i));
          }          
        }
        this.totalNet = json['totalNet'] == null ? null : FHIRObjectFactory.buildFromJSON('Money', json['totalNet']);
        this.totalGross = json['totalGross'] == null ? null : FHIRObjectFactory.buildFromJSON('Money', json['totalGross']);
        this.paymentTerms = json['paymentTerms'];
        this.extPaymentTerms = json['_paymentTerms'] == null ? null : FHIRObjectFactory.buildFromJSON('Element', json['_paymentTerms']);
        this.note = List<Annotation>();
        if (json['note'] != null && json['note'].length > 0) {
          if( json['note'] is List ){
            json['note'].forEach((i){
              this.note.add(FHIRObjectFactory.buildFromJSON('Annotation', i));
            });
          } else {
            // this handles the case when the list only has one object and does not return as a list
            var i = json['note'];
            this.note.add(FHIRObjectFactory.buildFromJSON('Annotation', i));
          }          
        }
    }
}
