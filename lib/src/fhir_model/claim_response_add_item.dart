import 'extension.dart';
import 'fhir_object_factory.dart';
import 'element.dart';
import 'reference.dart';
import 'codeable_concept.dart';
import 'period.dart';
import 'address.dart';
import 'quantity.dart';
import 'money.dart';
import 'claim_response_adjudication.dart';
import 'claim_response_detail1.dart';
/// This resource provides the adjudication details from the processing of a Claim resource.
class ClaimResponseAddItem {
    /// Unique id for the element within a resource (for internal references). This may be any string value that does not contain spaces.
    String id;
    /// May be used to represent additional information that is not part of the basic definition of the element. To make the use of extensions safe and manageable, there is a strict set of governance  applied to the definition and use of extensions. Though any implementer can define an extension, there is a set of requirements that SHALL be met as part of the definition of the extension.
    List<Extension> extension;
    /// May be used to represent additional information that is not part of the basic definition of the element and that modifies the understanding of the element in which it is contained and/or the understanding of the containing element's descendants. Usually modifier elements provide negation or qualification. To make the use of extensions safe and manageable, there is a strict set of governance applied to the definition and use of extensions. Though any implementer can define an extension, there is a set of requirements that SHALL be met as part of the definition of the extension. Applications processing a resource are required to check for modifier extensions.
    /// 
    /// Modifier extensions SHALL NOT change the meaning of any elements on Resource or DomainResource (including cannot change the meaning of modifierExtension itself).
    List<Extension> modifierExtension;
    /// Claim items which this service line is intended to replace.
    List<int> itemSequence;
    /// Extensions for itemSequence
    List<Element> extItemSequence;
    /// The sequence number of the details within the claim item which this line is intended to replace.
    List<int> detailSequence;
    /// Extensions for detailSequence
    List<Element> extDetailSequence;
    /// The sequence number of the sub-details within the details within the claim item which this line is intended to replace.
    List<int> subdetailSequence;
    /// Extensions for subdetailSequence
    List<Element> extSubdetailSequence;
    /// The providers who are authorized for the services rendered to the patient.
    List<Reference> provider;
    /// When the value is a group code then this item collects a set of related claim details, otherwise this contains the product, service, drug or other billing code for the item.
    CodeableConcept productOrService;
    /// Item typification or modifiers codes to convey additional context for the product or service.
    List<CodeableConcept> modifier;
    /// Identifies the program under which this may be recovered.
    List<CodeableConcept> programCode;
    /// Extensions for servicedDate
    Element extServicedDate;
    /// The date or dates when the service or product was supplied, performed or completed.
    Period servicedPeriod;
    /// Where the product or service was provided.
    CodeableConcept locationCodeableConcept;
    /// Where the product or service was provided.
    Address locationAddress;
    /// Where the product or service was provided.
    Reference locationReference;
    /// The number of repetitions of a service or product.
    Quantity quantity;
    /// If the item is not a group then this is the fee for the product or service, otherwise this is the total of the fees for the details of the group.
    Money unitPrice;
    /// A real number that represents a multiplier used in determining the overall value of services delivered and/or goods received. The concept of a Factor allows for a discount or surcharge multiplier to be applied to a monetary amount.
    double factor;
    /// Extensions for factor
    Element extFactor;
    /// The quantity times the unit price for an additional service or product or charge.
    Money net;
    /// Physical service site on the patient (limb, tooth, etc.).
    CodeableConcept bodySite;
    /// A region or surface of the bodySite, e.g. limb region or tooth surface(s).
    List<CodeableConcept> subSite;
    /// The numbers associated with notes below which apply to the adjudication of this item.
    List<int> noteNumber;
    /// Extensions for noteNumber
    List<Element> extNoteNumber;
    /// The adjudication results.
    List<ClaimResponseAdjudication> adjudication;
    /// The second-tier service adjudications for payor added services.
    List<ClaimResponseDetail1> detail;
 
    ClaimResponseAddItem.fromJSON( Map json ){
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
        this.itemSequence = List<int>();
        if (json['itemSequence'] != null && json['itemSequence'].length > 0) {
          if( json['itemSequence'] is List ){
            json['itemSequence'].forEach((i){
              this.itemSequence.add(i);
            });
          } else {
            // this handles the case when the list only has one object and does not return as a list
            var i = json['itemSequence'];
            this.itemSequence.add(i);
          }          
        }
        this.extItemSequence = List<Element>();
        if (json['_itemSequence'] != null && json['_itemSequence'].length > 0) {
          if( json['_itemSequence'] is List ){
            json['_itemSequence'].forEach((i){
              this.extItemSequence.add(FHIRObjectFactory.buildFromJSON('Element', i));
            });
          } else {
            // this handles the case when the list only has one object and does not return as a list
            var i = json['_itemSequence'];
            this.extItemSequence.add(FHIRObjectFactory.buildFromJSON('Element', i));
          }          
        }
        this.detailSequence = List<int>();
        if (json['detailSequence'] != null && json['detailSequence'].length > 0) {
          if( json['detailSequence'] is List ){
            json['detailSequence'].forEach((i){
              this.detailSequence.add(i);
            });
          } else {
            // this handles the case when the list only has one object and does not return as a list
            var i = json['detailSequence'];
            this.detailSequence.add(i);
          }          
        }
        this.extDetailSequence = List<Element>();
        if (json['_detailSequence'] != null && json['_detailSequence'].length > 0) {
          if( json['_detailSequence'] is List ){
            json['_detailSequence'].forEach((i){
              this.extDetailSequence.add(FHIRObjectFactory.buildFromJSON('Element', i));
            });
          } else {
            // this handles the case when the list only has one object and does not return as a list
            var i = json['_detailSequence'];
            this.extDetailSequence.add(FHIRObjectFactory.buildFromJSON('Element', i));
          }          
        }
        this.subdetailSequence = List<int>();
        if (json['subdetailSequence'] != null && json['subdetailSequence'].length > 0) {
          if( json['subdetailSequence'] is List ){
            json['subdetailSequence'].forEach((i){
              this.subdetailSequence.add(i);
            });
          } else {
            // this handles the case when the list only has one object and does not return as a list
            var i = json['subdetailSequence'];
            this.subdetailSequence.add(i);
          }          
        }
        this.extSubdetailSequence = List<Element>();
        if (json['_subdetailSequence'] != null && json['_subdetailSequence'].length > 0) {
          if( json['_subdetailSequence'] is List ){
            json['_subdetailSequence'].forEach((i){
              this.extSubdetailSequence.add(FHIRObjectFactory.buildFromJSON('Element', i));
            });
          } else {
            // this handles the case when the list only has one object and does not return as a list
            var i = json['_subdetailSequence'];
            this.extSubdetailSequence.add(FHIRObjectFactory.buildFromJSON('Element', i));
          }          
        }
        this.provider = List<Reference>();
        if (json['provider'] != null && json['provider'].length > 0) {
          if( json['provider'] is List ){
            json['provider'].forEach((i){
              this.provider.add(FHIRObjectFactory.buildFromJSON('Reference', i));
            });
          } else {
            // this handles the case when the list only has one object and does not return as a list
            var i = json['provider'];
            this.provider.add(FHIRObjectFactory.buildFromJSON('Reference', i));
          }          
        }
        this.productOrService = json['productOrService'] == null ? null : FHIRObjectFactory.buildFromJSON('CodeableConcept', json['productOrService']);
        this.modifier = List<CodeableConcept>();
        if (json['modifier'] != null && json['modifier'].length > 0) {
          if( json['modifier'] is List ){
            json['modifier'].forEach((i){
              this.modifier.add(FHIRObjectFactory.buildFromJSON('CodeableConcept', i));
            });
          } else {
            // this handles the case when the list only has one object and does not return as a list
            var i = json['modifier'];
            this.modifier.add(FHIRObjectFactory.buildFromJSON('CodeableConcept', i));
          }          
        }
        this.programCode = List<CodeableConcept>();
        if (json['programCode'] != null && json['programCode'].length > 0) {
          if( json['programCode'] is List ){
            json['programCode'].forEach((i){
              this.programCode.add(FHIRObjectFactory.buildFromJSON('CodeableConcept', i));
            });
          } else {
            // this handles the case when the list only has one object and does not return as a list
            var i = json['programCode'];
            this.programCode.add(FHIRObjectFactory.buildFromJSON('CodeableConcept', i));
          }          
        }
        this.extServicedDate = json['_servicedDate'] == null ? null : FHIRObjectFactory.buildFromJSON('Element', json['_servicedDate']);
        this.servicedPeriod = json['servicedPeriod'] == null ? null : FHIRObjectFactory.buildFromJSON('Period', json['servicedPeriod']);
        this.locationCodeableConcept = json['locationCodeableConcept'] == null ? null : FHIRObjectFactory.buildFromJSON('CodeableConcept', json['locationCodeableConcept']);
        this.locationAddress = json['locationAddress'] == null ? null : FHIRObjectFactory.buildFromJSON('Address', json['locationAddress']);
        this.locationReference = json['locationReference'] == null ? null : FHIRObjectFactory.buildFromJSON('Reference', json['locationReference']);
        this.quantity = json['quantity'] == null ? null : FHIRObjectFactory.buildFromJSON('Quantity', json['quantity']);
        this.unitPrice = json['unitPrice'] == null ? null : FHIRObjectFactory.buildFromJSON('Money', json['unitPrice']);
        if( json['factor'] != null && json['factor'] is int ) {
          this.factor = json['factor'].toDouble();
        } else {
          this.factor = json['factor'];
        }
    
        this.extFactor = json['_factor'] == null ? null : FHIRObjectFactory.buildFromJSON('Element', json['_factor']);
        this.net = json['net'] == null ? null : FHIRObjectFactory.buildFromJSON('Money', json['net']);
        this.bodySite = json['bodySite'] == null ? null : FHIRObjectFactory.buildFromJSON('CodeableConcept', json['bodySite']);
        this.subSite = List<CodeableConcept>();
        if (json['subSite'] != null && json['subSite'].length > 0) {
          if( json['subSite'] is List ){
            json['subSite'].forEach((i){
              this.subSite.add(FHIRObjectFactory.buildFromJSON('CodeableConcept', i));
            });
          } else {
            // this handles the case when the list only has one object and does not return as a list
            var i = json['subSite'];
            this.subSite.add(FHIRObjectFactory.buildFromJSON('CodeableConcept', i));
          }          
        }
        this.noteNumber = List<int>();
        if (json['noteNumber'] != null && json['noteNumber'].length > 0) {
          if( json['noteNumber'] is List ){
            json['noteNumber'].forEach((i){
              this.noteNumber.add(i);
            });
          } else {
            // this handles the case when the list only has one object and does not return as a list
            var i = json['noteNumber'];
            this.noteNumber.add(i);
          }          
        }
        this.extNoteNumber = List<Element>();
        if (json['_noteNumber'] != null && json['_noteNumber'].length > 0) {
          if( json['_noteNumber'] is List ){
            json['_noteNumber'].forEach((i){
              this.extNoteNumber.add(FHIRObjectFactory.buildFromJSON('Element', i));
            });
          } else {
            // this handles the case when the list only has one object and does not return as a list
            var i = json['_noteNumber'];
            this.extNoteNumber.add(FHIRObjectFactory.buildFromJSON('Element', i));
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
        this.detail = List<ClaimResponseDetail1>();
        if (json['detail'] != null && json['detail'].length > 0) {
          if( json['detail'] is List ){
            json['detail'].forEach((i){
              this.detail.add(FHIRObjectFactory.buildFromJSON('ClaimResponseDetail1', i));
            });
          } else {
            // this handles the case when the list only has one object and does not return as a list
            var i = json['detail'];
            this.detail.add(FHIRObjectFactory.buildFromJSON('ClaimResponseDetail1', i));
          }          
        }
    }
}
