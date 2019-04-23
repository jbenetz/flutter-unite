import 'extension.dart';
import 'fhir_object_factory.dart';
import 'element.dart';
import 'reference.dart';
import 'codeable_concept.dart';
import 'expression.dart';
import 'data_requirement.dart';
import 'trigger_definition.dart';
import 'usage_context.dart';
import 'period.dart';
import 'duration.dart';
import 'timing.dart';
/// The EvidenceVariable resource describes a "PICO" element that knowledge (evidence, assertion, recommendation) is about.
class EvidenceVariableCharacteristic {
    /// Unique id for the element within a resource (for internal references). This may be any string value that does not contain spaces.
    String id;
    /// May be used to represent additional information that is not part of the basic definition of the element. To make the use of extensions safe and manageable, there is a strict set of governance  applied to the definition and use of extensions. Though any implementer can define an extension, there is a set of requirements that SHALL be met as part of the definition of the extension.
    List<Extension> extension;
    /// May be used to represent additional information that is not part of the basic definition of the element and that modifies the understanding of the element in which it is contained and/or the understanding of the containing element's descendants. Usually modifier elements provide negation or qualification. To make the use of extensions safe and manageable, there is a strict set of governance applied to the definition and use of extensions. Though any implementer can define an extension, there is a set of requirements that SHALL be met as part of the definition of the extension. Applications processing a resource are required to check for modifier extensions.
    /// 
    /// Modifier extensions SHALL NOT change the meaning of any elements on Resource or DomainResource (including cannot change the meaning of modifierExtension itself).
    List<Extension> modifierExtension;
    /// A short, natural language description of the characteristic that could be used to communicate the criteria to an end-user.
    String description;
    /// Extensions for description
    Element extDescription;
    /// Define members of the evidence element using Codes (such as condition, medication, or observation), Expressions ( using an expression language such as FHIRPath or CQL) or DataRequirements (such as Diabetes diagnosis onset in the last year).
    Reference definitionReference;
    /// Extensions for definitionCanonical
    Element extDefinitionCanonical;
    /// Define members of the evidence element using Codes (such as condition, medication, or observation), Expressions ( using an expression language such as FHIRPath or CQL) or DataRequirements (such as Diabetes diagnosis onset in the last year).
    CodeableConcept definitionCodeableConcept;
    /// Define members of the evidence element using Codes (such as condition, medication, or observation), Expressions ( using an expression language such as FHIRPath or CQL) or DataRequirements (such as Diabetes diagnosis onset in the last year).
    Expression definitionExpression;
    /// Define members of the evidence element using Codes (such as condition, medication, or observation), Expressions ( using an expression language such as FHIRPath or CQL) or DataRequirements (such as Diabetes diagnosis onset in the last year).
    DataRequirement definitionDataRequirement;
    /// Define members of the evidence element using Codes (such as condition, medication, or observation), Expressions ( using an expression language such as FHIRPath or CQL) or DataRequirements (such as Diabetes diagnosis onset in the last year).
    TriggerDefinition definitionTriggerDefinition;
    /// Use UsageContext to define the members of the population, such as Age Ranges, Genders, Settings.
    List<UsageContext> usageContext;
    /// When true, members with this characteristic are excluded from the element.
    bool exclude;
    /// Extensions for exclude
    Element extExclude;
    /// Extensions for participantEffectiveDateTime
    Element extParticipantEffectiveDateTime;
    /// Indicates what effective period the study covers.
    Period participantEffectivePeriod;
    /// Indicates what effective period the study covers.
    Duration participantEffectiveDuration;
    /// Indicates what effective period the study covers.
    Timing participantEffectiveTiming;
    /// Indicates duration from the participant's study entry.
    Duration timeFromStart;
    /// Indicates how elements are aggregated within the study effective period.
    String groupMeasure;
    /// Extensions for groupMeasure
    Element extGroupMeasure;
 
    EvidenceVariableCharacteristic.fromJSON( Map json ){
        this.id = json['id'];
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
        this.description = json['description'];
        this.extDescription = json['_description'] == null ? null : FHIRObjectFactory.buildFromJSON('Element', json['_description']);
        this.definitionReference = json['definitionReference'] == null ? null : FHIRObjectFactory.buildFromJSON('Reference', json['definitionReference']);
        this.extDefinitionCanonical = json['_definitionCanonical'] == null ? null : FHIRObjectFactory.buildFromJSON('Element', json['_definitionCanonical']);
        this.definitionCodeableConcept = json['definitionCodeableConcept'] == null ? null : FHIRObjectFactory.buildFromJSON('CodeableConcept', json['definitionCodeableConcept']);
        this.definitionExpression = json['definitionExpression'] == null ? null : FHIRObjectFactory.buildFromJSON('Expression', json['definitionExpression']);
        this.definitionDataRequirement = json['definitionDataRequirement'] == null ? null : FHIRObjectFactory.buildFromJSON('DataRequirement', json['definitionDataRequirement']);
        this.definitionTriggerDefinition = json['definitionTriggerDefinition'] == null ? null : FHIRObjectFactory.buildFromJSON('TriggerDefinition', json['definitionTriggerDefinition']);
        this.usageContext = List<UsageContext>();
        if (json['usageContext'] != null && json['usageContext'].length > 0) {
          if( json['usageContext'] is List ){
            json['usageContext'].forEach((i){
              this.usageContext.add(FHIRObjectFactory.buildFromJSON('UsageContext', i));
            });
          } else {
            // this handles the case when the list only has one object and does not return as a list
            var i = json['usageContext'];
            this.usageContext.add(FHIRObjectFactory.buildFromJSON('UsageContext', i));
          }          
        }
        this.exclude = json['exclude'];
        this.extExclude = json['_exclude'] == null ? null : FHIRObjectFactory.buildFromJSON('Element', json['_exclude']);
        this.extParticipantEffectiveDateTime = json['_participantEffectiveDateTime'] == null ? null : FHIRObjectFactory.buildFromJSON('Element', json['_participantEffectiveDateTime']);
        this.participantEffectivePeriod = json['participantEffectivePeriod'] == null ? null : FHIRObjectFactory.buildFromJSON('Period', json['participantEffectivePeriod']);
        this.participantEffectiveDuration = json['participantEffectiveDuration'] == null ? null : FHIRObjectFactory.buildFromJSON('Duration', json['participantEffectiveDuration']);
        this.participantEffectiveTiming = json['participantEffectiveTiming'] == null ? null : FHIRObjectFactory.buildFromJSON('Timing', json['participantEffectiveTiming']);
        this.timeFromStart = json['timeFromStart'] == null ? null : FHIRObjectFactory.buildFromJSON('Duration', json['timeFromStart']);
        this.groupMeasure = json['groupMeasure'];
        this.extGroupMeasure = json['_groupMeasure'] == null ? null : FHIRObjectFactory.buildFromJSON('Element', json['_groupMeasure']);
    }
}
