import 'meta.dart';
import 'fhir_object_factory.dart';
import 'element.dart';
import 'narrative.dart';
import 'extension.dart';
import 'contact_detail.dart';
import 'usage_context.dart';
import 'codeable_concept.dart';
import 'implementation_guide_depends_on.dart';
import 'implementation_guide_global.dart';
import 'implementation_guide_definition.dart';
import 'implementation_guide_manifest.dart';
/// A set of rules of how a particular interoperability or standards problem is solved - typically through the use of FHIR resources. This resource is used to gather all the parts of an implementation guide into a logical whole and to publish a computable definition of all the parts.
class ImplementationGuide {
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
    /// An absolute URI that is used to identify this implementation guide when it is referenced in a specification, model, design or an instance; also called its canonical identifier. This SHOULD be globally unique and SHOULD be a literal address at which at which an authoritative instance of this implementation guide is (or will be) published. This URL can be the target of a canonical reference. It SHALL remain the same when the implementation guide is stored on different servers.
    String url;
    /// Extensions for url
    Element extUrl;
    /// The identifier that is used to identify this version of the implementation guide when it is referenced in a specification, model, design or instance. This is an arbitrary value managed by the implementation guide author and is not expected to be globally unique. For example, it might be a timestamp (e.g. yyyymmdd) if a managed version is not available. There is also no expectation that versions can be placed in a lexicographical sequence.
    String version;
    /// Extensions for version
    Element extVersion;
    /// A natural language name identifying the implementation guide. This name should be usable as an identifier for the module by machine processing applications such as code generation.
    String name;
    /// Extensions for name
    Element extName;
    /// A short, descriptive, user-friendly title for the implementation guide.
    String title;
    /// Extensions for title
    Element extTitle;
    /// The status of this implementation guide. Enables tracking the life-cycle of the content.
    String status;
    /// Extensions for status
    Element extStatus;
    /// A Boolean value to indicate that this implementation guide is authored for testing purposes (or education/evaluation/marketing) and is not intended to be used for genuine usage.
    bool experimental;
    /// Extensions for experimental
    Element extExperimental;
    /// The date  (and optionally time) when the implementation guide was published. The date must change when the business version changes and it must change if the status code changes. In addition, it should change when the substantive content of the implementation guide changes.
    DateTime date;
    /// Extensions for date
    Element extDate;
    /// The name of the organization or individual that published the implementation guide.
    String publisher;
    /// Extensions for publisher
    Element extPublisher;
    /// Contact details to assist a user in finding and communicating with the publisher.
    List<ContactDetail> contact;
    /// A free text natural language description of the implementation guide from a consumer's perspective.
    String description;
    /// Extensions for description
    Element extDescription;
    /// The content was developed with a focus and intent of supporting the contexts that are listed. These contexts may be general categories (gender, age, ...) or may be references to specific programs (insurance plans, studies, ...) and may be used to assist with indexing and searching for appropriate implementation guide instances.
    List<UsageContext> useContext;
    /// A legal or geographic region in which the implementation guide is intended to be used.
    List<CodeableConcept> jurisdiction;
    /// A copyright statement relating to the implementation guide and/or its contents. Copyright statements are generally legal restrictions on the use and publishing of the implementation guide.
    String copyright;
    /// Extensions for copyright
    Element extCopyright;
    /// The NPM package name for this Implementation Guide, used in the NPM package distribution, which is the primary mechanism by which FHIR based tooling manages IG dependencies. This value must be globally unique, and should be assigned with care.
    String packageId;
    /// Extensions for packageId
    Element extPackageId;
    /// The license that applies to this Implementation Guide, using an SPDX license code, or 'not-open-source'.
    String license;
    /// Extensions for license
    Element extLicense;
    /// Extensions for fhirVersion
    List<Element> extFhirVersion;
    /// Another implementation guide that this implementation depends on. Typically, an implementation guide uses value sets, profiles etc.defined in other implementation guides.
    List<ImplementationGuideDependsOn> dependsOn;
    /// A set of profiles that all resources covered by this implementation guide must conform to.
    List<ImplementationGuideGlobal> global;
    /// The information needed by an IG publisher tool to publish the whole implementation guide.
    ImplementationGuideDefinition definition;
    /// Information about an assembled implementation guide, created by the publication tooling.
    ImplementationGuideManifest manifest;
 
    ImplementationGuide.fromJSON( Map json ){
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
        this.copyright = json['copyright'];
        this.extCopyright = json['_copyright'] == null ? null : FHIRObjectFactory.buildFromJSON('Element', json['_copyright']);
        this.packageId = json['packageId'];
        this.extPackageId = json['_packageId'] == null ? null : FHIRObjectFactory.buildFromJSON('Element', json['_packageId']);
        this.license = json['license'];
        this.extLicense = json['_license'] == null ? null : FHIRObjectFactory.buildFromJSON('Element', json['_license']);
        this.extFhirVersion = List<Element>();
        if (json['_fhirVersion'] != null && json['_fhirVersion'].length > 0) {
          if( json['_fhirVersion'] is List ){
            json['_fhirVersion'].forEach((i){
              this.extFhirVersion.add(FHIRObjectFactory.buildFromJSON('Element', i));
            });
          } else {
            // this handles the case when the list only has one object and does not return as a list
            var i = json['_fhirVersion'];
            this.extFhirVersion.add(FHIRObjectFactory.buildFromJSON('Element', i));
          }          
        }
        this.dependsOn = List<ImplementationGuideDependsOn>();
        if (json['dependsOn'] != null && json['dependsOn'].length > 0) {
          if( json['dependsOn'] is List ){
            json['dependsOn'].forEach((i){
              this.dependsOn.add(FHIRObjectFactory.buildFromJSON('ImplementationGuideDependsOn', i));
            });
          } else {
            // this handles the case when the list only has one object and does not return as a list
            var i = json['dependsOn'];
            this.dependsOn.add(FHIRObjectFactory.buildFromJSON('ImplementationGuideDependsOn', i));
          }          
        }
        this.global = List<ImplementationGuideGlobal>();
        if (json['global'] != null && json['global'].length > 0) {
          if( json['global'] is List ){
            json['global'].forEach((i){
              this.global.add(FHIRObjectFactory.buildFromJSON('ImplementationGuideGlobal', i));
            });
          } else {
            // this handles the case when the list only has one object and does not return as a list
            var i = json['global'];
            this.global.add(FHIRObjectFactory.buildFromJSON('ImplementationGuideGlobal', i));
          }          
        }
        this.definition = json['definition'] == null ? null : FHIRObjectFactory.buildFromJSON('ImplementationGuideDefinition', json['definition']);
        this.manifest = json['manifest'] == null ? null : FHIRObjectFactory.buildFromJSON('ImplementationGuideManifest', json['manifest']);
    }
}
