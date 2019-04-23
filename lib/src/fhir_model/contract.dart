import 'meta.dart';
import 'fhir_object_factory.dart';
import 'element.dart';
import 'narrative.dart';
import 'extension.dart';
import 'identifier.dart';
import 'codeable_concept.dart';
import 'reference.dart';
import 'period.dart';
import 'contract_content_definition.dart';
import 'contract_term.dart';
import 'contract_signer.dart';
import 'contract_friendly.dart';
import 'contract_legal.dart';
import 'contract_rule.dart';
import 'attachment.dart';
/// Legally enforceable, formally recorded unilateral or bilateral directive i.e., a policy or agreement.
class Contract {
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
    /// Unique identifier for this Contract or a derivative that references a Source Contract.
    List<Identifier> identifier;
    /// Canonical identifier for this contract, represented as a URI (globally unique).
    String url;
    /// Extensions for url
    Element extUrl;
    /// An edition identifier used for business purposes to label business significant variants.
    String version;
    /// Extensions for version
    Element extVersion;
    /// The status of the resource instance.
    String status;
    /// Extensions for status
    Element extStatus;
    /// Legal states of the formation of a legal instrument, which is a formally executed written document that can be formally attributed to its author, records and formally expresses a legally enforceable act, process, or contractual duty, obligation, or right, and therefore evidences that act, process, or agreement.
    CodeableConcept legalState;
    /// The URL pointing to a FHIR-defined Contract Definition that is adhered to in whole or part by this Contract.
    Reference instantiatesCanonical;
    /// The URL pointing to an externally maintained definition that is adhered to in whole or in part by this Contract.
    String instantiatesUri;
    /// Extensions for instantiatesUri
    Element extInstantiatesUri;
    /// The minimal content derived from the basal information source at a specific stage in its lifecycle.
    CodeableConcept contentDerivative;
    /// When this  Contract was issued.
    DateTime issued;
    /// Extensions for issued
    Element extIssued;
    /// Relevant time or time-period when this Contract is applicable.
    Period applies;
    /// Event resulting in discontinuation or termination of this Contract instance by one or more parties to the contract.
    CodeableConcept expirationType;
    /// The target entity impacted by or of interest to parties to the agreement.
    List<Reference> subject;
    /// A formally or informally recognized grouping of people, principals, organizations, or jurisdictions formed for the purpose of achieving some form of collective action such as the promulgation, administration and enforcement of contracts and policies.
    List<Reference> authority;
    /// Recognized governance framework or system operating with a circumscribed scope in accordance with specified principles, policies, processes or procedures for managing rights, actions, or behaviors of parties or principals relative to resources.
    List<Reference> domain;
    /// Sites in which the contract is complied with,  exercised, or in force.
    List<Reference> site;
    /// A natural language name identifying this Contract definition, derivative, or instance in any legal state. Provides additional information about its content. This name should be usable as an identifier for the module by machine processing applications such as code generation.
    String name;
    /// Extensions for name
    Element extName;
    /// A short, descriptive, user-friendly title for this Contract definition, derivative, or instance in any legal state.t giving additional information about its content.
    String title;
    /// Extensions for title
    Element extTitle;
    /// An explanatory or alternate user-friendly title for this Contract definition, derivative, or instance in any legal state.t giving additional information about its content.
    String subtitle;
    /// Extensions for subtitle
    Element extSubtitle;
    /// Alternative representation of the title for this Contract definition, derivative, or instance in any legal state., e.g., a domain specific contract number related to legislation.
    List<String> alias;
    /// Extensions for alias
    List<Element> extAlias;
    /// The individual or organization that authored the Contract definition, derivative, or instance in any legal state.
    Reference author;
    /// A selector of legal concerns for this Contract definition, derivative, or instance in any legal state.
    CodeableConcept scope;
    /// Narrows the range of legal concerns to focus on the achievement of specific contractual objectives.
    CodeableConcept topicCodeableConcept;
    /// Narrows the range of legal concerns to focus on the achievement of specific contractual objectives.
    Reference topicReference;
    /// A high-level category for the legal instrument, whether constructed as a Contract definition, derivative, or instance in any legal state.  Provides additional information about its content within the context of the Contract's scope to distinguish the kinds of systems that would be interested in the contract.
    CodeableConcept type;
    /// Sub-category for the Contract that distinguishes the kinds of systems that would be interested in the Contract within the context of the Contract's scope.
    List<CodeableConcept> subType;
    /// Precusory content developed with a focus and intent of supporting the formation a Contract instance, which may be associated with and transformable into a Contract.
    ContractContentDefinition contentDefinition;
    /// One or more Contract Provisions, which may be related and conveyed as a group, and may contain nested groups.
    List<ContractTerm> term;
    /// Information that may be needed by/relevant to the performer in their execution of this term action.
    List<Reference> supportingInfo;
    /// Links to Provenance records for past versions of this Contract definition, derivative, or instance, which identify key state transitions or updates that are likely to be relevant to a user looking at the current version of the Contract.  The Provence.entity indicates the target that was changed in the update. http://build.fhir.org/provenance-definitions.html#Provenance.entity.
    List<Reference> relevantHistory;
    /// Parties with legal standing in the Contract, including the principal parties, the grantor(s) and grantee(s), which are any person or organization bound by the contract, and any ancillary parties, which facilitate the execution of the contract such as a notary or witness.
    List<ContractSigner> signer;
    /// The "patient friendly language" versionof the Contract in whole or in parts. "Patient friendly language" means the representation of the Contract and Contract Provisions in a manner that is readily accessible and understandable by a layperson in accordance with best practices for communication styles that ensure that those agreeing to or signing the Contract understand the roles, actions, obligations, responsibilities, and implication of the agreement.
    List<ContractFriendly> friendly;
    /// List of Legal expressions or representations of this Contract.
    List<ContractLegal> legal;
    /// List of Computable Policy Rule Language Representations of this Contract.
    List<ContractRule> rule;
    /// Legally binding Contract: This is the signed and legally recognized representation of the Contract, which is considered the "source of truth" and which would be the basis for legal action related to enforcement of this Contract.
    Attachment legallyBindingAttachment;
    /// Legally binding Contract: This is the signed and legally recognized representation of the Contract, which is considered the "source of truth" and which would be the basis for legal action related to enforcement of this Contract.
    Reference legallyBindingReference;
 
    Contract.fromJSON( Map json ){
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
        this.url = json['url'];
        this.extUrl = json['_url'] == null ? null : FHIRObjectFactory.buildFromJSON('Element', json['_url']);
        this.version = json['version'];
        this.extVersion = json['_version'] == null ? null : FHIRObjectFactory.buildFromJSON('Element', json['_version']);
        this.status = json['status'];
        this.extStatus = json['_status'] == null ? null : FHIRObjectFactory.buildFromJSON('Element', json['_status']);
        this.legalState = json['legalState'] == null ? null : FHIRObjectFactory.buildFromJSON('CodeableConcept', json['legalState']);
        this.instantiatesCanonical = json['instantiatesCanonical'] == null ? null : FHIRObjectFactory.buildFromJSON('Reference', json['instantiatesCanonical']);
        this.instantiatesUri = json['instantiatesUri'];
        this.extInstantiatesUri = json['_instantiatesUri'] == null ? null : FHIRObjectFactory.buildFromJSON('Element', json['_instantiatesUri']);
        this.contentDerivative = json['contentDerivative'] == null ? null : FHIRObjectFactory.buildFromJSON('CodeableConcept', json['contentDerivative']);
        if( json['issued'] != null ) { this.issued = DateTime.parse(json['issued']);}
        this.extIssued = json['_issued'] == null ? null : FHIRObjectFactory.buildFromJSON('Element', json['_issued']);
        this.applies = json['applies'] == null ? null : FHIRObjectFactory.buildFromJSON('Period', json['applies']);
        this.expirationType = json['expirationType'] == null ? null : FHIRObjectFactory.buildFromJSON('CodeableConcept', json['expirationType']);
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
        this.authority = List<Reference>();
        if (json['authority'] != null && json['authority'].length > 0) {
          if( json['authority'] is List ){
            json['authority'].forEach((i){
              this.authority.add(FHIRObjectFactory.buildFromJSON('Reference', i));
            });
          } else {
            // this handles the case when the list only has one object and does not return as a list
            var i = json['authority'];
            this.authority.add(FHIRObjectFactory.buildFromJSON('Reference', i));
          }          
        }
        this.domain = List<Reference>();
        if (json['domain'] != null && json['domain'].length > 0) {
          if( json['domain'] is List ){
            json['domain'].forEach((i){
              this.domain.add(FHIRObjectFactory.buildFromJSON('Reference', i));
            });
          } else {
            // this handles the case when the list only has one object and does not return as a list
            var i = json['domain'];
            this.domain.add(FHIRObjectFactory.buildFromJSON('Reference', i));
          }          
        }
        this.site = List<Reference>();
        if (json['site'] != null && json['site'].length > 0) {
          if( json['site'] is List ){
            json['site'].forEach((i){
              this.site.add(FHIRObjectFactory.buildFromJSON('Reference', i));
            });
          } else {
            // this handles the case when the list only has one object and does not return as a list
            var i = json['site'];
            this.site.add(FHIRObjectFactory.buildFromJSON('Reference', i));
          }          
        }
        this.name = json['name'];
        this.extName = json['_name'] == null ? null : FHIRObjectFactory.buildFromJSON('Element', json['_name']);
        this.title = json['title'];
        this.extTitle = json['_title'] == null ? null : FHIRObjectFactory.buildFromJSON('Element', json['_title']);
        this.subtitle = json['subtitle'];
        this.extSubtitle = json['_subtitle'] == null ? null : FHIRObjectFactory.buildFromJSON('Element', json['_subtitle']);
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
        this.author = json['author'] == null ? null : FHIRObjectFactory.buildFromJSON('Reference', json['author']);
        this.scope = json['scope'] == null ? null : FHIRObjectFactory.buildFromJSON('CodeableConcept', json['scope']);
        this.topicCodeableConcept = json['topicCodeableConcept'] == null ? null : FHIRObjectFactory.buildFromJSON('CodeableConcept', json['topicCodeableConcept']);
        this.topicReference = json['topicReference'] == null ? null : FHIRObjectFactory.buildFromJSON('Reference', json['topicReference']);
        this.type = json['type'] == null ? null : FHIRObjectFactory.buildFromJSON('CodeableConcept', json['type']);
        this.subType = List<CodeableConcept>();
        if (json['subType'] != null && json['subType'].length > 0) {
          if( json['subType'] is List ){
            json['subType'].forEach((i){
              this.subType.add(FHIRObjectFactory.buildFromJSON('CodeableConcept', i));
            });
          } else {
            // this handles the case when the list only has one object and does not return as a list
            var i = json['subType'];
            this.subType.add(FHIRObjectFactory.buildFromJSON('CodeableConcept', i));
          }          
        }
        this.contentDefinition = json['contentDefinition'] == null ? null : FHIRObjectFactory.buildFromJSON('ContractContentDefinition', json['contentDefinition']);
        this.term = List<ContractTerm>();
        if (json['term'] != null && json['term'].length > 0) {
          if( json['term'] is List ){
            json['term'].forEach((i){
              this.term.add(FHIRObjectFactory.buildFromJSON('ContractTerm', i));
            });
          } else {
            // this handles the case when the list only has one object and does not return as a list
            var i = json['term'];
            this.term.add(FHIRObjectFactory.buildFromJSON('ContractTerm', i));
          }          
        }
        this.supportingInfo = List<Reference>();
        if (json['supportingInfo'] != null && json['supportingInfo'].length > 0) {
          if( json['supportingInfo'] is List ){
            json['supportingInfo'].forEach((i){
              this.supportingInfo.add(FHIRObjectFactory.buildFromJSON('Reference', i));
            });
          } else {
            // this handles the case when the list only has one object and does not return as a list
            var i = json['supportingInfo'];
            this.supportingInfo.add(FHIRObjectFactory.buildFromJSON('Reference', i));
          }          
        }
        this.relevantHistory = List<Reference>();
        if (json['relevantHistory'] != null && json['relevantHistory'].length > 0) {
          if( json['relevantHistory'] is List ){
            json['relevantHistory'].forEach((i){
              this.relevantHistory.add(FHIRObjectFactory.buildFromJSON('Reference', i));
            });
          } else {
            // this handles the case when the list only has one object and does not return as a list
            var i = json['relevantHistory'];
            this.relevantHistory.add(FHIRObjectFactory.buildFromJSON('Reference', i));
          }          
        }
        this.signer = List<ContractSigner>();
        if (json['signer'] != null && json['signer'].length > 0) {
          if( json['signer'] is List ){
            json['signer'].forEach((i){
              this.signer.add(FHIRObjectFactory.buildFromJSON('ContractSigner', i));
            });
          } else {
            // this handles the case when the list only has one object and does not return as a list
            var i = json['signer'];
            this.signer.add(FHIRObjectFactory.buildFromJSON('ContractSigner', i));
          }          
        }
        this.friendly = List<ContractFriendly>();
        if (json['friendly'] != null && json['friendly'].length > 0) {
          if( json['friendly'] is List ){
            json['friendly'].forEach((i){
              this.friendly.add(FHIRObjectFactory.buildFromJSON('ContractFriendly', i));
            });
          } else {
            // this handles the case when the list only has one object and does not return as a list
            var i = json['friendly'];
            this.friendly.add(FHIRObjectFactory.buildFromJSON('ContractFriendly', i));
          }          
        }
        this.legal = List<ContractLegal>();
        if (json['legal'] != null && json['legal'].length > 0) {
          if( json['legal'] is List ){
            json['legal'].forEach((i){
              this.legal.add(FHIRObjectFactory.buildFromJSON('ContractLegal', i));
            });
          } else {
            // this handles the case when the list only has one object and does not return as a list
            var i = json['legal'];
            this.legal.add(FHIRObjectFactory.buildFromJSON('ContractLegal', i));
          }          
        }
        this.rule = List<ContractRule>();
        if (json['rule'] != null && json['rule'].length > 0) {
          if( json['rule'] is List ){
            json['rule'].forEach((i){
              this.rule.add(FHIRObjectFactory.buildFromJSON('ContractRule', i));
            });
          } else {
            // this handles the case when the list only has one object and does not return as a list
            var i = json['rule'];
            this.rule.add(FHIRObjectFactory.buildFromJSON('ContractRule', i));
          }          
        }
        this.legallyBindingAttachment = json['legallyBindingAttachment'] == null ? null : FHIRObjectFactory.buildFromJSON('Attachment', json['legallyBindingAttachment']);
        this.legallyBindingReference = json['legallyBindingReference'] == null ? null : FHIRObjectFactory.buildFromJSON('Reference', json['legallyBindingReference']);
    }
}
