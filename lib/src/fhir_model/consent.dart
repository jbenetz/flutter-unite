import 'meta.dart';
import 'fhir_object_factory.dart';
import 'element.dart';
import 'narrative.dart';
import 'extension.dart';
import 'identifier.dart';
import 'codeable_concept.dart';
import 'reference.dart';
import 'attachment.dart';
import 'consent_policy.dart';
import 'consent_verification.dart';
import 'consent_provision.dart';
/// A record of a healthcare consumer’s  choices, which permits or denies identified recipient(s) or recipient role(s) to perform one or more actions within a given policy context, for specific purposes and periods of time.
class Consent {
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
    /// Unique identifier for this copy of the Consent Statement.
    List<Identifier> identifier;
    /// Indicates the current state of this consent.
    String status;
    /// Extensions for status
    Element extStatus;
    /// A selector of the type of consent being presented: ADR, Privacy, Treatment, Research.  This list is now extensible.
    CodeableConcept scope;
    /// A classification of the type of consents found in the statement. This element supports indexing and retrieval of consent statements.
    List<CodeableConcept> category;
    /// The patient/healthcare consumer to whom this consent applies.
    Reference patient;
    /// When this  Consent was issued / created / indexed.
    DateTime dateTime;
    /// Extensions for dateTime
    Element extDateTime;
    /// Either the Grantor, which is the entity responsible for granting the rights listed in a Consent Directive or the Grantee, which is the entity responsible for complying with the Consent Directive, including any obligations or limitations on authorizations and enforcement of prohibitions.
    List<Reference> performer;
    /// The organization that manages the consent, and the framework within which it is executed.
    List<Reference> organization;
    /// The source on which this consent statement is based. The source might be a scanned original paper form, or a reference to a consent that links back to such a source, a reference to a document repository (e.g. XDS) that stores the original consent document.
    Attachment sourceAttachment;
    /// The source on which this consent statement is based. The source might be a scanned original paper form, or a reference to a consent that links back to such a source, a reference to a document repository (e.g. XDS) that stores the original consent document.
    Reference sourceReference;
    /// The references to the policies that are included in this consent scope. Policies may be organizational, but are often defined jurisdictionally, or in law.
    List<ConsentPolicy> policy;
    /// A reference to the specific base computable regulation or policy.
    CodeableConcept policyRule;
    /// Whether a treatment instruction (e.g. artificial respiration yes or no) was verified with the patient, his/her family or another authorized person.
    List<ConsentVerification> verification;
    /// An exception to the base policy of this consent. An exception can be an addition or removal of access permissions.
    ConsentProvision provision;
 
    Consent.fromJSON( Map json ){
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
        this.scope = json['scope'] == null ? null : FHIRObjectFactory.buildFromJSON('CodeableConcept', json['scope']);
        this.category = List<CodeableConcept>();
        if (json['category'] != null && json['category'].length > 0) {
          if( json['category'] is List ){
            json['category'].forEach((i){
              this.category.add(FHIRObjectFactory.buildFromJSON('CodeableConcept', i));
            });
          } else {
            // this handles the case when the list only has one object and does not return as a list
            var i = json['category'];
            this.category.add(FHIRObjectFactory.buildFromJSON('CodeableConcept', i));
          }          
        }
        this.patient = json['patient'] == null ? null : FHIRObjectFactory.buildFromJSON('Reference', json['patient']);
        if( json['dateTime'] != null ) { this.dateTime = DateTime.parse(json['dateTime']);}
        this.extDateTime = json['_dateTime'] == null ? null : FHIRObjectFactory.buildFromJSON('Element', json['_dateTime']);
        this.performer = List<Reference>();
        if (json['performer'] != null && json['performer'].length > 0) {
          if( json['performer'] is List ){
            json['performer'].forEach((i){
              this.performer.add(FHIRObjectFactory.buildFromJSON('Reference', i));
            });
          } else {
            // this handles the case when the list only has one object and does not return as a list
            var i = json['performer'];
            this.performer.add(FHIRObjectFactory.buildFromJSON('Reference', i));
          }          
        }
        this.organization = List<Reference>();
        if (json['organization'] != null && json['organization'].length > 0) {
          if( json['organization'] is List ){
            json['organization'].forEach((i){
              this.organization.add(FHIRObjectFactory.buildFromJSON('Reference', i));
            });
          } else {
            // this handles the case when the list only has one object and does not return as a list
            var i = json['organization'];
            this.organization.add(FHIRObjectFactory.buildFromJSON('Reference', i));
          }          
        }
        this.sourceAttachment = json['sourceAttachment'] == null ? null : FHIRObjectFactory.buildFromJSON('Attachment', json['sourceAttachment']);
        this.sourceReference = json['sourceReference'] == null ? null : FHIRObjectFactory.buildFromJSON('Reference', json['sourceReference']);
        this.policy = List<ConsentPolicy>();
        if (json['policy'] != null && json['policy'].length > 0) {
          if( json['policy'] is List ){
            json['policy'].forEach((i){
              this.policy.add(FHIRObjectFactory.buildFromJSON('ConsentPolicy', i));
            });
          } else {
            // this handles the case when the list only has one object and does not return as a list
            var i = json['policy'];
            this.policy.add(FHIRObjectFactory.buildFromJSON('ConsentPolicy', i));
          }          
        }
        this.policyRule = json['policyRule'] == null ? null : FHIRObjectFactory.buildFromJSON('CodeableConcept', json['policyRule']);
        this.verification = List<ConsentVerification>();
        if (json['verification'] != null && json['verification'].length > 0) {
          if( json['verification'] is List ){
            json['verification'].forEach((i){
              this.verification.add(FHIRObjectFactory.buildFromJSON('ConsentVerification', i));
            });
          } else {
            // this handles the case when the list only has one object and does not return as a list
            var i = json['verification'];
            this.verification.add(FHIRObjectFactory.buildFromJSON('ConsentVerification', i));
          }          
        }
        this.provision = json['provision'] == null ? null : FHIRObjectFactory.buildFromJSON('ConsentProvision', json['provision']);
    }
}
