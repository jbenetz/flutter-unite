import 'extension.dart';
import 'fhir_object_factory.dart';
import 'codeable_concept.dart';
import 'reference.dart';
import 'identifier.dart';
import 'element.dart';
import 'quantity.dart';
import 'money.dart';
/// Legally enforceable, formally recorded unilateral or bilateral directive i.e., a policy or agreement.
class ContractValuedItem {
    /// Unique id for the element within a resource (for internal references). This may be any string value that does not contain spaces.
    String id;
    /// May be used to represent additional information that is not part of the basic definition of the element. To make the use of extensions safe and manageable, there is a strict set of governance  applied to the definition and use of extensions. Though any implementer can define an extension, there is a set of requirements that SHALL be met as part of the definition of the extension.
    List<Extension> extension;
    /// May be used to represent additional information that is not part of the basic definition of the element and that modifies the understanding of the element in which it is contained and/or the understanding of the containing element's descendants. Usually modifier elements provide negation or qualification. To make the use of extensions safe and manageable, there is a strict set of governance applied to the definition and use of extensions. Though any implementer can define an extension, there is a set of requirements that SHALL be met as part of the definition of the extension. Applications processing a resource are required to check for modifier extensions.
    /// 
    /// Modifier extensions SHALL NOT change the meaning of any elements on Resource or DomainResource (including cannot change the meaning of modifierExtension itself).
    List<Extension> modifierExtension;
    /// Specific type of Contract Valued Item that may be priced.
    CodeableConcept entityCodeableConcept;
    /// Specific type of Contract Valued Item that may be priced.
    Reference entityReference;
    /// Identifies a Contract Valued Item instance.
    Identifier identifier;
    /// Indicates the time during which this Contract ValuedItem information is effective.
    DateTime effectiveTime;
    /// Extensions for effectiveTime
    Element extEffectiveTime;
    /// Specifies the units by which the Contract Valued Item is measured or counted, and quantifies the countable or measurable Contract Valued Item instances.
    Quantity quantity;
    /// A Contract Valued Item unit valuation measure.
    Money unitPrice;
    /// A real number that represents a multiplier used in determining the overall value of the Contract Valued Item delivered. The concept of a Factor allows for a discount or surcharge multiplier to be applied to a monetary amount.
    double factor;
    /// Extensions for factor
    Element extFactor;
    /// An amount that expresses the weighting (based on difficulty, cost and/or resource intensiveness) associated with the Contract Valued Item delivered. The concept of Points allows for assignment of point values for a Contract Valued Item, such that a monetary amount can be assigned to each point.
    double points;
    /// Extensions for points
    Element extPoints;
    /// Expresses the product of the Contract Valued Item unitQuantity and the unitPriceAmt. For example, the formula: unit Quantity * unit Price (Cost per Point) * factor Number  * points = net Amount. Quantity, factor and points are assumed to be 1 if not supplied.
    Money net;
    /// Terms of valuation.
    String payment;
    /// Extensions for payment
    Element extPayment;
    /// When payment is due.
    DateTime paymentDate;
    /// Extensions for paymentDate
    Element extPaymentDate;
    /// Who will make payment.
    Reference responsible;
    /// Who will receive payment.
    Reference recipient;
    /// Id  of the clause or question text related to the context of this valuedItem in the referenced form or QuestionnaireResponse.
    List<String> linkId;
    /// Extensions for linkId
    List<Element> extLinkId;
    /// A set of security labels that define which terms are controlled by this condition.
    List<int> securityLabelNumber;
    /// Extensions for securityLabelNumber
    List<Element> extSecurityLabelNumber;
 
    ContractValuedItem.fromJSON( Map json ){
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
        this.entityCodeableConcept = json['entityCodeableConcept'] == null ? null : FHIRObjectFactory.buildFromJSON('CodeableConcept', json['entityCodeableConcept']);
        this.entityReference = json['entityReference'] == null ? null : FHIRObjectFactory.buildFromJSON('Reference', json['entityReference']);
        this.identifier = json['identifier'] == null ? null : FHIRObjectFactory.buildFromJSON('Identifier', json['identifier']);
        if( json['effectiveTime'] != null ) { this.effectiveTime = DateTime.parse(json['effectiveTime']);}
        this.extEffectiveTime = json['_effectiveTime'] == null ? null : FHIRObjectFactory.buildFromJSON('Element', json['_effectiveTime']);
        this.quantity = json['quantity'] == null ? null : FHIRObjectFactory.buildFromJSON('Quantity', json['quantity']);
        this.unitPrice = json['unitPrice'] == null ? null : FHIRObjectFactory.buildFromJSON('Money', json['unitPrice']);
        if( json['factor'] != null && json['factor'] is int ) {
          this.factor = json['factor'].toDouble();
        } else {
          this.factor = json['factor'];
        }
    
        this.extFactor = json['_factor'] == null ? null : FHIRObjectFactory.buildFromJSON('Element', json['_factor']);
        if( json['points'] != null && json['points'] is int ) {
          this.points = json['points'].toDouble();
        } else {
          this.points = json['points'];
        }
    
        this.extPoints = json['_points'] == null ? null : FHIRObjectFactory.buildFromJSON('Element', json['_points']);
        this.net = json['net'] == null ? null : FHIRObjectFactory.buildFromJSON('Money', json['net']);
        this.payment = json['payment'];
        this.extPayment = json['_payment'] == null ? null : FHIRObjectFactory.buildFromJSON('Element', json['_payment']);
        if( json['paymentDate'] != null ) { this.paymentDate = DateTime.parse(json['paymentDate']);}
        this.extPaymentDate = json['_paymentDate'] == null ? null : FHIRObjectFactory.buildFromJSON('Element', json['_paymentDate']);
        this.responsible = json['responsible'] == null ? null : FHIRObjectFactory.buildFromJSON('Reference', json['responsible']);
        this.recipient = json['recipient'] == null ? null : FHIRObjectFactory.buildFromJSON('Reference', json['recipient']);
        this.linkId = List<String>();
        if (json['linkId'] != null && json['linkId'].length > 0) {
          if( json['linkId'] is List ){
            json['linkId'].forEach((i){
              this.linkId.add(i);
            });
          } else {
            // this handles the case when the list only has one object and does not return as a list
            var i = json['linkId'];
            this.linkId.add(i);
          }          
        }
        this.extLinkId = List<Element>();
        if (json['_linkId'] != null && json['_linkId'].length > 0) {
          if( json['_linkId'] is List ){
            json['_linkId'].forEach((i){
              this.extLinkId.add(FHIRObjectFactory.buildFromJSON('Element', i));
            });
          } else {
            // this handles the case when the list only has one object and does not return as a list
            var i = json['_linkId'];
            this.extLinkId.add(FHIRObjectFactory.buildFromJSON('Element', i));
          }          
        }
        this.securityLabelNumber = List<int>();
        if (json['securityLabelNumber'] != null && json['securityLabelNumber'].length > 0) {
          if( json['securityLabelNumber'] is List ){
            json['securityLabelNumber'].forEach((i){
              this.securityLabelNumber.add(i);
            });
          } else {
            // this handles the case when the list only has one object and does not return as a list
            var i = json['securityLabelNumber'];
            this.securityLabelNumber.add(i);
          }          
        }
        this.extSecurityLabelNumber = List<Element>();
        if (json['_securityLabelNumber'] != null && json['_securityLabelNumber'].length > 0) {
          if( json['_securityLabelNumber'] is List ){
            json['_securityLabelNumber'].forEach((i){
              this.extSecurityLabelNumber.add(FHIRObjectFactory.buildFromJSON('Element', i));
            });
          } else {
            // this handles the case when the list only has one object and does not return as a list
            var i = json['_securityLabelNumber'];
            this.extSecurityLabelNumber.add(FHIRObjectFactory.buildFromJSON('Element', i));
          }          
        }
    }
}
