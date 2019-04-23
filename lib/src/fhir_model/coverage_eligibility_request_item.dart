import 'extension.dart';
import 'fhir_object_factory.dart';
import 'element.dart';
import 'codeable_concept.dart';
import 'reference.dart';
import 'quantity.dart';
import 'money.dart';
import 'coverage_eligibility_request_diagnosis.dart';
/// The CoverageEligibilityRequest provides patient and insurance coverage information to an insurer for them to respond, in the form of an CoverageEligibilityResponse, with information regarding whether the stated coverage is valid and in-force and optionally to provide the insurance details of the policy.
class CoverageEligibilityRequestItem {
    /// Unique id for the element within a resource (for internal references). This may be any string value that does not contain spaces.
    String id;
    /// May be used to represent additional information that is not part of the basic definition of the element. To make the use of extensions safe and manageable, there is a strict set of governance  applied to the definition and use of extensions. Though any implementer can define an extension, there is a set of requirements that SHALL be met as part of the definition of the extension.
    List<Extension> extension;
    /// May be used to represent additional information that is not part of the basic definition of the element and that modifies the understanding of the element in which it is contained and/or the understanding of the containing element's descendants. Usually modifier elements provide negation or qualification. To make the use of extensions safe and manageable, there is a strict set of governance applied to the definition and use of extensions. Though any implementer can define an extension, there is a set of requirements that SHALL be met as part of the definition of the extension. Applications processing a resource are required to check for modifier extensions.
    /// 
    /// Modifier extensions SHALL NOT change the meaning of any elements on Resource or DomainResource (including cannot change the meaning of modifierExtension itself).
    List<Extension> modifierExtension;
    /// Exceptions, special conditions and supporting information applicable for this service or product line.
    List<int> supportingInfoSequence;
    /// Extensions for supportingInfoSequence
    List<Element> extSupportingInfoSequence;
    /// Code to identify the general type of benefits under which products and services are provided.
    CodeableConcept category;
    /// This contains the product, service, drug or other billing code for the item.
    CodeableConcept productOrService;
    /// Item typification or modifiers codes to convey additional context for the product or service.
    List<CodeableConcept> modifier;
    /// The practitioner who is responsible for the product or service to be rendered to the patient.
    Reference provider;
    /// The number of repetitions of a service or product.
    Quantity quantity;
    /// The amount charged to the patient by the provider for a single unit.
    Money unitPrice;
    /// Facility where the services will be provided.
    Reference facility;
    /// Patient diagnosis for which care is sought.
    List<CoverageEligibilityRequestDiagnosis> diagnosis;
    /// The plan/proposal/order describing the proposed service in detail.
    List<Reference> detail;
 
    CoverageEligibilityRequestItem.fromJSON( Map json ){
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
        this.supportingInfoSequence = List<int>();
        if (json['supportingInfoSequence'] != null && json['supportingInfoSequence'].length > 0) {
          if( json['supportingInfoSequence'] is List ){
            json['supportingInfoSequence'].forEach((i){
              this.supportingInfoSequence.add(i);
            });
          } else {
            // this handles the case when the list only has one object and does not return as a list
            var i = json['supportingInfoSequence'];
            this.supportingInfoSequence.add(i);
          }          
        }
        this.extSupportingInfoSequence = List<Element>();
        if (json['_supportingInfoSequence'] != null && json['_supportingInfoSequence'].length > 0) {
          if( json['_supportingInfoSequence'] is List ){
            json['_supportingInfoSequence'].forEach((i){
              this.extSupportingInfoSequence.add(FHIRObjectFactory.buildFromJSON('Element', i));
            });
          } else {
            // this handles the case when the list only has one object and does not return as a list
            var i = json['_supportingInfoSequence'];
            this.extSupportingInfoSequence.add(FHIRObjectFactory.buildFromJSON('Element', i));
          }          
        }
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
        this.provider = json['provider'] == null ? null : FHIRObjectFactory.buildFromJSON('Reference', json['provider']);
        this.quantity = json['quantity'] == null ? null : FHIRObjectFactory.buildFromJSON('Quantity', json['quantity']);
        this.unitPrice = json['unitPrice'] == null ? null : FHIRObjectFactory.buildFromJSON('Money', json['unitPrice']);
        this.facility = json['facility'] == null ? null : FHIRObjectFactory.buildFromJSON('Reference', json['facility']);
        this.diagnosis = List<CoverageEligibilityRequestDiagnosis>();
        if (json['diagnosis'] != null && json['diagnosis'].length > 0) {
          if( json['diagnosis'] is List ){
            json['diagnosis'].forEach((i){
              this.diagnosis.add(FHIRObjectFactory.buildFromJSON('CoverageEligibilityRequestDiagnosis', i));
            });
          } else {
            // this handles the case when the list only has one object and does not return as a list
            var i = json['diagnosis'];
            this.diagnosis.add(FHIRObjectFactory.buildFromJSON('CoverageEligibilityRequestDiagnosis', i));
          }          
        }
        this.detail = List<Reference>();
        if (json['detail'] != null && json['detail'].length > 0) {
          if( json['detail'] is List ){
            json['detail'].forEach((i){
              this.detail.add(FHIRObjectFactory.buildFromJSON('Reference', i));
            });
          } else {
            // this handles the case when the list only has one object and does not return as a list
            var i = json['detail'];
            this.detail.add(FHIRObjectFactory.buildFromJSON('Reference', i));
          }          
        }
    }
}
