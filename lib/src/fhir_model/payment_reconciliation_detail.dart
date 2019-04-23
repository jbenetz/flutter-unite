import 'extension.dart';
import 'fhir_object_factory.dart';
import 'identifier.dart';
import 'codeable_concept.dart';
import 'reference.dart';
import 'element.dart';
import 'money.dart';
/// This resource provides the details including amount of a payment and allocates the payment items being paid.
class PaymentReconciliationDetail {
    /// Unique id for the element within a resource (for internal references). This may be any string value that does not contain spaces.
    String id;
    /// May be used to represent additional information that is not part of the basic definition of the element. To make the use of extensions safe and manageable, there is a strict set of governance  applied to the definition and use of extensions. Though any implementer can define an extension, there is a set of requirements that SHALL be met as part of the definition of the extension.
    List<Extension> extension;
    /// May be used to represent additional information that is not part of the basic definition of the element and that modifies the understanding of the element in which it is contained and/or the understanding of the containing element's descendants. Usually modifier elements provide negation or qualification. To make the use of extensions safe and manageable, there is a strict set of governance applied to the definition and use of extensions. Though any implementer can define an extension, there is a set of requirements that SHALL be met as part of the definition of the extension. Applications processing a resource are required to check for modifier extensions.
    /// 
    /// Modifier extensions SHALL NOT change the meaning of any elements on Resource or DomainResource (including cannot change the meaning of modifierExtension itself).
    List<Extension> modifierExtension;
    /// Unique identifier for the current payment item for the referenced payable.
    Identifier identifier;
    /// Unique identifier for the prior payment item for the referenced payable.
    Identifier predecessor;
    /// Code to indicate the nature of the payment.
    CodeableConcept type;
    /// A resource, such as a Claim, the evaluation of which could lead to payment.
    Reference request;
    /// The party which submitted the claim or financial transaction.
    Reference submitter;
    /// A resource, such as a ClaimResponse, which contains a commitment to payment.
    Reference response;
    /// The date from the response resource containing a commitment to pay.
    DateTime date;
    /// Extensions for date
    Element extDate;
    /// A reference to the individual who is responsible for inquiries regarding the response and its payment.
    Reference responsible;
    /// The party which is receiving the payment.
    Reference payee;
    /// The monetary amount allocated from the total payment to the payable.
    Money amount;
 
    PaymentReconciliationDetail.fromJSON( Map json ){
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
        this.identifier = json['identifier'] == null ? null : FHIRObjectFactory.buildFromJSON('Identifier', json['identifier']);
        this.predecessor = json['predecessor'] == null ? null : FHIRObjectFactory.buildFromJSON('Identifier', json['predecessor']);
        this.type = json['type'] == null ? null : FHIRObjectFactory.buildFromJSON('CodeableConcept', json['type']);
        this.request = json['request'] == null ? null : FHIRObjectFactory.buildFromJSON('Reference', json['request']);
        this.submitter = json['submitter'] == null ? null : FHIRObjectFactory.buildFromJSON('Reference', json['submitter']);
        this.response = json['response'] == null ? null : FHIRObjectFactory.buildFromJSON('Reference', json['response']);
        if( json['date'] != null ) { this.date = DateTime.parse(json['date']);}
        this.extDate = json['_date'] == null ? null : FHIRObjectFactory.buildFromJSON('Element', json['_date']);
        this.responsible = json['responsible'] == null ? null : FHIRObjectFactory.buildFromJSON('Reference', json['responsible']);
        this.payee = json['payee'] == null ? null : FHIRObjectFactory.buildFromJSON('Reference', json['payee']);
        this.amount = json['amount'] == null ? null : FHIRObjectFactory.buildFromJSON('Money', json['amount']);
    }
}
