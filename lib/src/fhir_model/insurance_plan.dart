import 'meta.dart';
import 'fhir_object_factory.dart';
import 'element.dart';
import 'narrative.dart';
import 'extension.dart';
import 'identifier.dart';
import 'codeable_concept.dart';
import 'period.dart';
import 'reference.dart';
import 'insurance_plan_contact.dart';
import 'insurance_plan_coverage.dart';
import 'insurance_plan_plan.dart';
/// Details of a Health Insurance product/plan provided by an organization.
class InsurancePlan {
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
    /// Business identifiers assigned to this health insurance product which remain constant as the resource is updated and propagates from server to server.
    List<Identifier> identifier;
    /// The current state of the health insurance product.
    String status;
    /// Extensions for status
    Element extStatus;
    /// The kind of health insurance product.
    List<CodeableConcept> type;
    /// Official name of the health insurance product as designated by the owner.
    String name;
    /// Extensions for name
    Element extName;
    /// A list of alternate names that the product is known as, or was known as in the past.
    List<String> alias;
    /// Extensions for alias
    List<Element> extAlias;
    /// The period of time that the health insurance product is available.
    Period period;
    /// The entity that is providing  the health insurance product and underwriting the risk.  This is typically an insurance carriers, other third-party payers, or health plan sponsors comonly referred to as 'payers'.
    Reference ownedBy;
    /// An organization which administer other services such as underwriting, customer service and/or claims processing on behalf of the health insurance product owner.
    Reference administeredBy;
    /// The geographic region in which a health insurance product's benefits apply.
    List<Reference> coverageArea;
    /// The contact for the health insurance product for a certain purpose.
    List<InsurancePlanContact> contact;
    /// The technical endpoints providing access to services operated for the health insurance product.
    List<Reference> endpoint;
    /// Reference to the network included in the health insurance product.
    List<Reference> network;
    /// Details about the coverage offered by the insurance product.
    List<InsurancePlanCoverage> coverage;
    /// Details about an insurance plan.
    List<InsurancePlanPlan> plan;
 
    InsurancePlan.fromJSON( Map json ){
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
        this.type = List<CodeableConcept>();
        if (json['type'] != null && json['type'].length > 0) {
          if( json['type'] is List ){
            json['type'].forEach((i){
              this.type.add(FHIRObjectFactory.buildFromJSON('CodeableConcept', i));
            });
          } else {
            // this handles the case when the list only has one object and does not return as a list
            var i = json['type'];
            this.type.add(FHIRObjectFactory.buildFromJSON('CodeableConcept', i));
          }          
        }
        this.name = json['name'];
        this.extName = json['_name'] == null ? null : FHIRObjectFactory.buildFromJSON('Element', json['_name']);
        this.alias = List<String>();
        if (json['alias'] != null && json['alias'].length > 0) {
          if( json['alias'] is List ){
            json['alias'].forEach((i){
              this.alias.add(i);
            });
          } else {
            // this handles the case when the list only has one object and does not return as a list
            var i = json['alias'];
            this.alias.add(i);
          }          
        }
        this.extAlias = List<Element>();
        if (json['_alias'] != null && json['_alias'].length > 0) {
          if( json['_alias'] is List ){
            json['_alias'].forEach((i){
              this.extAlias.add(FHIRObjectFactory.buildFromJSON('Element', i));
            });
          } else {
            // this handles the case when the list only has one object and does not return as a list
            var i = json['_alias'];
            this.extAlias.add(FHIRObjectFactory.buildFromJSON('Element', i));
          }          
        }
        this.period = json['period'] == null ? null : FHIRObjectFactory.buildFromJSON('Period', json['period']);
        this.ownedBy = json['ownedBy'] == null ? null : FHIRObjectFactory.buildFromJSON('Reference', json['ownedBy']);
        this.administeredBy = json['administeredBy'] == null ? null : FHIRObjectFactory.buildFromJSON('Reference', json['administeredBy']);
        this.coverageArea = List<Reference>();
        if (json['coverageArea'] != null && json['coverageArea'].length > 0) {
          if( json['coverageArea'] is List ){
            json['coverageArea'].forEach((i){
              this.coverageArea.add(FHIRObjectFactory.buildFromJSON('Reference', i));
            });
          } else {
            // this handles the case when the list only has one object and does not return as a list
            var i = json['coverageArea'];
            this.coverageArea.add(FHIRObjectFactory.buildFromJSON('Reference', i));
          }          
        }
        this.contact = List<InsurancePlanContact>();
        if (json['contact'] != null && json['contact'].length > 0) {
          if( json['contact'] is List ){
            json['contact'].forEach((i){
              this.contact.add(FHIRObjectFactory.buildFromJSON('InsurancePlanContact', i));
            });
          } else {
            // this handles the case when the list only has one object and does not return as a list
            var i = json['contact'];
            this.contact.add(FHIRObjectFactory.buildFromJSON('InsurancePlanContact', i));
          }          
        }
        this.endpoint = List<Reference>();
        if (json['endpoint'] != null && json['endpoint'].length > 0) {
          if( json['endpoint'] is List ){
            json['endpoint'].forEach((i){
              this.endpoint.add(FHIRObjectFactory.buildFromJSON('Reference', i));
            });
          } else {
            // this handles the case when the list only has one object and does not return as a list
            var i = json['endpoint'];
            this.endpoint.add(FHIRObjectFactory.buildFromJSON('Reference', i));
          }          
        }
        this.network = List<Reference>();
        if (json['network'] != null && json['network'].length > 0) {
          if( json['network'] is List ){
            json['network'].forEach((i){
              this.network.add(FHIRObjectFactory.buildFromJSON('Reference', i));
            });
          } else {
            // this handles the case when the list only has one object and does not return as a list
            var i = json['network'];
            this.network.add(FHIRObjectFactory.buildFromJSON('Reference', i));
          }          
        }
        this.coverage = List<InsurancePlanCoverage>();
        if (json['coverage'] != null && json['coverage'].length > 0) {
          if( json['coverage'] is List ){
            json['coverage'].forEach((i){
              this.coverage.add(FHIRObjectFactory.buildFromJSON('InsurancePlanCoverage', i));
            });
          } else {
            // this handles the case when the list only has one object and does not return as a list
            var i = json['coverage'];
            this.coverage.add(FHIRObjectFactory.buildFromJSON('InsurancePlanCoverage', i));
          }          
        }
        this.plan = List<InsurancePlanPlan>();
        if (json['plan'] != null && json['plan'].length > 0) {
          if( json['plan'] is List ){
            json['plan'].forEach((i){
              this.plan.add(FHIRObjectFactory.buildFromJSON('InsurancePlanPlan', i));
            });
          } else {
            // this handles the case when the list only has one object and does not return as a list
            var i = json['plan'];
            this.plan.add(FHIRObjectFactory.buildFromJSON('InsurancePlanPlan', i));
          }          
        }
    }
}
