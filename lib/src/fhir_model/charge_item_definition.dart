import 'meta.dart';
import 'fhir_object_factory.dart';
import 'element.dart';
import 'narrative.dart';
import 'extension.dart';
import 'identifier.dart';
import 'contact_detail.dart';
import 'usage_context.dart';
import 'codeable_concept.dart';
import 'period.dart';
import 'reference.dart';
import 'charge_item_definition_applicability.dart';
import 'charge_item_definition_property_group.dart';
/// The ChargeItemDefinition resource provides the properties that apply to the (billing) codes necessary to calculate costs and prices. The properties may differ largely depending on type and realm, therefore this resource gives only a rough structure and requires profiling for each type of billing code system.
class ChargeItemDefinition {
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
    /// An absolute URI that is used to identify this charge item definition when it is referenced in a specification, model, design or an instance; also called its canonical identifier. This SHOULD be globally unique and SHOULD be a literal address at which at which an authoritative instance of this charge item definition is (or will be) published. This URL can be the target of a canonical reference. It SHALL remain the same when the charge item definition is stored on different servers.
    String url;
    /// Extensions for url
    Element extUrl;
    /// A formal identifier that is used to identify this charge item definition when it is represented in other formats, or referenced in a specification, model, design or an instance.
    List<Identifier> identifier;
    /// The identifier that is used to identify this version of the charge item definition when it is referenced in a specification, model, design or instance. This is an arbitrary value managed by the charge item definition author and is not expected to be globally unique. For example, it might be a timestamp (e.g. yyyymmdd) if a managed version is not available. There is also no expectation that versions can be placed in a lexicographical sequence. To provide a version consistent with the Decision Support Service specification, use the format Major.Minor.Revision (e.g. 1.0.0). For more information on versioning knowledge assets, refer to the Decision Support Service specification. Note that a version is required for non-experimental active assets.
    String version;
    /// Extensions for version
    Element extVersion;
    /// A short, descriptive, user-friendly title for the charge item definition.
    String title;
    /// Extensions for title
    Element extTitle;
    /// The URL pointing to an externally-defined charge item definition that is adhered to in whole or in part by this definition.
    List<String> derivedFromUri;
    /// Extensions for derivedFromUri
    List<Element> extDerivedFromUri;
    /// A larger definition of which this particular definition is a component or step.
    List<String> partOf;
    /// As new versions of a protocol or guideline are defined, allows identification of what versions are replaced by a new instance.
    List<String> replaces;
    /// The current state of the ChargeItemDefinition.
    String status;
    /// Extensions for status
    Element extStatus;
    /// A Boolean value to indicate that this charge item definition is authored for testing purposes (or education/evaluation/marketing) and is not intended to be used for genuine usage.
    bool experimental;
    /// Extensions for experimental
    Element extExperimental;
    /// The date  (and optionally time) when the charge item definition was published. The date must change when the business version changes and it must change if the status code changes. In addition, it should change when the substantive content of the charge item definition changes.
    DateTime date;
    /// Extensions for date
    Element extDate;
    /// The name of the organization or individual that published the charge item definition.
    String publisher;
    /// Extensions for publisher
    Element extPublisher;
    /// Contact details to assist a user in finding and communicating with the publisher.
    List<ContactDetail> contact;
    /// A free text natural language description of the charge item definition from a consumer's perspective.
    String description;
    /// Extensions for description
    Element extDescription;
    /// The content was developed with a focus and intent of supporting the contexts that are listed. These contexts may be general categories (gender, age, ...) or may be references to specific programs (insurance plans, studies, ...) and may be used to assist with indexing and searching for appropriate charge item definition instances.
    List<UsageContext> useContext;
    /// A legal or geographic region in which the charge item definition is intended to be used.
    List<CodeableConcept> jurisdiction;
    /// A copyright statement relating to the charge item definition and/or its contents. Copyright statements are generally legal restrictions on the use and publishing of the charge item definition.
    String copyright;
    /// Extensions for copyright
    Element extCopyright;
    /// The date on which the resource content was approved by the publisher. Approval happens once when the content is officially approved for usage.
    DateTime approvalDate;
    /// Extensions for approvalDate
    Element extApprovalDate;
    /// The date on which the resource content was last reviewed. Review happens periodically after approval but does not change the original approval date.
    DateTime lastReviewDate;
    /// Extensions for lastReviewDate
    Element extLastReviewDate;
    /// The period during which the charge item definition content was or is planned to be in active use.
    Period effectivePeriod;
    /// The defined billing details in this resource pertain to the given billing code.
    CodeableConcept code;
    /// The defined billing details in this resource pertain to the given product instance(s).
    List<Reference> instance;
    /// Expressions that describe applicability criteria for the billing code.
    List<ChargeItemDefinitionApplicability> applicability;
    /// Group of properties which are applicable under the same conditions. If no applicability rules are established for the group, then all properties always apply.
    List<ChargeItemDefinitionPropertyGroup> propertyGroup;
 
    ChargeItemDefinition.fromJSON( Map json ){
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
        this.title = json['title'];
        this.extTitle = json['_title'] == null ? null : FHIRObjectFactory.buildFromJSON('Element', json['_title']);
        this.derivedFromUri = List<String>();
        if (json['derivedFromUri'] != null && json['derivedFromUri'].length > 0) {
          if( json['derivedFromUri'] is List ){
            json['derivedFromUri'].forEach((i){
              this.derivedFromUri.add(i);
            });
          } else {
            // this handles the case when the list only has one object and does not return as a list
            var i = json['derivedFromUri'];
            this.derivedFromUri.add(i);
          }          
        }
        this.extDerivedFromUri = List<Element>();
        if (json['_derivedFromUri'] != null && json['_derivedFromUri'].length > 0) {
          if( json['_derivedFromUri'] is List ){
            json['_derivedFromUri'].forEach((i){
              this.extDerivedFromUri.add(FHIRObjectFactory.buildFromJSON('Element', i));
            });
          } else {
            // this handles the case when the list only has one object and does not return as a list
            var i = json['_derivedFromUri'];
            this.extDerivedFromUri.add(FHIRObjectFactory.buildFromJSON('Element', i));
          }          
        }
        this.partOf = List<String>();
        if (json['partOf'] != null && json['partOf'].length > 0) {
          if( json['partOf'] is List ){
            json['partOf'].forEach((i){
              this.partOf.add(i);
            });
          } else {
            // this handles the case when the list only has one object and does not return as a list
            var i = json['partOf'];
            this.partOf.add(i);
          }          
        }
        this.replaces = List<String>();
        if (json['replaces'] != null && json['replaces'].length > 0) {
          if( json['replaces'] is List ){
            json['replaces'].forEach((i){
              this.replaces.add(i);
            });
          } else {
            // this handles the case when the list only has one object and does not return as a list
            var i = json['replaces'];
            this.replaces.add(i);
          }          
        }
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
        if( json['approvalDate'] != null ) { this.approvalDate = DateTime.parse(json['approvalDate']);}
        this.extApprovalDate = json['_approvalDate'] == null ? null : FHIRObjectFactory.buildFromJSON('Element', json['_approvalDate']);
        if( json['lastReviewDate'] != null ) { this.lastReviewDate = DateTime.parse(json['lastReviewDate']);}
        this.extLastReviewDate = json['_lastReviewDate'] == null ? null : FHIRObjectFactory.buildFromJSON('Element', json['_lastReviewDate']);
        this.effectivePeriod = json['effectivePeriod'] == null ? null : FHIRObjectFactory.buildFromJSON('Period', json['effectivePeriod']);
        this.code = json['code'] == null ? null : FHIRObjectFactory.buildFromJSON('CodeableConcept', json['code']);
        this.instance = List<Reference>();
        if (json['instance'] != null && json['instance'].length > 0) {
          if( json['instance'] is List ){
            json['instance'].forEach((i){
              this.instance.add(FHIRObjectFactory.buildFromJSON('Reference', i));
            });
          } else {
            // this handles the case when the list only has one object and does not return as a list
            var i = json['instance'];
            this.instance.add(FHIRObjectFactory.buildFromJSON('Reference', i));
          }          
        }
        this.applicability = List<ChargeItemDefinitionApplicability>();
        if (json['applicability'] != null && json['applicability'].length > 0) {
          if( json['applicability'] is List ){
            json['applicability'].forEach((i){
              this.applicability.add(FHIRObjectFactory.buildFromJSON('ChargeItemDefinitionApplicability', i));
            });
          } else {
            // this handles the case when the list only has one object and does not return as a list
            var i = json['applicability'];
            this.applicability.add(FHIRObjectFactory.buildFromJSON('ChargeItemDefinitionApplicability', i));
          }          
        }
        this.propertyGroup = List<ChargeItemDefinitionPropertyGroup>();
        if (json['propertyGroup'] != null && json['propertyGroup'].length > 0) {
          if( json['propertyGroup'] is List ){
            json['propertyGroup'].forEach((i){
              this.propertyGroup.add(FHIRObjectFactory.buildFromJSON('ChargeItemDefinitionPropertyGroup', i));
            });
          } else {
            // this handles the case when the list only has one object and does not return as a list
            var i = json['propertyGroup'];
            this.propertyGroup.add(FHIRObjectFactory.buildFromJSON('ChargeItemDefinitionPropertyGroup', i));
          }          
        }
    }
}
