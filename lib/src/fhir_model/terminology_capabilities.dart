import 'meta.dart';
import 'fhir_object_factory.dart';
import 'element.dart';
import 'narrative.dart';
import 'extension.dart';
import 'contact_detail.dart';
import 'usage_context.dart';
import 'codeable_concept.dart';
import 'terminology_capabilities_software.dart';
import 'terminology_capabilities_implementation.dart';
import 'terminology_capabilities_code_system.dart';
import 'terminology_capabilities_expansion.dart';
import 'terminology_capabilities_validate_code.dart';
import 'terminology_capabilities_translation.dart';
import 'terminology_capabilities_closure.dart';
/// A TerminologyCapabilities resource documents a set of capabilities (behaviors) of a FHIR Terminology Server that may be used as a statement of actual server functionality or a statement of required or desired server implementation.
class TerminologyCapabilities {
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
    /// An absolute URI that is used to identify this terminology capabilities when it is referenced in a specification, model, design or an instance; also called its canonical identifier. This SHOULD be globally unique and SHOULD be a literal address at which at which an authoritative instance of this terminology capabilities is (or will be) published. This URL can be the target of a canonical reference. It SHALL remain the same when the terminology capabilities is stored on different servers.
    String url;
    /// Extensions for url
    Element extUrl;
    /// The identifier that is used to identify this version of the terminology capabilities when it is referenced in a specification, model, design or instance. This is an arbitrary value managed by the terminology capabilities author and is not expected to be globally unique. For example, it might be a timestamp (e.g. yyyymmdd) if a managed version is not available. There is also no expectation that versions can be placed in a lexicographical sequence.
    String version;
    /// Extensions for version
    Element extVersion;
    /// A natural language name identifying the terminology capabilities. This name should be usable as an identifier for the module by machine processing applications such as code generation.
    String name;
    /// Extensions for name
    Element extName;
    /// A short, descriptive, user-friendly title for the terminology capabilities.
    String title;
    /// Extensions for title
    Element extTitle;
    /// The status of this terminology capabilities. Enables tracking the life-cycle of the content.
    String status;
    /// Extensions for status
    Element extStatus;
    /// A Boolean value to indicate that this terminology capabilities is authored for testing purposes (or education/evaluation/marketing) and is not intended to be used for genuine usage.
    bool experimental;
    /// Extensions for experimental
    Element extExperimental;
    /// The date  (and optionally time) when the terminology capabilities was published. The date must change when the business version changes and it must change if the status code changes. In addition, it should change when the substantive content of the terminology capabilities changes.
    DateTime date;
    /// Extensions for date
    Element extDate;
    /// The name of the organization or individual that published the terminology capabilities.
    String publisher;
    /// Extensions for publisher
    Element extPublisher;
    /// Contact details to assist a user in finding and communicating with the publisher.
    List<ContactDetail> contact;
    /// A free text natural language description of the terminology capabilities from a consumer's perspective. Typically, this is used when the capability statement describes a desired rather than an actual solution, for example as a formal expression of requirements as part of an RFP.
    String description;
    /// Extensions for description
    Element extDescription;
    /// The content was developed with a focus and intent of supporting the contexts that are listed. These contexts may be general categories (gender, age, ...) or may be references to specific programs (insurance plans, studies, ...) and may be used to assist with indexing and searching for appropriate terminology capabilities instances.
    List<UsageContext> useContext;
    /// A legal or geographic region in which the terminology capabilities is intended to be used.
    List<CodeableConcept> jurisdiction;
    /// Explanation of why this terminology capabilities is needed and why it has been designed as it has.
    String purpose;
    /// Extensions for purpose
    Element extPurpose;
    /// A copyright statement relating to the terminology capabilities and/or its contents. Copyright statements are generally legal restrictions on the use and publishing of the terminology capabilities.
    String copyright;
    /// Extensions for copyright
    Element extCopyright;
    /// The way that this statement is intended to be used, to describe an actual running instance of software, a particular product (kind, not instance of software) or a class of implementation (e.g. a desired purchase).
    String kind;
    /// Extensions for kind
    Element extKind;
    /// Software that is covered by this terminology capability statement.  It is used when the statement describes the capabilities of a particular software version, independent of an installation.
    TerminologyCapabilitiesSoftware software;
    /// Identifies a specific implementation instance that is described by the terminology capability statement - i.e. a particular installation, rather than the capabilities of a software program.
    TerminologyCapabilitiesImplementation implementation;
    /// Whether the server supports lockedDate.
    bool lockedDate;
    /// Extensions for lockedDate
    Element extLockedDate;
    /// Identifies a code system that is supported by the server. If there is a no code system URL, then this declares the general assumptions a client can make about support for any CodeSystem resource.
    List<TerminologyCapabilitiesCodeSystem> codeSystem;
    /// Information about the [ValueSet/$expand](valueset-operation-expand.html) operation.
    TerminologyCapabilitiesExpansion expansion;
    /// The degree to which the server supports the code search parameter on ValueSet, if it is supported.
    String codeSearch;
    /// Extensions for codeSearch
    Element extCodeSearch;
    /// Information about the [ValueSet/$validate-code](valueset-operation-validate-code.html) operation.
    TerminologyCapabilitiesValidateCode validateCode;
    /// Information about the [ConceptMap/$translate](conceptmap-operation-translate.html) operation.
    TerminologyCapabilitiesTranslation translation;
    /// Whether the $closure operation is supported.
    TerminologyCapabilitiesClosure closure;
 
    TerminologyCapabilities.fromJSON( Map json ){
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
        this.url = json['url'];
        this.extUrl = json['_url'] == null ? null : FHIRObjectFactory.buildFromJSON('Element', json['_url']);
        this.version = json['version'];
        this.extVersion = json['_version'] == null ? null : FHIRObjectFactory.buildFromJSON('Element', json['_version']);
        this.name = json['name'];
        this.extName = json['_name'] == null ? null : FHIRObjectFactory.buildFromJSON('Element', json['_name']);
        this.title = json['title'];
        this.extTitle = json['_title'] == null ? null : FHIRObjectFactory.buildFromJSON('Element', json['_title']);
        this.status = json['status'];
        this.extStatus = json['_status'] == null ? null : FHIRObjectFactory.buildFromJSON('Element', json['_status']);
        this.experimental = json['experimental'];
        this.extExperimental = json['_experimental'] == null ? null : FHIRObjectFactory.buildFromJSON('Element', json['_experimental']);
        if( json['date'] != null ) { this.date = DateTime.parse(json['date']);}
        this.extDate = json['_date'] == null ? null : FHIRObjectFactory.buildFromJSON('Element', json['_date']);
        this.publisher = json['publisher'];
        this.extPublisher = json['_publisher'] == null ? null : FHIRObjectFactory.buildFromJSON('Element', json['_publisher']);
        this.contact = List<ContactDetail>();
        if (json['contact'] != null && json['contact'].length > 0) {
          if( json['contact'] is List ){
            json['contact'].forEach((i){
              this.contact.add(FHIRObjectFactory.buildFromJSON('ContactDetail', i));
            });
          } else {
            // this handles the case when the list only has one object and does not return as a list
            var i = json['contact'];
            this.contact.add(FHIRObjectFactory.buildFromJSON('ContactDetail', i));
          }          
        }
        this.description = json['description'];
        this.extDescription = json['_description'] == null ? null : FHIRObjectFactory.buildFromJSON('Element', json['_description']);
        this.useContext = List<UsageContext>();
        if (json['useContext'] != null && json['useContext'].length > 0) {
          if( json['useContext'] is List ){
            json['useContext'].forEach((i){
              this.useContext.add(FHIRObjectFactory.buildFromJSON('UsageContext', i));
            });
          } else {
            // this handles the case when the list only has one object and does not return as a list
            var i = json['useContext'];
            this.useContext.add(FHIRObjectFactory.buildFromJSON('UsageContext', i));
          }          
        }
        this.jurisdiction = List<CodeableConcept>();
        if (json['jurisdiction'] != null && json['jurisdiction'].length > 0) {
          if( json['jurisdiction'] is List ){
            json['jurisdiction'].forEach((i){
              this.jurisdiction.add(FHIRObjectFactory.buildFromJSON('CodeableConcept', i));
            });
          } else {
            // this handles the case when the list only has one object and does not return as a list
            var i = json['jurisdiction'];
            this.jurisdiction.add(FHIRObjectFactory.buildFromJSON('CodeableConcept', i));
          }          
        }
        this.purpose = json['purpose'];
        this.extPurpose = json['_purpose'] == null ? null : FHIRObjectFactory.buildFromJSON('Element', json['_purpose']);
        this.copyright = json['copyright'];
        this.extCopyright = json['_copyright'] == null ? null : FHIRObjectFactory.buildFromJSON('Element', json['_copyright']);
        this.kind = json['kind'];
        this.extKind = json['_kind'] == null ? null : FHIRObjectFactory.buildFromJSON('Element', json['_kind']);
        this.software = json['software'] == null ? null : FHIRObjectFactory.buildFromJSON('TerminologyCapabilitiesSoftware', json['software']);
        this.implementation = json['implementation'] == null ? null : FHIRObjectFactory.buildFromJSON('TerminologyCapabilitiesImplementation', json['implementation']);
        this.lockedDate = json['lockedDate'];
        this.extLockedDate = json['_lockedDate'] == null ? null : FHIRObjectFactory.buildFromJSON('Element', json['_lockedDate']);
        this.codeSystem = List<TerminologyCapabilitiesCodeSystem>();
        if (json['codeSystem'] != null && json['codeSystem'].length > 0) {
          if( json['codeSystem'] is List ){
            json['codeSystem'].forEach((i){
              this.codeSystem.add(FHIRObjectFactory.buildFromJSON('TerminologyCapabilitiesCodeSystem', i));
            });
          } else {
            // this handles the case when the list only has one object and does not return as a list
            var i = json['codeSystem'];
            this.codeSystem.add(FHIRObjectFactory.buildFromJSON('TerminologyCapabilitiesCodeSystem', i));
          }          
        }
        this.expansion = json['expansion'] == null ? null : FHIRObjectFactory.buildFromJSON('TerminologyCapabilitiesExpansion', json['expansion']);
        this.codeSearch = json['codeSearch'];
        this.extCodeSearch = json['_codeSearch'] == null ? null : FHIRObjectFactory.buildFromJSON('Element', json['_codeSearch']);
        this.validateCode = json['validateCode'] == null ? null : FHIRObjectFactory.buildFromJSON('TerminologyCapabilitiesValidateCode', json['validateCode']);
        this.translation = json['translation'] == null ? null : FHIRObjectFactory.buildFromJSON('TerminologyCapabilitiesTranslation', json['translation']);
        this.closure = json['closure'] == null ? null : FHIRObjectFactory.buildFromJSON('TerminologyCapabilitiesClosure', json['closure']);
    }
}
