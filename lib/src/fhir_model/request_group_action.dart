import 'extension.dart';
import 'fhir_object_factory.dart';
import 'element.dart';
import 'codeable_concept.dart';
import 'related_artifact.dart';
import 'request_group_condition.dart';
import 'request_group_related_action.dart';
import 'age.dart';
import 'period.dart';
import 'duration.dart';
import 'range.dart';
import 'timing.dart';
import 'reference.dart';

/// A group of related requests that can be used to capture intended activities that have inter-dependencies such as "give this medication after that one".
class RequestGroupAction {
  /// Unique id for the element within a resource (for internal references). This may be any string value that does not contain spaces.
  String id;

  /// May be used to represent additional information that is not part of the basic definition of the element. To make the use of extensions safe and manageable, there is a strict set of governance  applied to the definition and use of extensions. Though any implementer can define an extension, there is a set of requirements that SHALL be met as part of the definition of the extension.
  List<Extension> extension;

  /// May be used to represent additional information that is not part of the basic definition of the element and that modifies the understanding of the element in which it is contained and/or the understanding of the containing element's descendants. Usually modifier elements provide negation or qualification. To make the use of extensions safe and manageable, there is a strict set of governance applied to the definition and use of extensions. Though any implementer can define an extension, there is a set of requirements that SHALL be met as part of the definition of the extension. Applications processing a resource are required to check for modifier extensions.
  ///
  /// Modifier extensions SHALL NOT change the meaning of any elements on Resource or DomainResource (including cannot change the meaning of modifierExtension itself).
  List<Extension> modifierExtension;

  /// A user-visible prefix for the action.
  String prefix;

  /// Extensions for prefix
  Element extPrefix;

  /// The title of the action displayed to a user.
  String title;

  /// Extensions for title
  Element extTitle;

  /// A short description of the action used to provide a summary to display to the user.
  String description;

  /// Extensions for description
  Element extDescription;

  /// A text equivalent of the action to be performed. This provides a human-interpretable description of the action when the definition is consumed by a system that might not be capable of interpreting it dynamically.
  String textEquivalent;

  /// Extensions for textEquivalent
  Element extTextEquivalent;

  /// Indicates how quickly the action should be addressed with respect to other actions.
  String priority;

  /// Extensions for priority
  Element extPriority;

  /// A code that provides meaning for the action or action group. For example, a section may have a LOINC code for a section of a documentation template.
  List<CodeableConcept> code;

  /// Didactic or other informational resources associated with the action that can be provided to the CDS recipient. Information resources can include inline text commentary and links to web resources.
  List<RelatedArtifact> documentation;

  /// An expression that describes applicability criteria, or start/stop conditions for the action.
  List<RequestGroupCondition> condition;

  /// A relationship to another action such as "before" or "30-60 minutes after start of".
  List<RequestGroupRelatedAction> relatedAction;

  /// Extensions for timingDateTime
  Element extTimingDateTime;

  /// An optional value describing when the action should be performed.
  Age timingAge;

  /// An optional value describing when the action should be performed.
  Period timingPeriod;

  /// An optional value describing when the action should be performed.
  Duration timingDuration;

  /// An optional value describing when the action should be performed.
  Range timingRange;

  /// An optional value describing when the action should be performed.
  Timing timingTiming;

  /// The participant that should perform or be responsible for this action.
  List<Reference> participant;

  /// The type of action to perform (create, update, remove).
  CodeableConcept type;

  /// Defines the grouping behavior for the action and its children.
  String groupingBehavior;

  /// Extensions for groupingBehavior
  Element extGroupingBehavior;

  /// Defines the selection behavior for the action and its children.
  String selectionBehavior;

  /// Extensions for selectionBehavior
  Element extSelectionBehavior;

  /// Defines expectations around whether an action is required.
  String requiredBehavior;

  /// Extensions for requiredBehavior
  Element extRequiredBehavior;

  /// Defines whether the action should usually be preselected.
  String precheckBehavior;

  /// Extensions for precheckBehavior
  Element extPrecheckBehavior;

  /// Defines whether the action can be selected multiple times.
  String cardinalityBehavior;

  /// Extensions for cardinalityBehavior
  Element extCardinalityBehavior;

  /// The resource that is the target of the action (e.g. CommunicationRequest).
  Reference resource;

  /// Sub actions.
  List<RequestGroupAction> action;

  RequestGroupAction.fromJSON(Map json) {
    this.id = json['id'];
    this.extension = List<Extension>();
    if (json['extension'] != null && json['extension'].length > 0) {
      if (json['extension'] is List) {
        json['extension'].forEach((i) {
          this.extension.add(FHIRObjectFactory.buildFromJSON('Extension', i));
        });
      } else {
        // this handles the case when the list only has one object and does not return as a list
        var i = json['extension'];
        this.extension.add(FHIRObjectFactory.buildFromJSON('Extension', i));
      }
    }
    this.modifierExtension = List<Extension>();
    if (json['modifierExtension'] != null &&
        json['modifierExtension'].length > 0) {
      if (json['modifierExtension'] is List) {
        json['modifierExtension'].forEach((i) {
          this
              .modifierExtension
              .add(FHIRObjectFactory.buildFromJSON('Extension', i));
        });
      } else {
        // this handles the case when the list only has one object and does not return as a list
        var i = json['modifierExtension'];
        this
            .modifierExtension
            .add(FHIRObjectFactory.buildFromJSON('Extension', i));
      }
    }
    this.prefix = json['prefix'];
    this.extPrefix = json['_prefix'] == null
        ? null
        : FHIRObjectFactory.buildFromJSON('Element', json['_prefix']);
    this.title = json['title'];
    this.extTitle = json['_title'] == null
        ? null
        : FHIRObjectFactory.buildFromJSON('Element', json['_title']);
    this.description = json['description'];
    this.extDescription = json['_description'] == null
        ? null
        : FHIRObjectFactory.buildFromJSON('Element', json['_description']);
    this.textEquivalent = json['textEquivalent'];
    this.extTextEquivalent = json['_textEquivalent'] == null
        ? null
        : FHIRObjectFactory.buildFromJSON('Element', json['_textEquivalent']);
    this.priority = json['priority'];
    this.extPriority = json['_priority'] == null
        ? null
        : FHIRObjectFactory.buildFromJSON('Element', json['_priority']);
    this.code = List<CodeableConcept>();
    if (json['code'] != null && json['code'].length > 0) {
      if (json['code'] is List) {
        json['code'].forEach((i) {
          this.code.add(FHIRObjectFactory.buildFromJSON('CodeableConcept', i));
        });
      } else {
        // this handles the case when the list only has one object and does not return as a list
        var i = json['code'];
        this.code.add(FHIRObjectFactory.buildFromJSON('CodeableConcept', i));
      }
    }
    this.documentation = List<RelatedArtifact>();
    if (json['documentation'] != null && json['documentation'].length > 0) {
      if (json['documentation'] is List) {
        json['documentation'].forEach((i) {
          this
              .documentation
              .add(FHIRObjectFactory.buildFromJSON('RelatedArtifact', i));
        });
      } else {
        // this handles the case when the list only has one object and does not return as a list
        var i = json['documentation'];
        this
            .documentation
            .add(FHIRObjectFactory.buildFromJSON('RelatedArtifact', i));
      }
    }
    this.condition = List<RequestGroupCondition>();
    if (json['condition'] != null && json['condition'].length > 0) {
      if (json['condition'] is List) {
        json['condition'].forEach((i) {
          this
              .condition
              .add(FHIRObjectFactory.buildFromJSON('RequestGroupCondition', i));
        });
      } else {
        // this handles the case when the list only has one object and does not return as a list
        var i = json['condition'];
        this
            .condition
            .add(FHIRObjectFactory.buildFromJSON('RequestGroupCondition', i));
      }
    }
    this.relatedAction = List<RequestGroupRelatedAction>();
    if (json['relatedAction'] != null && json['relatedAction'].length > 0) {
      if (json['relatedAction'] is List) {
        json['relatedAction'].forEach((i) {
          this.relatedAction.add(
              FHIRObjectFactory.buildFromJSON('RequestGroupRelatedAction', i));
        });
      } else {
        // this handles the case when the list only has one object and does not return as a list
        var i = json['relatedAction'];
        this.relatedAction.add(
            FHIRObjectFactory.buildFromJSON('RequestGroupRelatedAction', i));
      }
    }
    this.extTimingDateTime = json['_timingDateTime'] == null
        ? null
        : FHIRObjectFactory.buildFromJSON('Element', json['_timingDateTime']);
    this.timingAge = json['timingAge'] == null
        ? null
        : FHIRObjectFactory.buildFromJSON('Age', json['timingAge']);
    this.timingPeriod = json['timingPeriod'] == null
        ? null
        : FHIRObjectFactory.buildFromJSON('Period', json['timingPeriod']);
    this.timingDuration = json['timingDuration'] == null
        ? null
        : FHIRObjectFactory.buildFromJSON('Duration', json['timingDuration']);
    this.timingRange = json['timingRange'] == null
        ? null
        : FHIRObjectFactory.buildFromJSON('Range', json['timingRange']);
    this.timingTiming = json['timingTiming'] == null
        ? null
        : FHIRObjectFactory.buildFromJSON('Timing', json['timingTiming']);
    this.participant = List<Reference>();
    if (json['participant'] != null && json['participant'].length > 0) {
      if (json['participant'] is List) {
        json['participant'].forEach((i) {
          this.participant.add(FHIRObjectFactory.buildFromJSON('Reference', i));
        });
      } else {
        // this handles the case when the list only has one object and does not return as a list
        var i = json['participant'];
        this.participant.add(FHIRObjectFactory.buildFromJSON('Reference', i));
      }
    }
    this.type = json['type'] == null
        ? null
        : FHIRObjectFactory.buildFromJSON('CodeableConcept', json['type']);
    this.groupingBehavior = json['groupingBehavior'];
    this.extGroupingBehavior = json['_groupingBehavior'] == null
        ? null
        : FHIRObjectFactory.buildFromJSON('Element', json['_groupingBehavior']);
    this.selectionBehavior = json['selectionBehavior'];
    this.extSelectionBehavior = json['_selectionBehavior'] == null
        ? null
        : FHIRObjectFactory.buildFromJSON(
            'Element', json['_selectionBehavior']);
    this.requiredBehavior = json['requiredBehavior'];
    this.extRequiredBehavior = json['_requiredBehavior'] == null
        ? null
        : FHIRObjectFactory.buildFromJSON('Element', json['_requiredBehavior']);
    this.precheckBehavior = json['precheckBehavior'];
    this.extPrecheckBehavior = json['_precheckBehavior'] == null
        ? null
        : FHIRObjectFactory.buildFromJSON('Element', json['_precheckBehavior']);
    this.cardinalityBehavior = json['cardinalityBehavior'];
    this.extCardinalityBehavior = json['_cardinalityBehavior'] == null
        ? null
        : FHIRObjectFactory.buildFromJSON(
            'Element', json['_cardinalityBehavior']);
    this.resource = json['resource'] == null
        ? null
        : FHIRObjectFactory.buildFromJSON('Reference', json['resource']);
    this.action = List<RequestGroupAction>();
    if (json['action'] != null && json['action'].length > 0) {
      if (json['action'] is List) {
        json['action'].forEach((i) {
          this
              .action
              .add(FHIRObjectFactory.buildFromJSON('RequestGroupAction', i));
        });
      } else {
        // this handles the case when the list only has one object and does not return as a list
        var i = json['action'];
        this
            .action
            .add(FHIRObjectFactory.buildFromJSON('RequestGroupAction', i));
      }
    }
  }
}
