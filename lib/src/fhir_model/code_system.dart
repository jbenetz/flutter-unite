import 'meta.dart';
import 'fhir_object_factory.dart';
import 'element.dart';
import 'narrative.dart';
import 'extension.dart';
import 'identifier.dart';
import 'contact_detail.dart';
import 'usage_context.dart';
import 'codeable_concept.dart';
import 'code_system_filter.dart';
import 'code_system_property.dart';
import 'code_system_concept.dart';
/// The CodeSystem resource is used to declare the existence of and describe a code system or code system supplement and its key properties, and optionally define a part or all of its content.
class CodeSystem {
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
    /// An absolute URI that is used to identify this code system when it is referenced in a specification, model, design or an instance; also called its canonical identifier. This SHOULD be globally unique and SHOULD be a literal address at which at which an authoritative instance of this code system is (or will be) published. This URL can be the target of a canonical reference. It SHALL remain the same when the code system is stored on different servers. This is used in [Coding](datatypes.html#Coding).system.
    String url;
    /// Extensions for url
    Element extUrl;
    /// A formal identifier that is used to identify this code system when it is represented in other formats, or referenced in a specification, model, design or an instance.
    List<Identifier> identifier;
    /// The identifier that is used to identify this version of the code system when it is referenced in a specification, model, design or instance. This is an arbitrary value managed by the code system author and is not expected to be globally unique. For example, it might be a timestamp (e.g. yyyymmdd) if a managed version is not available. There is also no expectation that versions can be placed in a lexicographical sequence. This is used in [Coding](datatypes.html#Coding).version.
    String version;
    /// Extensions for version
    Element extVersion;
    /// A natural language name identifying the code system. This name should be usable as an identifier for the module by machine processing applications such as code generation.
    String name;
    /// Extensions for name
    Element extName;
    /// A short, descriptive, user-friendly title for the code system.
    String title;
    /// Extensions for title
    Element extTitle;
    /// The date (and optionally time) when the code system resource was created or revised.
    String status;
    /// Extensions for status
    Element extStatus;
    /// A Boolean value to indicate that this code system is authored for testing purposes (or education/evaluation/marketing) and is not intended to be used for genuine usage.
    bool experimental;
    /// Extensions for experimental
    Element extExperimental;
    /// The date  (and optionally time) when the code system was published. The date must change when the business version changes and it must change if the status code changes. In addition, it should change when the substantive content of the code system changes.
    DateTime date;
    /// Extensions for date
    Element extDate;
    /// The name of the organization or individual that published the code system.
    String publisher;
    /// Extensions for publisher
    Element extPublisher;
    /// Contact details to assist a user in finding and communicating with the publisher.
    List<ContactDetail> contact;
    /// A free text natural language description of the code system from a consumer's perspective.
    String description;
    /// Extensions for description
    Element extDescription;
    /// The content was developed with a focus and intent of supporting the contexts that are listed. These contexts may be general categories (gender, age, ...) or may be references to specific programs (insurance plans, studies, ...) and may be used to assist with indexing and searching for appropriate code system instances.
    List<UsageContext> useContext;
    /// A legal or geographic region in which the code system is intended to be used.
    List<CodeableConcept> jurisdiction;
    /// Explanation of why this code system is needed and why it has been designed as it has.
    String purpose;
    /// Extensions for purpose
    Element extPurpose;
    /// A copyright statement relating to the code system and/or its contents. Copyright statements are generally legal restrictions on the use and publishing of the code system.
    String copyright;
    /// Extensions for copyright
    Element extCopyright;
    /// If code comparison is case sensitive when codes within this system are compared to each other.
    bool caseSensitive;
    /// Extensions for caseSensitive
    Element extCaseSensitive;
    /// Canonical reference to the value set that contains the entire code system.
    String valueSet;
    /// The meaning of the hierarchy of concepts as represented in this resource.
    String hierarchyMeaning;
    /// Extensions for hierarchyMeaning
    Element extHierarchyMeaning;
    /// The code system defines a compositional (post-coordination) grammar.
    bool compositional;
    /// Extensions for compositional
    Element extCompositional;
    /// This flag is used to signify that the code system does not commit to concept permanence across versions. If true, a version must be specified when referencing this code system.
    bool versionNeeded;
    /// Extensions for versionNeeded
    Element extVersionNeeded;
    /// The extent of the content of the code system (the concepts and codes it defines) are represented in this resource instance.
    String content;
    /// Extensions for content
    Element extContent;
    /// The canonical URL of the code system that this code system supplement is adding designations and properties to.
    String supplements;
    /// The total number of concepts defined by the code system. Where the code system has a compositional grammar, the basis of this count is defined by the system steward.
    int count;
    /// Extensions for count
    Element extCount;
    /// A filter that can be used in a value set compose statement when selecting concepts using a filter.
    List<CodeSystemFilter> filter;
    /// A property defines an additional slot through which additional information can be provided about a concept.
    List<CodeSystemProperty> property;
    /// Concepts that are in the code system. The concept definitions are inherently hierarchical, but the definitions must be consulted to determine what the meanings of the hierarchical relationships are.
    List<CodeSystemConcept> concept;
 
    CodeSystem.fromJSON( Map json ){
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
        this.caseSensitive = json['caseSensitive'];
        this.extCaseSensitive = json['_caseSensitive'] == null ? null : FHIRObjectFactory.buildFromJSON('Element', json['_caseSensitive']);
        this.valueSet = json['valueSet'];
        this.hierarchyMeaning = json['hierarchyMeaning'];
        this.extHierarchyMeaning = json['_hierarchyMeaning'] == null ? null : FHIRObjectFactory.buildFromJSON('Element', json['_hierarchyMeaning']);
        this.compositional = json['compositional'];
        this.extCompositional = json['_compositional'] == null ? null : FHIRObjectFactory.buildFromJSON('Element', json['_compositional']);
        this.versionNeeded = json['versionNeeded'];
        this.extVersionNeeded = json['_versionNeeded'] == null ? null : FHIRObjectFactory.buildFromJSON('Element', json['_versionNeeded']);
        this.content = json['content'];
        this.extContent = json['_content'] == null ? null : FHIRObjectFactory.buildFromJSON('Element', json['_content']);
        this.supplements = json['supplements'];
        this.count = json['count'];
        this.extCount = json['_count'] == null ? null : FHIRObjectFactory.buildFromJSON('Element', json['_count']);
        this.filter = List<CodeSystemFilter>();
        if (json['filter'] != null && json['filter'].length > 0) {
          if( json['filter'] is List ){
            json['filter'].forEach((i){
              this.filter.add(FHIRObjectFactory.buildFromJSON('CodeSystemFilter', i));
            });
          } else {
            // this handles the case when the list only has one object and does not return as a list
            var i = json['filter'];
            this.filter.add(FHIRObjectFactory.buildFromJSON('CodeSystemFilter', i));
          }          
        }
        this.property = List<CodeSystemProperty>();
        if (json['property'] != null && json['property'].length > 0) {
          if( json['property'] is List ){
            json['property'].forEach((i){
              this.property.add(FHIRObjectFactory.buildFromJSON('CodeSystemProperty', i));
            });
          } else {
            // this handles the case when the list only has one object and does not return as a list
            var i = json['property'];
            this.property.add(FHIRObjectFactory.buildFromJSON('CodeSystemProperty', i));
          }          
        }
        this.concept = List<CodeSystemConcept>();
        if (json['concept'] != null && json['concept'].length > 0) {
          if( json['concept'] is List ){
            json['concept'].forEach((i){
              this.concept.add(FHIRObjectFactory.buildFromJSON('CodeSystemConcept', i));
            });
          } else {
            // this handles the case when the list only has one object and does not return as a list
            var i = json['concept'];
            this.concept.add(FHIRObjectFactory.buildFromJSON('CodeSystemConcept', i));
          }          
        }
    }
}
