import 'meta.dart';
import 'fhir_object_factory.dart';
import 'element.dart';
import 'narrative.dart';
import 'extension.dart';
import 'identifier.dart';
import 'codeable_concept.dart';
import 'reference.dart';
import 'contact_detail.dart';
import 'usage_context.dart';
import 'period.dart';
import 'related_artifact.dart';
import 'timing.dart';
import 'age.dart';
import 'range.dart';
import 'duration.dart';
import 'activity_definition_participant.dart';
import 'quantity.dart';
import 'dosage.dart';
import 'activity_definition_dynamic_value.dart';
/// This resource allows for the definition of some activity to be performed, independent of a particular patient, practitioner, or other performance context.
class ActivityDefinition {
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
    /// An absolute URI that is used to identify this activity definition when it is referenced in a specification, model, design or an instance; also called its canonical identifier. This SHOULD be globally unique and SHOULD be a literal address at which at which an authoritative instance of this activity definition is (or will be) published. This URL can be the target of a canonical reference. It SHALL remain the same when the activity definition is stored on different servers.
    String url;
    /// Extensions for url
    Element extUrl;
    /// A formal identifier that is used to identify this activity definition when it is represented in other formats, or referenced in a specification, model, design or an instance.
    List<Identifier> identifier;
    /// The identifier that is used to identify this version of the activity definition when it is referenced in a specification, model, design or instance. This is an arbitrary value managed by the activity definition author and is not expected to be globally unique. For example, it might be a timestamp (e.g. yyyymmdd) if a managed version is not available. There is also no expectation that versions can be placed in a lexicographical sequence. To provide a version consistent with the Decision Support Service specification, use the format Major.Minor.Revision (e.g. 1.0.0). For more information on versioning knowledge assets, refer to the Decision Support Service specification. Note that a version is required for non-experimental active assets.
    String version;
    /// Extensions for version
    Element extVersion;
    /// A natural language name identifying the activity definition. This name should be usable as an identifier for the module by machine processing applications such as code generation.
    String name;
    /// Extensions for name
    Element extName;
    /// A short, descriptive, user-friendly title for the activity definition.
    String title;
    /// Extensions for title
    Element extTitle;
    /// An explanatory or alternate title for the activity definition giving additional information about its content.
    String subtitle;
    /// Extensions for subtitle
    Element extSubtitle;
    /// The status of this activity definition. Enables tracking the life-cycle of the content.
    String status;
    /// Extensions for status
    Element extStatus;
    /// A Boolean value to indicate that this activity definition is authored for testing purposes (or education/evaluation/marketing) and is not intended to be used for genuine usage.
    bool experimental;
    /// Extensions for experimental
    Element extExperimental;
    /// A code or group definition that describes the intended subject of the activity being defined.
    CodeableConcept subjectCodeableConcept;
    /// A code or group definition that describes the intended subject of the activity being defined.
    Reference subjectReference;
    /// The date  (and optionally time) when the activity definition was published. The date must change when the business version changes and it must change if the status code changes. In addition, it should change when the substantive content of the activity definition changes.
    DateTime date;
    /// Extensions for date
    Element extDate;
    /// The name of the organization or individual that published the activity definition.
    String publisher;
    /// Extensions for publisher
    Element extPublisher;
    /// Contact details to assist a user in finding and communicating with the publisher.
    List<ContactDetail> contact;
    /// A free text natural language description of the activity definition from a consumer's perspective.
    String description;
    /// Extensions for description
    Element extDescription;
    /// The content was developed with a focus and intent of supporting the contexts that are listed. These contexts may be general categories (gender, age, ...) or may be references to specific programs (insurance plans, studies, ...) and may be used to assist with indexing and searching for appropriate activity definition instances.
    List<UsageContext> useContext;
    /// A legal or geographic region in which the activity definition is intended to be used.
    List<CodeableConcept> jurisdiction;
    /// Explanation of why this activity definition is needed and why it has been designed as it has.
    String purpose;
    /// Extensions for purpose
    Element extPurpose;
    /// A detailed description of how the activity definition is used from a clinical perspective.
    String usage;
    /// Extensions for usage
    Element extUsage;
    /// A copyright statement relating to the activity definition and/or its contents. Copyright statements are generally legal restrictions on the use and publishing of the activity definition.
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
    /// The period during which the activity definition content was or is planned to be in active use.
    Period effectivePeriod;
    /// Descriptive topics related to the content of the activity. Topics provide a high-level categorization of the activity that can be useful for filtering and searching.
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
    /// A reference to a Library resource containing any formal logic used by the activity definition.
    List<String> library;
    /// A description of the kind of resource the activity definition is representing. For example, a MedicationRequest, a ServiceRequest, or a CommunicationRequest. Typically, but not always, this is a Request resource.
    String kind;
    /// Extensions for kind
    Element extKind;
    /// A profile to which the target of the activity definition is expected to conform.
    String profile;
    /// Detailed description of the type of activity; e.g. What lab test, what procedure, what kind of encounter.
    CodeableConcept code;
    /// Indicates the level of authority/intentionality associated with the activity and where the request should fit into the workflow chain.
    String intent;
    /// Extensions for intent
    Element extIntent;
    /// Indicates how quickly the activity  should be addressed with respect to other requests.
    String priority;
    /// Extensions for priority
    Element extPriority;
    /// Set this to true if the definition is to indicate that a particular activity should NOT be performed. If true, this element should be interpreted to reinforce a negative coding. For example NPO as a code with a doNotPerform of true would still indicate to NOT perform the action.
    bool doNotPerform;
    /// Extensions for doNotPerform
    Element extDoNotPerform;
    /// The period, timing or frequency upon which the described activity is to occur.
    Timing timingTiming;
    /// Extensions for timingDateTime
    Element extTimingDateTime;
    /// The period, timing or frequency upon which the described activity is to occur.
    Age timingAge;
    /// The period, timing or frequency upon which the described activity is to occur.
    Period timingPeriod;
    /// The period, timing or frequency upon which the described activity is to occur.
    Range timingRange;
    /// The period, timing or frequency upon which the described activity is to occur.
    Duration timingDuration;
    /// Identifies the facility where the activity will occur; e.g. home, hospital, specific clinic, etc.
    Reference location;
    /// Indicates who should participate in performing the action described.
    List<ActivityDefinitionParticipant> participant;
    /// Identifies the food, drug or other product being consumed or supplied in the activity.
    Reference productReference;
    /// Identifies the food, drug or other product being consumed or supplied in the activity.
    CodeableConcept productCodeableConcept;
    /// Identifies the quantity expected to be consumed at once (per dose, per meal, etc.).
    Quantity quantity;
    /// Provides detailed dosage instructions in the same way that they are described for MedicationRequest resources.
    List<Dosage> dosage;
    /// Indicates the sites on the subject's body where the procedure should be performed (I.e. the target sites).
    List<CodeableConcept> bodySite;
    /// Defines specimen requirements for the action to be performed, such as required specimens for a lab test.
    List<Reference> specimenRequirement;
    /// Defines observation requirements for the action to be performed, such as body weight or surface area.
    List<Reference> observationRequirement;
    /// Defines the observations that are expected to be produced by the action.
    List<Reference> observationResultRequirement;
    /// A reference to a StructureMap resource that defines a transform that can be executed to produce the intent resource using the ActivityDefinition instance as the input.
    String transform;
    /// Dynamic values that will be evaluated to produce values for elements of the resulting resource. For example, if the dosage of a medication must be computed based on the patient's weight, a dynamic value would be used to specify an expression that calculated the weight, and the path on the request resource that would contain the result.
    List<ActivityDefinitionDynamicValue> dynamicValue;
 
    ActivityDefinition.fromJSON( Map json ){
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
        this.subtitle = json['subtitle'];
        this.extSubtitle = json['_subtitle'] == null ? null : FHIRObjectFactory.buildFromJSON('Element', json['_subtitle']);
        this.status = json['status'];
        this.extStatus = json['_status'] == null ? null : FHIRObjectFactory.buildFromJSON('Element', json['_status']);
        this.experimental = json['experimental'];
        this.extExperimental = json['_experimental'] == null ? null : FHIRObjectFactory.buildFromJSON('Element', json['_experimental']);
        this.subjectCodeableConcept = json['subjectCodeableConcept'] == null ? null : FHIRObjectFactory.buildFromJSON('CodeableConcept', json['subjectCodeableConcept']);
        this.subjectReference = json['subjectReference'] == null ? null : FHIRObjectFactory.buildFromJSON('Reference', json['subjectReference']);
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
        this.usage = json['usage'];
        this.extUsage = json['_usage'] == null ? null : FHIRObjectFactory.buildFromJSON('Element', json['_usage']);
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
        this.library = List<String>();
        if (json['library'] != null && json['library'].length > 0) {
          if( json['library'] is List ){
            json['library'].forEach((i){
              this.library.add(i);
            });
          } else {
            // this handles the case when the list only has one object and does not return as a list
            var i = json['library'];
            this.library.add(i);
          }          
        }
        this.kind = json['kind'];
        this.extKind = json['_kind'] == null ? null : FHIRObjectFactory.buildFromJSON('Element', json['_kind']);
        this.profile = json['profile'];
        this.code = json['code'] == null ? null : FHIRObjectFactory.buildFromJSON('CodeableConcept', json['code']);
        this.intent = json['intent'];
        this.extIntent = json['_intent'] == null ? null : FHIRObjectFactory.buildFromJSON('Element', json['_intent']);
        this.priority = json['priority'];
        this.extPriority = json['_priority'] == null ? null : FHIRObjectFactory.buildFromJSON('Element', json['_priority']);
        this.doNotPerform = json['doNotPerform'];
        this.extDoNotPerform = json['_doNotPerform'] == null ? null : FHIRObjectFactory.buildFromJSON('Element', json['_doNotPerform']);
        this.timingTiming = json['timingTiming'] == null ? null : FHIRObjectFactory.buildFromJSON('Timing', json['timingTiming']);
        this.extTimingDateTime = json['_timingDateTime'] == null ? null : FHIRObjectFactory.buildFromJSON('Element', json['_timingDateTime']);
        this.timingAge = json['timingAge'] == null ? null : FHIRObjectFactory.buildFromJSON('Age', json['timingAge']);
        this.timingPeriod = json['timingPeriod'] == null ? null : FHIRObjectFactory.buildFromJSON('Period', json['timingPeriod']);
        this.timingRange = json['timingRange'] == null ? null : FHIRObjectFactory.buildFromJSON('Range', json['timingRange']);
        this.timingDuration = json['timingDuration'] == null ? null : FHIRObjectFactory.buildFromJSON('Duration', json['timingDuration']);
        this.location = json['location'] == null ? null : FHIRObjectFactory.buildFromJSON('Reference', json['location']);
        this.participant = List<ActivityDefinitionParticipant>();
        if (json['participant'] != null && json['participant'].length > 0) {
          if( json['participant'] is List ){
            json['participant'].forEach((i){
              this.participant.add(FHIRObjectFactory.buildFromJSON('ActivityDefinitionParticipant', i));
            });
          } else {
            // this handles the case when the list only has one object and does not return as a list
            var i = json['participant'];
            this.participant.add(FHIRObjectFactory.buildFromJSON('ActivityDefinitionParticipant', i));
          }          
        }
        this.productReference = json['productReference'] == null ? null : FHIRObjectFactory.buildFromJSON('Reference', json['productReference']);
        this.productCodeableConcept = json['productCodeableConcept'] == null ? null : FHIRObjectFactory.buildFromJSON('CodeableConcept', json['productCodeableConcept']);
        this.quantity = json['quantity'] == null ? null : FHIRObjectFactory.buildFromJSON('Quantity', json['quantity']);
        this.dosage = List<Dosage>();
        if (json['dosage'] != null && json['dosage'].length > 0) {
          if( json['dosage'] is List ){
            json['dosage'].forEach((i){
              this.dosage.add(FHIRObjectFactory.buildFromJSON('Dosage', i));
            });
          } else {
            // this handles the case when the list only has one object and does not return as a list
            var i = json['dosage'];
            this.dosage.add(FHIRObjectFactory.buildFromJSON('Dosage', i));
          }          
        }
        this.bodySite = List<CodeableConcept>();
        if (json['bodySite'] != null && json['bodySite'].length > 0) {
          if( json['bodySite'] is List ){
            json['bodySite'].forEach((i){
              this.bodySite.add(FHIRObjectFactory.buildFromJSON('CodeableConcept', i));
            });
          } else {
            // this handles the case when the list only has one object and does not return as a list
            var i = json['bodySite'];
            this.bodySite.add(FHIRObjectFactory.buildFromJSON('CodeableConcept', i));
          }          
        }
        this.specimenRequirement = List<Reference>();
        if (json['specimenRequirement'] != null && json['specimenRequirement'].length > 0) {
          if( json['specimenRequirement'] is List ){
            json['specimenRequirement'].forEach((i){
              this.specimenRequirement.add(FHIRObjectFactory.buildFromJSON('Reference', i));
            });
          } else {
            // this handles the case when the list only has one object and does not return as a list
            var i = json['specimenRequirement'];
            this.specimenRequirement.add(FHIRObjectFactory.buildFromJSON('Reference', i));
          }          
        }
        this.observationRequirement = List<Reference>();
        if (json['observationRequirement'] != null && json['observationRequirement'].length > 0) {
          if( json['observationRequirement'] is List ){
            json['observationRequirement'].forEach((i){
              this.observationRequirement.add(FHIRObjectFactory.buildFromJSON('Reference', i));
            });
          } else {
            // this handles the case when the list only has one object and does not return as a list
            var i = json['observationRequirement'];
            this.observationRequirement.add(FHIRObjectFactory.buildFromJSON('Reference', i));
          }          
        }
        this.observationResultRequirement = List<Reference>();
        if (json['observationResultRequirement'] != null && json['observationResultRequirement'].length > 0) {
          if( json['observationResultRequirement'] is List ){
            json['observationResultRequirement'].forEach((i){
              this.observationResultRequirement.add(FHIRObjectFactory.buildFromJSON('Reference', i));
            });
          } else {
            // this handles the case when the list only has one object and does not return as a list
            var i = json['observationResultRequirement'];
            this.observationResultRequirement.add(FHIRObjectFactory.buildFromJSON('Reference', i));
          }          
        }
        this.transform = json['transform'];
        this.dynamicValue = List<ActivityDefinitionDynamicValue>();
        if (json['dynamicValue'] != null && json['dynamicValue'].length > 0) {
          if( json['dynamicValue'] is List ){
            json['dynamicValue'].forEach((i){
              this.dynamicValue.add(FHIRObjectFactory.buildFromJSON('ActivityDefinitionDynamicValue', i));
            });
          } else {
            // this handles the case when the list only has one object and does not return as a list
            var i = json['dynamicValue'];
            this.dynamicValue.add(FHIRObjectFactory.buildFromJSON('ActivityDefinitionDynamicValue', i));
          }          
        }
    }
}
