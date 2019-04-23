import 'extension.dart';
import 'fhir_object_factory.dart';
import 'element.dart';
import 'codeable_concept.dart';
import 'related_artifact.dart';
import 'reference.dart';
import 'trigger_definition.dart';
import 'plan_definition_condition.dart';
import 'data_requirement.dart';
import 'plan_definition_related_action.dart';
import 'age.dart';
import 'period.dart';
import 'duration.dart';
import 'range.dart';
import 'timing.dart';
import 'plan_definition_participant.dart';
import 'plan_definition_dynamic_value.dart';

/// This resource allows for the definition of various types of plans as a sharable, consumable, and executable artifact. The resource is general enough to support the description of a broad range of clinical artifacts such as clinical decision support rules, order sets and protocols.
class PlanDefinitionAction {
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

  /// A brief description of the action used to provide a summary to display to the user.
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

  /// A code that provides meaning for the action or action group. For example, a section may have a LOINC code for the section of a documentation template.
  List<CodeableConcept> code;

  /// A description of why this action is necessary or appropriate.
  List<CodeableConcept> reason;

  /// Didactic or other informational resources associated with the action that can be provided to the CDS recipient. Information resources can include inline text commentary and links to web resources.
  List<RelatedArtifact> documentation;

  /// Identifies goals that this action supports. The reference must be to a goal element defined within this plan definition.
  List<String> goalId;

  /// Extensions for goalId
  List<Element> extGoalId;

  /// A code or group definition that describes the intended subject of the action and its children, if any.
  CodeableConcept subjectCodeableConcept;

  /// A code or group definition that describes the intended subject of the action and its children, if any.
  Reference subjectReference;

  /// A description of when the action should be triggered.
  List<TriggerDefinition> trigger;

  /// An expression that describes applicability criteria or start/stop conditions for the action.
  List<PlanDefinitionCondition> condition;

  /// Defines input data requirements for the action.
  List<DataRequirement> input;

  /// Defines the outputs of the action, if any.
  List<DataRequirement> output;

  /// A relationship to another action such as "before" or "30-60 minutes after start of".
  List<PlanDefinitionRelatedAction> relatedAction;

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

  /// Indicates who should participate in performing the action described.
  List<PlanDefinitionParticipant> participant;

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

  /// Defines the required behavior for the action.
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

  /// Extensions for definitionCanonical
  Element extDefinitionCanonical;

  /// Extensions for definitionUri
  Element extDefinitionUri;

  /// A reference to a StructureMap resource that defines a transform that can be executed to produce the intent resource using the ActivityDefinition instance as the input.
  String transform;

  /// Customizations that should be applied to the statically defined resource. For example, if the dosage of a medication must be computed based on the patient's weight, a customization would be used to specify an expression that calculated the weight, and the path on the resource that would contain the result.
  List<PlanDefinitionDynamicValue> dynamicValue;

  /// Sub actions that are contained within the action. The behavior of this action determines the functionality of the sub-actions. For example, a selection behavior of at-most-one indicates that of the sub-actions, at most one may be chosen as part of realizing the action definition.
  List<PlanDefinitionAction> action;

  PlanDefinitionAction.fromJSON(Map json) {
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
    this.reason = List<CodeableConcept>();
    if (json['reason'] != null && json['reason'].length > 0) {
      if (json['reason'] is List) {
        json['reason'].forEach((i) {
          this
              .reason
              .add(FHIRObjectFactory.buildFromJSON('CodeableConcept', i));
        });
      } else {
        // this handles the case when the list only has one object and does not return as a list
        var i = json['reason'];
        this.reason.add(FHIRObjectFactory.buildFromJSON('CodeableConcept', i));
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
    this.goalId = List<String>();
    if (json['goalId'] != null && json['goalId'].length > 0) {
      if (json['goalId'] is List) {
        json['goalId'].forEach((i) {
          this.goalId.add(i);
        });
      } else {
        // this handles the case when the list only has one object and does not return as a list
        var i = json['goalId'];
        this.goalId.add(i);
      }
    }
    this.extGoalId = List<Element>();
    if (json['_goalId'] != null && json['_goalId'].length > 0) {
      if (json['_goalId'] is List) {
        json['_goalId'].forEach((i) {
          this.extGoalId.add(FHIRObjectFactory.buildFromJSON('Element', i));
        });
      } else {
        // this handles the case when the list only has one object and does not return as a list
        var i = json['_goalId'];
        this.extGoalId.add(FHIRObjectFactory.buildFromJSON('Element', i));
      }
    }
    this.subjectCodeableConcept = json['subjectCodeableConcept'] == null
        ? null
        : FHIRObjectFactory.buildFromJSON(
            'CodeableConcept', json['subjectCodeableConcept']);
    this.subjectReference = json['subjectReference'] == null
        ? null
        : FHIRObjectFactory.buildFromJSON(
            'Reference', json['subjectReference']);
    this.trigger = List<TriggerDefinition>();
    if (json['trigger'] != null && json['trigger'].length > 0) {
      if (json['trigger'] is List) {
        json['trigger'].forEach((i) {
          this
              .trigger
              .add(FHIRObjectFactory.buildFromJSON('TriggerDefinition', i));
        });
      } else {
        // this handles the case when the list only has one object and does not return as a list
        var i = json['trigger'];
        this
            .trigger
            .add(FHIRObjectFactory.buildFromJSON('TriggerDefinition', i));
      }
    }
    this.condition = List<PlanDefinitionCondition>();
    if (json['condition'] != null && json['condition'].length > 0) {
      if (json['condition'] is List) {
        json['condition'].forEach((i) {
          this.condition.add(
              FHIRObjectFactory.buildFromJSON('PlanDefinitionCondition', i));
        });
      } else {
        // this handles the case when the list only has one object and does not return as a list
        var i = json['condition'];
        this
            .condition
            .add(FHIRObjectFactory.buildFromJSON('PlanDefinitionCondition', i));
      }
    }
    this.input = List<DataRequirement>();
    if (json['input'] != null && json['input'].length > 0) {
      if (json['input'] is List) {
        json['input'].forEach((i) {
          this.input.add(FHIRObjectFactory.buildFromJSON('DataRequirement', i));
        });
      } else {
        // this handles the case when the list only has one object and does not return as a list
        var i = json['input'];
        this.input.add(FHIRObjectFactory.buildFromJSON('DataRequirement', i));
      }
    }
    this.output = List<DataRequirement>();
    if (json['output'] != null && json['output'].length > 0) {
      if (json['output'] is List) {
        json['output'].forEach((i) {
          this
              .output
              .add(FHIRObjectFactory.buildFromJSON('DataRequirement', i));
        });
      } else {
        // this handles the case when the list only has one object and does not return as a list
        var i = json['output'];
        this.output.add(FHIRObjectFactory.buildFromJSON('DataRequirement', i));
      }
    }
    this.relatedAction = List<PlanDefinitionRelatedAction>();
    if (json['relatedAction'] != null && json['relatedAction'].length > 0) {
      if (json['relatedAction'] is List) {
        json['relatedAction'].forEach((i) {
          this.relatedAction.add(FHIRObjectFactory.buildFromJSON(
              'PlanDefinitionRelatedAction', i));
        });
      } else {
        // this handles the case when the list only has one object and does not return as a list
        var i = json['relatedAction'];
        this.relatedAction.add(
            FHIRObjectFactory.buildFromJSON('PlanDefinitionRelatedAction', i));
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
    this.participant = List<PlanDefinitionParticipant>();
    if (json['participant'] != null && json['participant'].length > 0) {
      if (json['participant'] is List) {
        json['participant'].forEach((i) {
          this.participant.add(
              FHIRObjectFactory.buildFromJSON('PlanDefinitionParticipant', i));
        });
      } else {
        // this handles the case when the list only has one object and does not return as a list
        var i = json['participant'];
        this.participant.add(
            FHIRObjectFactory.buildFromJSON('PlanDefinitionParticipant', i));
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
    this.extDefinitionCanonical = json['_definitionCanonical'] == null
        ? null
        : FHIRObjectFactory.buildFromJSON(
            'Element', json['_definitionCanonical']);
    this.extDefinitionUri = json['_definitionUri'] == null
        ? null
        : FHIRObjectFactory.buildFromJSON('Element', json['_definitionUri']);
    this.transform = json['transform'];
    this.dynamicValue = List<PlanDefinitionDynamicValue>();
    if (json['dynamicValue'] != null && json['dynamicValue'].length > 0) {
      if (json['dynamicValue'] is List) {
        json['dynamicValue'].forEach((i) {
          this.dynamicValue.add(
              FHIRObjectFactory.buildFromJSON('PlanDefinitionDynamicValue', i));
        });
      } else {
        // this handles the case when the list only has one object and does not return as a list
        var i = json['dynamicValue'];
        this.dynamicValue.add(
            FHIRObjectFactory.buildFromJSON('PlanDefinitionDynamicValue', i));
      }
    }
    this.action = List<PlanDefinitionAction>();
    if (json['action'] != null && json['action'].length > 0) {
      if (json['action'] is List) {
        json['action'].forEach((i) {
          this
              .action
              .add(FHIRObjectFactory.buildFromJSON('PlanDefinitionAction', i));
        });
      } else {
        // this handles the case when the list only has one object and does not return as a list
        var i = json['action'];
        this
            .action
            .add(FHIRObjectFactory.buildFromJSON('PlanDefinitionAction', i));
      }
    }
  }
}
