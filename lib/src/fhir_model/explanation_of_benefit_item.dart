import 'extension.dart';
import 'fhir_object_factory.dart';
import 'element.dart';
import 'codeable_concept.dart';
import 'period.dart';
import 'address.dart';
import 'reference.dart';
import 'quantity.dart';
import 'money.dart';
import 'explanation_of_benefit_adjudication.dart';
import 'explanation_of_benefit_detail.dart';
/// This resource provides: the claim details; adjudication details from the processing of a Claim; and optionally account balance information, for informing the subscriber of the benefits provided.
class ExplanationOfBenefitItem {
    /// Unique id for the element within a resource (for internal references). This may be any string value that does not contain spaces.
    String id;
    /// May be used to represent additional information that is not part of the basic definition of the element. To make the use of extensions safe and manageable, there is a strict set of governance  applied to the definition and use of extensions. Though any implementer can define an extension, there is a set of requirements that SHALL be met as part of the definition of the extension.
    List<Extension> extension;
    /// May be used to represent additional information that is not part of the basic definition of the element and that modifies the understanding of the element in which it is contained and/or the understanding of the containing element's descendants. Usually modifier elements provide negation or qualification. To make the use of extensions safe and manageable, there is a strict set of governance applied to the definition and use of extensions. Though any implementer can define an extension, there is a set of requirements that SHALL be met as part of the definition of the extension. Applications processing a resource are required to check for modifier extensions.
    /// 
    /// Modifier extensions SHALL NOT change the meaning of any elements on Resource or DomainResource (including cannot change the meaning of modifierExtension itself).
    List<Extension> modifierExtension;
    /// A number to uniquely identify item entries.
    int sequence;
    /// Extensions for sequence
    Element extSequence;
    /// Care team members related to this service or product.
    List<int> careTeamSequence;
    /// Extensions for careTeamSequence
    List<Element> extCareTeamSequence;
    /// Diagnoses applicable for this service or product.
    List<int> diagnosisSequence;
    /// Extensions for diagnosisSequence
    List<Element> extDiagnosisSequence;
    /// Procedures applicable for this service or product.
    List<int> procedureSequence;
    /// Extensions for procedureSequence
    List<Element> extProcedureSequence;
    /// Exceptions, special conditions and supporting information applicable for this service or product.
    List<int> informationSequence;
    /// Extensions for informationSequence
    List<Element> extInformationSequence;
    /// The type of revenue or cost center providing the product and/or service.
    CodeableConcept revenue;
    /// Code to identify the general type of benefits under which products and services are provided.
    CodeableConcept category;
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
    /// Unique Device Identifiers associated with this line item.
    List<Reference> udi;
    /// Physical service site on the patient (limb, tooth, etc.).
    CodeableConcept bodySite;
    /// A region or surface of the bodySite, e.g. limb region or tooth surface(s).
    List<CodeableConcept> subSite;
    /// A billed item may include goods or services provided in multiple encounters.
    List<Reference> encounter;
    /// The numbers associated with notes below which apply to the adjudication of this item.
    List<int> noteNumber;
    /// Extensions for noteNumber
    List<Element> extNoteNumber;
    /// If this item is a group then the values here are a summary of the adjudication of the detail items. If this item is a simple product or service then this is the result of the adjudication of this item.
    List<ExplanationOfBenefitAdjudication> adjudication;
    /// Second-tier of goods and services.
    List<ExplanationOfBenefitDetail> detail;
 
    ExplanationOfBenefitItem.fromJSON( Map json ){
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
        this.sequence = json['sequence'];
        this.extSequence = json['_sequence'] == null ? null : FHIRObjectFactory.buildFromJSON('Element', json['_sequence']);
        this.careTeamSequence = List<int>();
        if (json['careTeamSequence'] != null && json['careTeamSequence'].length > 0) {
          if( json['careTeamSequence'] is List ){
            json['careTeamSequence'].forEach((i){
              this.careTeamSequence.add(i);
            });
          } else {
            // this handles the case when the list only has one object and does not return as a list
            var i = json['careTeamSequence'];
            this.careTeamSequence.add(i);
          }          
        }
        this.extCareTeamSequence = List<Element>();
        if (json['_careTeamSequence'] != null && json['_careTeamSequence'].length > 0) {
          if( json['_careTeamSequence'] is List ){
            json['_careTeamSequence'].forEach((i){
              this.extCareTeamSequence.add(FHIRObjectFactory.buildFromJSON('Element', i));
            });
          } else {
            // this handles the case when the list only has one object and does not return as a list
            var i = json['_careTeamSequence'];
            this.extCareTeamSequence.add(FHIRObjectFactory.buildFromJSON('Element', i));
          }          
        }
        this.diagnosisSequence = List<int>();
        if (json['diagnosisSequence'] != null && json['diagnosisSequence'].length > 0) {
          if( json['diagnosisSequence'] is List ){
            json['diagnosisSequence'].forEach((i){
              this.diagnosisSequence.add(i);
            });
          } else {
            // this handles the case when the list only has one object and does not return as a list
            var i = json['diagnosisSequence'];
            this.diagnosisSequence.add(i);
          }          
        }
        this.extDiagnosisSequence = List<Element>();
        if (json['_diagnosisSequence'] != null && json['_diagnosisSequence'].length > 0) {
          if( json['_diagnosisSequence'] is List ){
            json['_diagnosisSequence'].forEach((i){
              this.extDiagnosisSequence.add(FHIRObjectFactory.buildFromJSON('Element', i));
            });
          } else {
            // this handles the case when the list only has one object and does not return as a list
            var i = json['_diagnosisSequence'];
            this.extDiagnosisSequence.add(FHIRObjectFactory.buildFromJSON('Element', i));
          }          
        }
        this.procedureSequence = List<int>();
        if (json['procedureSequence'] != null && json['procedureSequence'].length > 0) {
          if( json['procedureSequence'] is List ){
            json['procedureSequence'].forEach((i){
              this.procedureSequence.add(i);
            });
          } else {
            // this handles the case when the list only has one object and does not return as a list
            var i = json['procedureSequence'];
            this.procedureSequence.add(i);
          }          
        }
        this.extProcedureSequence = List<Element>();
        if (json['_procedureSequence'] != null && json['_procedureSequence'].length > 0) {
          if( json['_procedureSequence'] is List ){
            json['_procedureSequence'].forEach((i){
              this.extProcedureSequence.add(FHIRObjectFactory.buildFromJSON('Element', i));
            });
          } else {
            // this handles the case when the list only has one object and does not return as a list
            var i = json['_procedureSequence'];
            this.extProcedureSequence.add(FHIRObjectFactory.buildFromJSON('Element', i));
          }          
        }
        this.informationSequence = List<int>();
        if (json['informationSequence'] != null && json['informationSequence'].length > 0) {
          if( json['informationSequence'] is List ){
            json['informationSequence'].forEach((i){
              this.informationSequence.add(i);
            });
          } else {
            // this handles the case when the list only has one object and does not return as a list
            var i = json['informationSequence'];
            this.informationSequence.add(i);
          }          
        }
        this.extInformationSequence = List<Element>();
        if (json['_informationSequence'] != null && json['_informationSequence'].length > 0) {
          if( json['_informationSequence'] is List ){
            json['_informationSequence'].forEach((i){
              this.extInformationSequence.add(FHIRObjectFactory.buildFromJSON('Element', i));
            });
          } else {
            // this handles the case when the list only has one object and does not return as a list
            var i = json['_informationSequence'];
            this.extInformationSequence.add(FHIRObjectFactory.buildFromJSON('Element', i));
          }          
        }
        this.revenue = json['revenue'] == null ? null : FHIRObjectFactory.buildFromJSON('CodeableConcept', json['revenue']);
        this.category = json['category'] == null ? null : FHIRObjectFactory.buildFromJSON('CodeableConcept', json['category']);
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
        this.udi = List<Reference>();
        if (json['udi'] != null && json['udi'].length > 0) {
          if( json['udi'] is List ){
            json['udi'].forEach((i){
              this.udi.add(FHIRObjectFactory.buildFromJSON('Reference', i));
            });
          } else {
            // this handles the case when the list only has one object and does not return as a list
            var i = json['udi'];
            this.udi.add(FHIRObjectFactory.buildFromJSON('Reference', i));
          }          
        }
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
        this.encounter = List<Reference>();
        if (json['encounter'] != null && json['encounter'].length > 0) {
          if( json['encounter'] is List ){
            json['encounter'].forEach((i){
              this.encounter.add(FHIRObjectFactory.buildFromJSON('Reference', i));
            });
          } else {
            // this handles the case when the list only has one object and does not return as a list
            var i = json['encounter'];
            this.encounter.add(FHIRObjectFactory.buildFromJSON('Reference', i));
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
        this.detail = List<ExplanationOfBenefitDetail>();
        if (json['detail'] != null && json['detail'].length > 0) {
          if( json['detail'] is List ){
            json['detail'].forEach((i){
              this.detail.add(FHIRObjectFactory.buildFromJSON('ExplanationOfBenefitDetail', i));
            });
          } else {
            // this handles the case when the list only has one object and does not return as a list
            var i = json['detail'];
            this.detail.add(FHIRObjectFactory.buildFromJSON('ExplanationOfBenefitDetail', i));
          }          
        }
    }
}
