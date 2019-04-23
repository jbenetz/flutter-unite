import 'meta.dart';
import 'fhir_object_factory.dart';
import 'element.dart';
import 'narrative.dart';
import 'extension.dart';
import 'identifier.dart';
import 'codeable_concept.dart';
import 'reference.dart';
import 'period.dart';
import 'coverage_class.dart';
import 'coverage_cost_to_beneficiary.dart';
/// Financial instrument which may be used to reimburse or pay for health care products and services. Includes both insurance and self-payment.
class Coverage {
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
    /// A unique identifier assigned to this coverage.
    List<Identifier> identifier;
    /// The status of the resource instance.
    String status;
    /// Extensions for status
    Element extStatus;
    /// The type of coverage: social program, medical plan, accident coverage (workers compensation, auto), group health or payment by an individual or organization.
    CodeableConcept type;
    /// The party who 'owns' the insurance policy.
    Reference policyHolder;
    /// The party who has signed-up for or 'owns' the contractual relationship to the policy or to whom the benefit of the policy for services rendered to them or their family is due.
    Reference subscriber;
    /// The insurer assigned ID for the Subscriber.
    String subscriberId;
    /// Extensions for subscriberId
    Element extSubscriberId;
    /// The party who benefits from the insurance coverage; the patient when products and/or services are provided.
    Reference beneficiary;
    /// A unique identifier for a dependent under the coverage.
    String dependent;
    /// Extensions for dependent
    Element extDependent;
    /// The relationship of beneficiary (patient) to the subscriber.
    CodeableConcept relationship;
    /// Time period during which the coverage is in force. A missing start date indicates the start date isn't known, a missing end date means the coverage is continuing to be in force.
    Period period;
    /// The program or plan underwriter or payor including both insurance and non-insurance agreements, such as patient-pay agreements.
    List<Reference> payor;
    /// A suite of underwriter specific classifiers.
    List<CoverageClass> class1;
    /// The order of applicability of this coverage relative to other coverages which are currently in force. Note, there may be gaps in the numbering and this does not imply primary, secondary etc. as the specific positioning of coverages depends upon the episode of care.
    int order;
    /// Extensions for order
    Element extOrder;
    /// The insurer-specific identifier for the insurer-defined network of providers to which the beneficiary may seek treatment which will be covered at the 'in-network' rate, otherwise 'out of network' terms and conditions apply.
    String network;
    /// Extensions for network
    Element extNetwork;
    /// A suite of codes indicating the cost category and associated amount which have been detailed in the policy and may have been  included on the health card.
    List<CoverageCostToBeneficiary> costToBeneficiary;
    /// When 'subrogation=true' this insurance instance has been included not for adjudication but to provide insurers with the details to recover costs.
    bool subrogation;
    /// Extensions for subrogation
    Element extSubrogation;
    /// The policy(s) which constitute this insurance coverage.
    List<Reference> contract;
 
    Coverage.fromJSON( Map json ){
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
        this.policyHolder = json['policyHolder'] == null ? null : FHIRObjectFactory.buildFromJSON('Reference', json['policyHolder']);
        this.subscriber = json['subscriber'] == null ? null : FHIRObjectFactory.buildFromJSON('Reference', json['subscriber']);
        this.subscriberId = json['subscriberId'];
        this.extSubscriberId = json['_subscriberId'] == null ? null : FHIRObjectFactory.buildFromJSON('Element', json['_subscriberId']);
        this.beneficiary = json['beneficiary'] == null ? null : FHIRObjectFactory.buildFromJSON('Reference', json['beneficiary']);
        this.dependent = json['dependent'];
        this.extDependent = json['_dependent'] == null ? null : FHIRObjectFactory.buildFromJSON('Element', json['_dependent']);
        this.relationship = json['relationship'] == null ? null : FHIRObjectFactory.buildFromJSON('CodeableConcept', json['relationship']);
        this.period = json['period'] == null ? null : FHIRObjectFactory.buildFromJSON('Period', json['period']);
        this.payor = List<Reference>();
        if (json['payor'] != null && json['payor'].length > 0) {
          if( json['payor'] is List ){
            json['payor'].forEach((i){
              this.payor.add(FHIRObjectFactory.buildFromJSON('Reference', i));
            });
          } else {
            // this handles the case when the list only has one object and does not return as a list
            var i = json['payor'];
            this.payor.add(FHIRObjectFactory.buildFromJSON('Reference', i));
          }          
        }
        this.class1 = List<CoverageClass>();
        if (json['class'] != null && json['class'].length > 0) {
          if( json['class'] is List ){
            json['class'].forEach((i){
              this.class1.add(FHIRObjectFactory.buildFromJSON('CoverageClass', i));
            });
          } else {
            // this handles the case when the list only has one object and does not return as a list
            var i = json['class'];
            this.class1.add(FHIRObjectFactory.buildFromJSON('CoverageClass', i));
          }          
        }
        this.order = json['order'];
        this.extOrder = json['_order'] == null ? null : FHIRObjectFactory.buildFromJSON('Element', json['_order']);
        this.network = json['network'];
        this.extNetwork = json['_network'] == null ? null : FHIRObjectFactory.buildFromJSON('Element', json['_network']);
        this.costToBeneficiary = List<CoverageCostToBeneficiary>();
        if (json['costToBeneficiary'] != null && json['costToBeneficiary'].length > 0) {
          if( json['costToBeneficiary'] is List ){
            json['costToBeneficiary'].forEach((i){
              this.costToBeneficiary.add(FHIRObjectFactory.buildFromJSON('CoverageCostToBeneficiary', i));
            });
          } else {
            // this handles the case when the list only has one object and does not return as a list
            var i = json['costToBeneficiary'];
            this.costToBeneficiary.add(FHIRObjectFactory.buildFromJSON('CoverageCostToBeneficiary', i));
          }          
        }
        this.subrogation = json['subrogation'];
        this.extSubrogation = json['_subrogation'] == null ? null : FHIRObjectFactory.buildFromJSON('Element', json['_subrogation']);
        this.contract = List<Reference>();
        if (json['contract'] != null && json['contract'].length > 0) {
          if( json['contract'] is List ){
            json['contract'].forEach((i){
              this.contract.add(FHIRObjectFactory.buildFromJSON('Reference', i));
            });
          } else {
            // this handles the case when the list only has one object and does not return as a list
            var i = json['contract'];
            this.contract.add(FHIRObjectFactory.buildFromJSON('Reference', i));
          }          
        }
    }
}
