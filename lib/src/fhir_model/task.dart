import 'meta.dart';
import 'fhir_object_factory.dart';
import 'element.dart';
import 'narrative.dart';
import 'extension.dart';
import 'identifier.dart';
import 'reference.dart';
import 'codeable_concept.dart';
import 'period.dart';
import 'annotation.dart';
import 'task_restriction.dart';
import 'task_input.dart';
import 'task_output.dart';
/// A task to be performed.
class Task {
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
    /// The business identifier for this task.
    List<Identifier> identifier;
    /// The URL pointing to a *FHIR*-defined protocol, guideline, orderset or other definition that is adhered to in whole or in part by this Task.
    String instantiatesCanonical;
    /// The URL pointing to an *externally* maintained  protocol, guideline, orderset or other definition that is adhered to in whole or in part by this Task.
    String instantiatesUri;
    /// Extensions for instantiatesUri
    Element extInstantiatesUri;
    /// BasedOn refers to a higher-level authorization that triggered the creation of the task.  It references a "request" resource such as a ServiceRequest, MedicationRequest, ServiceRequest, CarePlan, etc. which is distinct from the "request" resource the task is seeking to fulfill.  This latter resource is referenced by FocusOn.  For example, based on a ServiceRequest (= BasedOn), a task is created to fulfill a procedureRequest ( = FocusOn ) to collect a specimen from a patient.
    List<Reference> basedOn;
    /// An identifier that links together multiple tasks and other requests that were created in the same context.
    Identifier groupIdentifier;
    /// Task that this particular task is part of.
    List<Reference> partOf;
    /// The current status of the task.
    String status;
    /// Extensions for status
    Element extStatus;
    /// An explanation as to why this task is held, failed, was refused, etc.
    CodeableConcept statusReason;
    /// Contains business-specific nuances of the business state.
    CodeableConcept businessStatus;
    /// Indicates the "level" of actionability associated with the Task, i.e. i+R[9]Cs this a proposed task, a planned task, an actionable task, etc.
    String intent;
    /// Extensions for intent
    Element extIntent;
    /// Indicates how quickly the Task should be addressed with respect to other requests.
    String priority;
    /// Extensions for priority
    Element extPriority;
    /// A name or code (or both) briefly describing what the task involves.
    CodeableConcept code;
    /// A free-text description of what is to be performed.
    String description;
    /// Extensions for description
    Element extDescription;
    /// The request being actioned or the resource being manipulated by this task.
    Reference focus;
    /// The entity who benefits from the performance of the service specified in the task (e.g., the patient).
    Reference for1;
    /// The healthcare event  (e.g. a patient and healthcare provider interaction) during which this task was created.
    Reference encounter;
    /// Identifies the time action was first taken against the task (start) and/or the time final action was taken against the task prior to marking it as completed (end).
    Period executionPeriod;
    /// The date and time this task was created.
    DateTime authoredOn;
    /// Extensions for authoredOn
    Element extAuthoredOn;
    /// The date and time of last modification to this task.
    DateTime lastModified;
    /// Extensions for lastModified
    Element extLastModified;
    /// The creator of the task.
    Reference requester;
    /// The kind of participant that should perform the task.
    List<CodeableConcept> performerType;
    /// Individual organization or Device currently responsible for task execution.
    Reference owner;
    /// Principal physical location where the this task is performed.
    Reference location;
    /// A description or code indicating why this task needs to be performed.
    CodeableConcept reasonCode;
    /// A resource reference indicating why this task needs to be performed.
    Reference reasonReference;
    /// Insurance plans, coverage extensions, pre-authorizations and/or pre-determinations that may be relevant to the Task.
    List<Reference> insurance;
    /// Free-text information captured about the task as it progresses.
    List<Annotation> note;
    /// Links to Provenance records for past versions of this Task that identify key state transitions or updates that are likely to be relevant to a user looking at the current version of the task.
    List<Reference> relevantHistory;
    /// If the Task.focus is a request resource and the task is seeking fulfillment (i.e. is asking for the request to be actioned), this element identifies any limitations on what parts of the referenced request should be actioned.
    TaskRestriction restriction;
    /// Additional information that may be needed in the execution of the task.
    List<TaskInput> input;
    /// Outputs produced by the Task.
    List<TaskOutput> output;
 
    Task.fromJSON( Map json ){
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
        this.instantiatesCanonical = json['instantiatesCanonical'];
        this.instantiatesUri = json['instantiatesUri'];
        this.extInstantiatesUri = json['_instantiatesUri'] == null ? null : FHIRObjectFactory.buildFromJSON('Element', json['_instantiatesUri']);
        this.basedOn = List<Reference>();
        if (json['basedOn'] != null && json['basedOn'].length > 0) {
          if( json['basedOn'] is List ){
            json['basedOn'].forEach((i){
              this.basedOn.add(FHIRObjectFactory.buildFromJSON('Reference', i));
            });
          } else {
            // this handles the case when the list only has one object and does not return as a list
            var i = json['basedOn'];
            this.basedOn.add(FHIRObjectFactory.buildFromJSON('Reference', i));
          }          
        }
        this.groupIdentifier = json['groupIdentifier'] == null ? null : FHIRObjectFactory.buildFromJSON('Identifier', json['groupIdentifier']);
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
        this.statusReason = json['statusReason'] == null ? null : FHIRObjectFactory.buildFromJSON('CodeableConcept', json['statusReason']);
        this.businessStatus = json['businessStatus'] == null ? null : FHIRObjectFactory.buildFromJSON('CodeableConcept', json['businessStatus']);
        this.intent = json['intent'];
        this.extIntent = json['_intent'] == null ? null : FHIRObjectFactory.buildFromJSON('Element', json['_intent']);
        this.priority = json['priority'];
        this.extPriority = json['_priority'] == null ? null : FHIRObjectFactory.buildFromJSON('Element', json['_priority']);
        this.code = json['code'] == null ? null : FHIRObjectFactory.buildFromJSON('CodeableConcept', json['code']);
        this.description = json['description'];
        this.extDescription = json['_description'] == null ? null : FHIRObjectFactory.buildFromJSON('Element', json['_description']);
        this.focus = json['focus'] == null ? null : FHIRObjectFactory.buildFromJSON('Reference', json['focus']);
        this.for1 = json['for'] == null ? null : FHIRObjectFactory.buildFromJSON('Reference', json['for']);
        this.encounter = json['encounter'] == null ? null : FHIRObjectFactory.buildFromJSON('Reference', json['encounter']);
        this.executionPeriod = json['executionPeriod'] == null ? null : FHIRObjectFactory.buildFromJSON('Period', json['executionPeriod']);
        if( json['authoredOn'] != null ) { this.authoredOn = DateTime.parse(json['authoredOn']);}
        this.extAuthoredOn = json['_authoredOn'] == null ? null : FHIRObjectFactory.buildFromJSON('Element', json['_authoredOn']);
        if( json['lastModified'] != null ) { this.lastModified = DateTime.parse(json['lastModified']);}
        this.extLastModified = json['_lastModified'] == null ? null : FHIRObjectFactory.buildFromJSON('Element', json['_lastModified']);
        this.requester = json['requester'] == null ? null : FHIRObjectFactory.buildFromJSON('Reference', json['requester']);
        this.performerType = List<CodeableConcept>();
        if (json['performerType'] != null && json['performerType'].length > 0) {
          if( json['performerType'] is List ){
            json['performerType'].forEach((i){
              this.performerType.add(FHIRObjectFactory.buildFromJSON('CodeableConcept', i));
            });
          } else {
            // this handles the case when the list only has one object and does not return as a list
            var i = json['performerType'];
            this.performerType.add(FHIRObjectFactory.buildFromJSON('CodeableConcept', i));
          }          
        }
        this.owner = json['owner'] == null ? null : FHIRObjectFactory.buildFromJSON('Reference', json['owner']);
        this.location = json['location'] == null ? null : FHIRObjectFactory.buildFromJSON('Reference', json['location']);
        this.reasonCode = json['reasonCode'] == null ? null : FHIRObjectFactory.buildFromJSON('CodeableConcept', json['reasonCode']);
        this.reasonReference = json['reasonReference'] == null ? null : FHIRObjectFactory.buildFromJSON('Reference', json['reasonReference']);
        this.insurance = List<Reference>();
        if (json['insurance'] != null && json['insurance'].length > 0) {
          if( json['insurance'] is List ){
            json['insurance'].forEach((i){
              this.insurance.add(FHIRObjectFactory.buildFromJSON('Reference', i));
            });
          } else {
            // this handles the case when the list only has one object and does not return as a list
            var i = json['insurance'];
            this.insurance.add(FHIRObjectFactory.buildFromJSON('Reference', i));
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
        this.restriction = json['restriction'] == null ? null : FHIRObjectFactory.buildFromJSON('TaskRestriction', json['restriction']);
        this.input = List<TaskInput>();
        if (json['input'] != null && json['input'].length > 0) {
          if( json['input'] is List ){
            json['input'].forEach((i){
              this.input.add(FHIRObjectFactory.buildFromJSON('TaskInput', i));
            });
          } else {
            // this handles the case when the list only has one object and does not return as a list
            var i = json['input'];
            this.input.add(FHIRObjectFactory.buildFromJSON('TaskInput', i));
          }          
        }
        this.output = List<TaskOutput>();
        if (json['output'] != null && json['output'].length > 0) {
          if( json['output'] is List ){
            json['output'].forEach((i){
              this.output.add(FHIRObjectFactory.buildFromJSON('TaskOutput', i));
            });
          } else {
            // this handles the case when the list only has one object and does not return as a list
            var i = json['output'];
            this.output.add(FHIRObjectFactory.buildFromJSON('TaskOutput', i));
          }          
        }
    }
}
