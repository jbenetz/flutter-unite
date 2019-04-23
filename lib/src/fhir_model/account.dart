import 'meta.dart';
import 'fhir_object_factory.dart';
import 'element.dart';
import 'narrative.dart';
import 'extension.dart';
import 'identifier.dart';
import 'codeable_concept.dart';
import 'reference.dart';
import 'period.dart';
import 'account_coverage.dart';
import 'account_guarantor.dart';
/// A financial tool for tracking value accrued for a particular purpose.  In the healthcare field, used to track charges for a patient, cost centers, etc.
class Account {
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
    /// Unique identifier used to reference the account.  Might or might not be intended for human use (e.g. credit card number).
    List<Identifier> identifier;
    /// Indicates whether the account is presently used/usable or not.
    String status;
    /// Extensions for status
    Element extStatus;
    /// Categorizes the account for reporting and searching purposes.
    CodeableConcept type;
    /// Name used for the account when displaying it to humans in reports, etc.
    String name;
    /// Extensions for name
    Element extName;
    /// Identifies the entity which incurs the expenses. While the immediate recipients of services or goods might be entities related to the subject, the expenses were ultimately incurred by the subject of the Account.
    List<Reference> subject;
    /// The date range of services associated with this account.
    Period servicePeriod;
    /// The party(s) that are responsible for covering the payment of this account, and what order should they be applied to the account.
    List<AccountCoverage> coverage;
    /// Indicates the service area, hospital, department, etc. with responsibility for managing the Account.
    Reference owner;
    /// Provides additional information about what the account tracks and how it is used.
    String description;
    /// Extensions for description
    Element extDescription;
    /// The parties responsible for balancing the account if other payment options fall short.
    List<AccountGuarantor> guarantor;
    /// Reference to a parent Account.
    Reference partOf;
 
    Account.fromJSON( Map json ){
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
        this.name = json['name'];
        this.extName = json['_name'] == null ? null : FHIRObjectFactory.buildFromJSON('Element', json['_name']);
        this.subject = List<Reference>();
        if (json['subject'] != null && json['subject'].length > 0) {
          if( json['subject'] is List ){
            json['subject'].forEach((i){
              this.subject.add(FHIRObjectFactory.buildFromJSON('Reference', i));
            });
          } else {
            // this handles the case when the list only has one object and does not return as a list
            var i = json['subject'];
            this.subject.add(FHIRObjectFactory.buildFromJSON('Reference', i));
          }          
        }
        this.servicePeriod = json['servicePeriod'] == null ? null : FHIRObjectFactory.buildFromJSON('Period', json['servicePeriod']);
        this.coverage = List<AccountCoverage>();
        if (json['coverage'] != null && json['coverage'].length > 0) {
          if( json['coverage'] is List ){
            json['coverage'].forEach((i){
              this.coverage.add(FHIRObjectFactory.buildFromJSON('AccountCoverage', i));
            });
          } else {
            // this handles the case when the list only has one object and does not return as a list
            var i = json['coverage'];
            this.coverage.add(FHIRObjectFactory.buildFromJSON('AccountCoverage', i));
          }          
        }
        this.owner = json['owner'] == null ? null : FHIRObjectFactory.buildFromJSON('Reference', json['owner']);
        this.description = json['description'];
        this.extDescription = json['_description'] == null ? null : FHIRObjectFactory.buildFromJSON('Element', json['_description']);
        this.guarantor = List<AccountGuarantor>();
        if (json['guarantor'] != null && json['guarantor'].length > 0) {
          if( json['guarantor'] is List ){
            json['guarantor'].forEach((i){
              this.guarantor.add(FHIRObjectFactory.buildFromJSON('AccountGuarantor', i));
            });
          } else {
            // this handles the case when the list only has one object and does not return as a list
            var i = json['guarantor'];
            this.guarantor.add(FHIRObjectFactory.buildFromJSON('AccountGuarantor', i));
          }          
        }
        this.partOf = json['partOf'] == null ? null : FHIRObjectFactory.buildFromJSON('Reference', json['partOf']);
    }
}
