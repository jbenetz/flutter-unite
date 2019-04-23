import 'meta.dart';
import 'fhir_object_factory.dart';
import 'element.dart';
import 'narrative.dart';
import 'extension.dart';
import 'identifier.dart';
import 'contact_detail.dart';
import 'annotation.dart';
import 'usage_context.dart';
import 'codeable_concept.dart';
import 'period.dart';
import 'related_artifact.dart';
import 'reference.dart';
/// The Evidence resource describes the conditional state (population and any exposures being compared within the population) and outcome (if specified) that the knowledge (evidence, assertion, recommendation) is about.
class Evidence {
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
    /// An absolute URI that is used to identify this evidence when it is referenced in a specification, model, design or an instance; also called its canonical identifier. This SHOULD be globally unique and SHOULD be a literal address at which at which an authoritative instance of this evidence is (or will be) published. This URL can be the target of a canonical reference. It SHALL remain the same when the evidence is stored on different servers.
    String url;
    /// Extensions for url
    Element extUrl;
    /// A formal identifier that is used to identify this evidence when it is represented in other formats, or referenced in a specification, model, design or an instance.
    List<Identifier> identifier;
    /// The identifier that is used to identify this version of the evidence when it is referenced in a specification, model, design or instance. This is an arbitrary value managed by the evidence author and is not expected to be globally unique. For example, it might be a timestamp (e.g. yyyymmdd) if a managed version is not available. There is also no expectation that versions can be placed in a lexicographical sequence. To provide a version consistent with the Decision Support Service specification, use the format Major.Minor.Revision (e.g. 1.0.0). For more information on versioning knowledge assets, refer to the Decision Support Service specification. Note that a version is required for non-experimental active artifacts.
    String version;
    /// Extensions for version
    Element extVersion;
    /// A natural language name identifying the evidence. This name should be usable as an identifier for the module by machine processing applications such as code generation.
    String name;
    /// Extensions for name
    Element extName;
    /// A short, descriptive, user-friendly title for the evidence.
    String title;
    /// Extensions for title
    Element extTitle;
    /// The short title provides an alternate title for use in informal descriptive contexts where the full, formal title is not necessary.
    String shortTitle;
    /// Extensions for shortTitle
    Element extShortTitle;
    /// An explanatory or alternate title for the Evidence giving additional information about its content.
    String subtitle;
    /// Extensions for subtitle
    Element extSubtitle;
    /// The status of this evidence. Enables tracking the life-cycle of the content.
    String status;
    /// Extensions for status
    Element extStatus;
    /// The date  (and optionally time) when the evidence was published. The date must change when the business version changes and it must change if the status code changes. In addition, it should change when the substantive content of the evidence changes.
    DateTime date;
    /// Extensions for date
    Element extDate;
    /// The name of the organization or individual that published the evidence.
    String publisher;
    /// Extensions for publisher
    Element extPublisher;
    /// Contact details to assist a user in finding and communicating with the publisher.
    List<ContactDetail> contact;
    /// A free text natural language description of the evidence from a consumer's perspective.
    String description;
    /// Extensions for description
    Element extDescription;
    /// A human-readable string to clarify or explain concepts about the resource.
    List<Annotation> note;
    /// The content was developed with a focus and intent of supporting the contexts that are listed. These contexts may be general categories (gender, age, ...) or may be references to specific programs (insurance plans, studies, ...) and may be used to assist with indexing and searching for appropriate evidence instances.
    List<UsageContext> useContext;
    /// A legal or geographic region in which the evidence is intended to be used.
    List<CodeableConcept> jurisdiction;
    /// A copyright statement relating to the evidence and/or its contents. Copyright statements are generally legal restrictions on the use and publishing of the evidence.
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
    /// The period during which the evidence content was or is planned to be in active use.
    Period effectivePeriod;
    /// Descriptive topics related to the content of the Evidence. Topics provide a high-level categorization grouping types of Evidences that can be useful for filtering and searching.
    List<CodeableConcept> topic;
    /// An individiual or organization primarily involved in the creation and maintenance of the content.
    List<ContactDetail> author;
    /// An individual or organization primarily responsible for internal coherence of the content.
    List<ContactDetail> editor;
    /// An individual or organization primarily responsible for review of some aspect of the content.
    List<ContactDetail> reviewer;
    /// An individual or organization responsible for officially endorsing the content for use in some setting.
    List<ContactDetail> endorser;
    /// Related artifacts such as additional documentation, justification, or bibliographic references.
    List<RelatedArtifact> relatedArtifact;
    /// A reference to a EvidenceVariable resource that defines the population for the research.
    Reference exposureBackground;
    /// A reference to a EvidenceVariable resource that defines the exposure for the research.
    List<Reference> exposureVariant;
    /// A reference to a EvidenceVariable resomece that defines the outcome for the research.
    List<Reference> outcome;
 
    Evidence.fromJSON( Map json ){
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
        this.shortTitle = json['shortTitle'];
        this.extShortTitle = json['_shortTitle'] == null ? null : FHIRObjectFactory.buildFromJSON('Element', json['_shortTitle']);
        this.subtitle = json['subtitle'];
        this.extSubtitle = json['_subtitle'] == null ? null : FHIRObjectFactory.buildFromJSON('Element', json['_subtitle']);
        this.status = json['status'];
        this.extStatus = json['_status'] == null ? null : FHIRObjectFactory.buildFromJSON('Element', json['_status']);
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
        this.note = List<Annotation>();
        if (json['note'] != null && json['note'].length > 0) {
          if( json['note'] is List ){
            json['note'].forEach((i){
              this.note.add(FHIRObjectFactory.buildFromJSON('Annotation', i));
            });
          } else {
            // this handles the case when the list only has one object and does not return as a list
            var i = json['note'];
            this.note.add(FHIRObjectFactory.buildFromJSON('Annotation', i));
          }          
        }
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
        this.topic = List<CodeableConcept>();
        if (json['topic'] != null && json['topic'].length > 0) {
          if( json['topic'] is List ){
            json['topic'].forEach((i){
              this.topic.add(FHIRObjectFactory.buildFromJSON('CodeableConcept', i));
            });
          } else {
            // this handles the case when the list only has one object and does not return as a list
            var i = json['topic'];
            this.topic.add(FHIRObjectFactory.buildFromJSON('CodeableConcept', i));
          }          
        }
        this.author = List<ContactDetail>();
        if (json['author'] != null && json['author'].length > 0) {
          if( json['author'] is List ){
            json['author'].forEach((i){
              this.author.add(FHIRObjectFactory.buildFromJSON('ContactDetail', i));
            });
          } else {
            // this handles the case when the list only has one object and does not return as a list
            var i = json['author'];
            this.author.add(FHIRObjectFactory.buildFromJSON('ContactDetail', i));
          }          
        }
        this.editor = List<ContactDetail>();
        if (json['editor'] != null && json['editor'].length > 0) {
          if( json['editor'] is List ){
            json['editor'].forEach((i){
              this.editor.add(FHIRObjectFactory.buildFromJSON('ContactDetail', i));
            });
          } else {
            // this handles the case when the list only has one object and does not return as a list
            var i = json['editor'];
            this.editor.add(FHIRObjectFactory.buildFromJSON('ContactDetail', i));
          }          
        }
        this.reviewer = List<ContactDetail>();
        if (json['reviewer'] != null && json['reviewer'].length > 0) {
          if( json['reviewer'] is List ){
            json['reviewer'].forEach((i){
              this.reviewer.add(FHIRObjectFactory.buildFromJSON('ContactDetail', i));
            });
          } else {
            // this handles the case when the list only has one object and does not return as a list
            var i = json['reviewer'];
            this.reviewer.add(FHIRObjectFactory.buildFromJSON('ContactDetail', i));
          }          
        }
        this.endorser = List<ContactDetail>();
        if (json['endorser'] != null && json['endorser'].length > 0) {
          if( json['endorser'] is List ){
            json['endorser'].forEach((i){
              this.endorser.add(FHIRObjectFactory.buildFromJSON('ContactDetail', i));
            });
          } else {
            // this handles the case when the list only has one object and does not return as a list
            var i = json['endorser'];
            this.endorser.add(FHIRObjectFactory.buildFromJSON('ContactDetail', i));
          }          
        }
        this.relatedArtifact = List<RelatedArtifact>();
        if (json['relatedArtifact'] != null && json['relatedArtifact'].length > 0) {
          if( json['relatedArtifact'] is List ){
            json['relatedArtifact'].forEach((i){
              this.relatedArtifact.add(FHIRObjectFactory.buildFromJSON('RelatedArtifact', i));
            });
          } else {
            // this handles the case when the list only has one object and does not return as a list
            var i = json['relatedArtifact'];
            this.relatedArtifact.add(FHIRObjectFactory.buildFromJSON('RelatedArtifact', i));
          }          
        }
        this.exposureBackground = json['exposureBackground'] == null ? null : FHIRObjectFactory.buildFromJSON('Reference', json['exposureBackground']);
        this.exposureVariant = List<Reference>();
        if (json['exposureVariant'] != null && json['exposureVariant'].length > 0) {
          if( json['exposureVariant'] is List ){
            json['exposureVariant'].forEach((i){
              this.exposureVariant.add(FHIRObjectFactory.buildFromJSON('Reference', i));
            });
          } else {
            // this handles the case when the list only has one object and does not return as a list
            var i = json['exposureVariant'];
            this.exposureVariant.add(FHIRObjectFactory.buildFromJSON('Reference', i));
          }          
        }
        this.outcome = List<Reference>();
        if (json['outcome'] != null && json['outcome'].length > 0) {
          if( json['outcome'] is List ){
            json['outcome'].forEach((i){
              this.outcome.add(FHIRObjectFactory.buildFromJSON('Reference', i));
            });
          } else {
            // this handles the case when the list only has one object and does not return as a list
            var i = json['outcome'];
            this.outcome.add(FHIRObjectFactory.buildFromJSON('Reference', i));
          }          
        }
    }
}
