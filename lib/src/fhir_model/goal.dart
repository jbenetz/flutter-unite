import 'meta.dart';
import 'fhir_object_factory.dart';
import 'element.dart';
import 'narrative.dart';
import 'extension.dart';
import 'identifier.dart';
import 'codeable_concept.dart';
import 'reference.dart';
import 'goal_target.dart';
import 'annotation.dart';
/// Describes the intended objective(s) for a patient, group or organization care, for example, weight loss, restoring an activity of daily living, obtaining herd immunity via immunization, meeting a process improvement objective, etc.
class Goal {
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
    /// Business identifiers assigned to this goal by the performer or other systems which remain constant as the resource is updated and propagates from server to server.
    List<Identifier> identifier;
    /// The state of the goal throughout its lifecycle.
    String lifecycleStatus;
    /// Extensions for lifecycleStatus
    Element extLifecycleStatus;
    /// Describes the progression, or lack thereof, towards the goal against the target.
    CodeableConcept achievementStatus;
    /// Indicates a category the goal falls within.
    List<CodeableConcept> category;
    /// Identifies the mutually agreed level of importance associated with reaching/sustaining the goal.
    CodeableConcept priority;
    /// Human-readable and/or coded description of a specific desired objective of care, such as "control blood pressure" or "negotiate an obstacle course" or "dance with child at wedding".
    CodeableConcept description;
    /// Identifies the patient, group or organization for whom the goal is being established.
    Reference subject;
    /// Extensions for startDate
    Element extStartDate;
    /// The date or event after which the goal should begin being pursued.
    CodeableConcept startCodeableConcept;
    /// Indicates what should be done by when.
    List<GoalTarget> target;
    /// Identifies when the current status.  I.e. When initially created, when achieved, when cancelled, etc.
    DateTime statusDate;
    /// Extensions for statusDate
    Element extStatusDate;
    /// Captures the reason for the current status.
    String statusReason;
    /// Extensions for statusReason
    Element extStatusReason;
    /// Indicates whose goal this is - patient goal, practitioner goal, etc.
    Reference expressedBy;
    /// The identified conditions and other health record elements that are intended to be addressed by the goal.
    List<Reference> addresses;
    /// Any comments related to the goal.
    List<Annotation> note;
    /// Identifies the change (or lack of change) at the point when the status of the goal is assessed.
    List<CodeableConcept> outcomeCode;
    /// Details of what's changed (or not changed).
    List<Reference> outcomeReference;
 
    Goal.fromJSON( Map json ){
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
        this.lifecycleStatus = json['lifecycleStatus'];
        this.extLifecycleStatus = json['_lifecycleStatus'] == null ? null : FHIRObjectFactory.buildFromJSON('Element', json['_lifecycleStatus']);
        this.achievementStatus = json['achievementStatus'] == null ? null : FHIRObjectFactory.buildFromJSON('CodeableConcept', json['achievementStatus']);
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
        this.priority = json['priority'] == null ? null : FHIRObjectFactory.buildFromJSON('CodeableConcept', json['priority']);
        this.description = json['description'] == null ? null : FHIRObjectFactory.buildFromJSON('CodeableConcept', json['description']);
        this.subject = json['subject'] == null ? null : FHIRObjectFactory.buildFromJSON('Reference', json['subject']);
        this.extStartDate = json['_startDate'] == null ? null : FHIRObjectFactory.buildFromJSON('Element', json['_startDate']);
        this.startCodeableConcept = json['startCodeableConcept'] == null ? null : FHIRObjectFactory.buildFromJSON('CodeableConcept', json['startCodeableConcept']);
        this.target = List<GoalTarget>();
        if (json['target'] != null && json['target'].length > 0) {
          if( json['target'] is List ){
            json['target'].forEach((i){
              this.target.add(FHIRObjectFactory.buildFromJSON('GoalTarget', i));
            });
          } else {
            // this handles the case when the list only has one object and does not return as a list
            var i = json['target'];
            this.target.add(FHIRObjectFactory.buildFromJSON('GoalTarget', i));
          }          
        }
        if( json['statusDate'] != null ) { this.statusDate = DateTime.parse(json['statusDate']);}
        this.extStatusDate = json['_statusDate'] == null ? null : FHIRObjectFactory.buildFromJSON('Element', json['_statusDate']);
        this.statusReason = json['statusReason'];
        this.extStatusReason = json['_statusReason'] == null ? null : FHIRObjectFactory.buildFromJSON('Element', json['_statusReason']);
        this.expressedBy = json['expressedBy'] == null ? null : FHIRObjectFactory.buildFromJSON('Reference', json['expressedBy']);
        this.addresses = List<Reference>();
        if (json['addresses'] != null && json['addresses'].length > 0) {
          if( json['addresses'] is List ){
            json['addresses'].forEach((i){
              this.addresses.add(FHIRObjectFactory.buildFromJSON('Reference', i));
            });
          } else {
            // this handles the case when the list only has one object and does not return as a list
            var i = json['addresses'];
            this.addresses.add(FHIRObjectFactory.buildFromJSON('Reference', i));
          }          
        }
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
        this.outcomeCode = List<CodeableConcept>();
        if (json['outcomeCode'] != null && json['outcomeCode'].length > 0) {
          if( json['outcomeCode'] is List ){
            json['outcomeCode'].forEach((i){
              this.outcomeCode.add(FHIRObjectFactory.buildFromJSON('CodeableConcept', i));
            });
          } else {
            // this handles the case when the list only has one object and does not return as a list
            var i = json['outcomeCode'];
            this.outcomeCode.add(FHIRObjectFactory.buildFromJSON('CodeableConcept', i));
          }          
        }
        this.outcomeReference = List<Reference>();
        if (json['outcomeReference'] != null && json['outcomeReference'].length > 0) {
          if( json['outcomeReference'] is List ){
            json['outcomeReference'].forEach((i){
              this.outcomeReference.add(FHIRObjectFactory.buildFromJSON('Reference', i));
            });
          } else {
            // this handles the case when the list only has one object and does not return as a list
            var i = json['outcomeReference'];
            this.outcomeReference.add(FHIRObjectFactory.buildFromJSON('Reference', i));
          }          
        }
    }
}
