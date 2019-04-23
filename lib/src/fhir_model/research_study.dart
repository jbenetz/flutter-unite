import 'meta.dart';
import 'fhir_object_factory.dart';
import 'element.dart';
import 'narrative.dart';
import 'extension.dart';
import 'identifier.dart';
import 'reference.dart';
import 'codeable_concept.dart';
import 'contact_detail.dart';
import 'related_artifact.dart';
import 'period.dart';
import 'annotation.dart';
import 'research_study_arm.dart';
import 'research_study_objective.dart';
/// A process where a researcher or organization plans and then executes a series of steps intended to increase the field of healthcare-related knowledge.  This includes studies of safety, efficacy, comparative effectiveness and other information about medications, devices, therapies and other interventional and investigative techniques.  A ResearchStudy involves the gathering of information about human or animal subjects.
class ResearchStudy {
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
    /// Identifiers assigned to this research study by the sponsor or other systems.
    List<Identifier> identifier;
    /// A short, descriptive user-friendly label for the study.
    String title;
    /// Extensions for title
    Element extTitle;
    /// The set of steps expected to be performed as part of the execution of the study.
    List<Reference> protocol;
    /// A larger research study of which this particular study is a component or step.
    List<Reference> partOf;
    /// The current state of the study.
    String status;
    /// Extensions for status
    Element extStatus;
    /// The type of study based upon the intent of the study's activities. A classification of the intent of the study.
    CodeableConcept primaryPurposeType;
    /// The stage in the progression of a therapy from initial experimental use in humans in clinical trials to post-market evaluation.
    CodeableConcept phase;
    /// Codes categorizing the type of study such as investigational vs. observational, type of blinding, type of randomization, safety vs. efficacy, etc.
    List<CodeableConcept> category;
    /// The medication(s), food(s), therapy(ies), device(s) or other concerns or interventions that the study is seeking to gain more information about.
    List<CodeableConcept> focus;
    /// The condition that is the focus of the study.  For example, In a study to examine risk factors for Lupus, might have as an inclusion criterion "healthy volunteer", but the target condition code would be a Lupus SNOMED code.
    List<CodeableConcept> condition;
    /// Contact details to assist a user in learning more about or engaging with the study.
    List<ContactDetail> contact;
    /// Citations, references and other related documents.
    List<RelatedArtifact> relatedArtifact;
    /// Key terms to aid in searching for or filtering the study.
    List<CodeableConcept> keyword;
    /// Indicates a country, state or other region where the study is taking place.
    List<CodeableConcept> location;
    /// A full description of how the study is being conducted.
    String description;
    /// Extensions for description
    Element extDescription;
    /// Reference to a Group that defines the criteria for and quantity of subjects participating in the study.  E.g. " 200 female Europeans between the ages of 20 and 45 with early onset diabetes".
    List<Reference> enrollment;
    /// Identifies the start date and the expected (or actual, depending on status) end date for the study.
    Period period;
    /// An organization that initiates the investigation and is legally responsible for the study.
    Reference sponsor;
    /// A researcher in a study who oversees multiple aspects of the study, such as concept development, protocol writing, protocol submission for IRB approval, participant recruitment, informed consent, data collection, analysis, interpretation and presentation.
    Reference principalInvestigator;
    /// A facility in which study activities are conducted.
    List<Reference> site;
    /// A description and/or code explaining the premature termination of the study.
    CodeableConcept reasonStopped;
    /// Comments made about the study by the performer, subject or other participants.
    List<Annotation> note;
    /// Describes an expected sequence of events for one of the participants of a study.  E.g. Exposure to drug A, wash-out, exposure to drug B, wash-out, follow-up.
    List<ResearchStudyArm> arm;
    /// A goal that the study is aiming to achieve in terms of a scientific question to be answered by the analysis of data collected during the study.
    List<ResearchStudyObjective> objective;
 
    ResearchStudy.fromJSON( Map json ){
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
        this.title = json['title'];
        this.extTitle = json['_title'] == null ? null : FHIRObjectFactory.buildFromJSON('Element', json['_title']);
        this.protocol = List<Reference>();
        if (json['protocol'] != null && json['protocol'].length > 0) {
          if( json['protocol'] is List ){
            json['protocol'].forEach((i){
              this.protocol.add(FHIRObjectFactory.buildFromJSON('Reference', i));
            });
          } else {
            // this handles the case when the list only has one object and does not return as a list
            var i = json['protocol'];
            this.protocol.add(FHIRObjectFactory.buildFromJSON('Reference', i));
          }          
        }
        this.partOf = List<Reference>();
        if (json['partOf'] != null && json['partOf'].length > 0) {
          if( json['partOf'] is List ){
            json['partOf'].forEach((i){
              this.partOf.add(FHIRObjectFactory.buildFromJSON('Reference', i));
            });
          } else {
            // this handles the case when the list only has one object and does not return as a list
            var i = json['partOf'];
            this.partOf.add(FHIRObjectFactory.buildFromJSON('Reference', i));
          }          
        }
        this.status = json['status'];
        this.extStatus = json['_status'] == null ? null : FHIRObjectFactory.buildFromJSON('Element', json['_status']);
        this.primaryPurposeType = json['primaryPurposeType'] == null ? null : FHIRObjectFactory.buildFromJSON('CodeableConcept', json['primaryPurposeType']);
        this.phase = json['phase'] == null ? null : FHIRObjectFactory.buildFromJSON('CodeableConcept', json['phase']);
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
        this.focus = List<CodeableConcept>();
        if (json['focus'] != null && json['focus'].length > 0) {
          if( json['focus'] is List ){
            json['focus'].forEach((i){
              this.focus.add(FHIRObjectFactory.buildFromJSON('CodeableConcept', i));
            });
          } else {
            // this handles the case when the list only has one object and does not return as a list
            var i = json['focus'];
            this.focus.add(FHIRObjectFactory.buildFromJSON('CodeableConcept', i));
          }          
        }
        this.condition = List<CodeableConcept>();
        if (json['condition'] != null && json['condition'].length > 0) {
          if( json['condition'] is List ){
            json['condition'].forEach((i){
              this.condition.add(FHIRObjectFactory.buildFromJSON('CodeableConcept', i));
            });
          } else {
            // this handles the case when the list only has one object and does not return as a list
            var i = json['condition'];
            this.condition.add(FHIRObjectFactory.buildFromJSON('CodeableConcept', i));
          }          
        }
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
        this.keyword = List<CodeableConcept>();
        if (json['keyword'] != null && json['keyword'].length > 0) {
          if( json['keyword'] is List ){
            json['keyword'].forEach((i){
              this.keyword.add(FHIRObjectFactory.buildFromJSON('CodeableConcept', i));
            });
          } else {
            // this handles the case when the list only has one object and does not return as a list
            var i = json['keyword'];
            this.keyword.add(FHIRObjectFactory.buildFromJSON('CodeableConcept', i));
          }          
        }
        this.location = List<CodeableConcept>();
        if (json['location'] != null && json['location'].length > 0) {
          if( json['location'] is List ){
            json['location'].forEach((i){
              this.location.add(FHIRObjectFactory.buildFromJSON('CodeableConcept', i));
            });
          } else {
            // this handles the case when the list only has one object and does not return as a list
            var i = json['location'];
            this.location.add(FHIRObjectFactory.buildFromJSON('CodeableConcept', i));
          }          
        }
        this.description = json['description'];
        this.extDescription = json['_description'] == null ? null : FHIRObjectFactory.buildFromJSON('Element', json['_description']);
        this.enrollment = List<Reference>();
        if (json['enrollment'] != null && json['enrollment'].length > 0) {
          if( json['enrollment'] is List ){
            json['enrollment'].forEach((i){
              this.enrollment.add(FHIRObjectFactory.buildFromJSON('Reference', i));
            });
          } else {
            // this handles the case when the list only has one object and does not return as a list
            var i = json['enrollment'];
            this.enrollment.add(FHIRObjectFactory.buildFromJSON('Reference', i));
          }          
        }
        this.period = json['period'] == null ? null : FHIRObjectFactory.buildFromJSON('Period', json['period']);
        this.sponsor = json['sponsor'] == null ? null : FHIRObjectFactory.buildFromJSON('Reference', json['sponsor']);
        this.principalInvestigator = json['principalInvestigator'] == null ? null : FHIRObjectFactory.buildFromJSON('Reference', json['principalInvestigator']);
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
        this.reasonStopped = json['reasonStopped'] == null ? null : FHIRObjectFactory.buildFromJSON('CodeableConcept', json['reasonStopped']);
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
        this.arm = List<ResearchStudyArm>();
        if (json['arm'] != null && json['arm'].length > 0) {
          if( json['arm'] is List ){
            json['arm'].forEach((i){
              this.arm.add(FHIRObjectFactory.buildFromJSON('ResearchStudyArm', i));
            });
          } else {
            // this handles the case when the list only has one object and does not return as a list
            var i = json['arm'];
            this.arm.add(FHIRObjectFactory.buildFromJSON('ResearchStudyArm', i));
          }          
        }
        this.objective = List<ResearchStudyObjective>();
        if (json['objective'] != null && json['objective'].length > 0) {
          if( json['objective'] is List ){
            json['objective'].forEach((i){
              this.objective.add(FHIRObjectFactory.buildFromJSON('ResearchStudyObjective', i));
            });
          } else {
            // this handles the case when the list only has one object and does not return as a list
            var i = json['objective'];
            this.objective.add(FHIRObjectFactory.buildFromJSON('ResearchStudyObjective', i));
          }          
        }
    }
}
