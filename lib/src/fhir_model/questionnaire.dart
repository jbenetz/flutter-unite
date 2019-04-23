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
import 'coding.dart';
import 'questionnaire_item.dart';
/// A structured set of questions intended to guide the collection of answers from end-users. Questionnaires provide detailed control over order, presentation, phraseology and grouping to allow coherent, consistent data collection.
class Questionnaire {
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
    /// An absolute URI that is used to identify this questionnaire when it is referenced in a specification, model, design or an instance; also called its canonical identifier. This SHOULD be globally unique and SHOULD be a literal address at which at which an authoritative instance of this questionnaire is (or will be) published. This URL can be the target of a canonical reference. It SHALL remain the same when the questionnaire is stored on different servers.
    String url;
    /// Extensions for url
    Element extUrl;
    /// A formal identifier that is used to identify this questionnaire when it is represented in other formats, or referenced in a specification, model, design or an instance.
    List<Identifier> identifier;
    /// The identifier that is used to identify this version of the questionnaire when it is referenced in a specification, model, design or instance. This is an arbitrary value managed by the questionnaire author and is not expected to be globally unique. For example, it might be a timestamp (e.g. yyyymmdd) if a managed version is not available. There is also no expectation that versions can be placed in a lexicographical sequence.
    String version;
    /// Extensions for version
    Element extVersion;
    /// A natural language name identifying the questionnaire. This name should be usable as an identifier for the module by machine processing applications such as code generation.
    String name;
    /// Extensions for name
    Element extName;
    /// A short, descriptive, user-friendly title for the questionnaire.
    String title;
    /// Extensions for title
    Element extTitle;
    /// The URL of a Questionnaire that this Questionnaire is based on.
    List<String> derivedFrom;
    /// The status of this questionnaire. Enables tracking the life-cycle of the content.
    String status;
    /// Extensions for status
    Element extStatus;
    /// A Boolean value to indicate that this questionnaire is authored for testing purposes (or education/evaluation/marketing) and is not intended to be used for genuine usage.
    bool experimental;
    /// Extensions for experimental
    Element extExperimental;
    /// The types of subjects that can be the subject of responses created for the questionnaire.
    List<String> subjectType;
    /// Extensions for subjectType
    List<Element> extSubjectType;
    /// The date  (and optionally time) when the questionnaire was published. The date must change when the business version changes and it must change if the status code changes. In addition, it should change when the substantive content of the questionnaire changes.
    DateTime date;
    /// Extensions for date
    Element extDate;
    /// The name of the organization or individual that published the questionnaire.
    String publisher;
    /// Extensions for publisher
    Element extPublisher;
    /// Contact details to assist a user in finding and communicating with the publisher.
    List<ContactDetail> contact;
    /// A free text natural language description of the questionnaire from a consumer's perspective.
    String description;
    /// Extensions for description
    Element extDescription;
    /// The content was developed with a focus and intent of supporting the contexts that are listed. These contexts may be general categories (gender, age, ...) or may be references to specific programs (insurance plans, studies, ...) and may be used to assist with indexing and searching for appropriate questionnaire instances.
    List<UsageContext> useContext;
    /// A legal or geographic region in which the questionnaire is intended to be used.
    List<CodeableConcept> jurisdiction;
    /// Explanation of why this questionnaire is needed and why it has been designed as it has.
    String purpose;
    /// Extensions for purpose
    Element extPurpose;
    /// A copyright statement relating to the questionnaire and/or its contents. Copyright statements are generally legal restrictions on the use and publishing of the questionnaire.
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
    /// The period during which the questionnaire content was or is planned to be in active use.
    Period effectivePeriod;
    /// An identifier for this question or group of questions in a particular terminology such as LOINC.
    List<Coding> code;
    /// A particular question, question grouping or display text that is part of the questionnaire.
    List<QuestionnaireItem> item;
 
    Questionnaire.fromJSON( Map json ){
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
        this.derivedFrom = List<String>();
        if (json['derivedFrom'] != null && json['derivedFrom'].length > 0) {
          if( json['derivedFrom'] is List ){
            json['derivedFrom'].forEach((i){
              this.derivedFrom.add(i);
            });
          } else {
            // this handles the case when the list only has one object and does not return as a list
            var i = json['derivedFrom'];
            this.derivedFrom.add(i);
          }          
        }
        this.status = json['status'];
        this.extStatus = json['_status'] == null ? null : FHIRObjectFactory.buildFromJSON('Element', json['_status']);
        this.experimental = json['experimental'];
        this.extExperimental = json['_experimental'] == null ? null : FHIRObjectFactory.buildFromJSON('Element', json['_experimental']);
        this.subjectType = List<String>();
        if (json['subjectType'] != null && json['subjectType'].length > 0) {
          if( json['subjectType'] is List ){
            json['subjectType'].forEach((i){
              this.subjectType.add(i);
            });
          } else {
            // this handles the case when the list only has one object and does not return as a list
            var i = json['subjectType'];
            this.subjectType.add(i);
          }          
        }
        this.extSubjectType = List<Element>();
        if (json['_subjectType'] != null && json['_subjectType'].length > 0) {
          if( json['_subjectType'] is List ){
            json['_subjectType'].forEach((i){
              this.extSubjectType.add(FHIRObjectFactory.buildFromJSON('Element', i));
            });
          } else {
            // this handles the case when the list only has one object and does not return as a list
            var i = json['_subjectType'];
            this.extSubjectType.add(FHIRObjectFactory.buildFromJSON('Element', i));
          }          
        }
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
        if( json['approvalDate'] != null ) { this.approvalDate = DateTime.parse(json['approvalDate']);}
        this.extApprovalDate = json['_approvalDate'] == null ? null : FHIRObjectFactory.buildFromJSON('Element', json['_approvalDate']);
        if( json['lastReviewDate'] != null ) { this.lastReviewDate = DateTime.parse(json['lastReviewDate']);}
        this.extLastReviewDate = json['_lastReviewDate'] == null ? null : FHIRObjectFactory.buildFromJSON('Element', json['_lastReviewDate']);
        this.effectivePeriod = json['effectivePeriod'] == null ? null : FHIRObjectFactory.buildFromJSON('Period', json['effectivePeriod']);
        this.code = List<Coding>();
        if (json['code'] != null && json['code'].length > 0) {
          if( json['code'] is List ){
            json['code'].forEach((i){
              this.code.add(FHIRObjectFactory.buildFromJSON('Coding', i));
            });
          } else {
            // this handles the case when the list only has one object and does not return as a list
            var i = json['code'];
            this.code.add(FHIRObjectFactory.buildFromJSON('Coding', i));
          }          
        }
        this.item = List<QuestionnaireItem>();
        if (json['item'] != null && json['item'].length > 0) {
          if( json['item'] is List ){
            json['item'].forEach((i){
              this.item.add(FHIRObjectFactory.buildFromJSON('QuestionnaireItem', i));
            });
          } else {
            // this handles the case when the list only has one object and does not return as a list
            var i = json['item'];
            this.item.add(FHIRObjectFactory.buildFromJSON('QuestionnaireItem', i));
          }          
        }
    }
}
