import 'extension.dart';
import 'fhir_object_factory.dart';
import 'codeable_concept.dart';
import 'element.dart';
import 'expression.dart';
import 'data_requirement.dart';
import 'usage_context.dart';
import 'period.dart';
import 'duration.dart';
import 'timing.dart';
/// The ResearchElementDefinition resource describes a "PICO" element that knowledge (evidence, assertion, recommendation) is about.
class ResearchElementDefinitionCharacteristic {
    /// Unique id for the element within a resource (for internal references). This may be any string value that does not contain spaces.
    String id;
    /// May be used to represent additional information that is not part of the basic definition of the element. To make the use of extensions safe and manageable, there is a strict set of governance  applied to the definition and use of extensions. Though any implementer can define an extension, there is a set of requirements that SHALL be met as part of the definition of the extension.
    List<Extension> extension;
    /// May be used to represent additional information that is not part of the basic definition of the element and that modifies the understanding of the element in which it is contained and/or the understanding of the containing element's descendants. Usually modifier elements provide negation or qualification. To make the use of extensions safe and manageable, there is a strict set of governance applied to the definition and use of extensions. Though any implementer can define an extension, there is a set of requirements that SHALL be met as part of the definition of the extension. Applications processing a resource are required to check for modifier extensions.
    /// 
    /// Modifier extensions SHALL NOT change the meaning of any elements on Resource or DomainResource (including cannot change the meaning of modifierExtension itself).
    List<Extension> modifierExtension;
    /// Define members of the research element using Codes (such as condition, medication, or observation), Expressions ( using an expression language such as FHIRPath or CQL) or DataRequirements (such as Diabetes diagnosis onset in the last year).
    CodeableConcept definitionCodeableConcept;
    /// Extensions for definitionCanonical
    Element extDefinitionCanonical;
    /// Define members of the research element using Codes (such as condition, medication, or observation), Expressions ( using an expression language such as FHIRPath or CQL) or DataRequirements (such as Diabetes diagnosis onset in the last year).
    Expression definitionExpression;
    /// Define members of the research element using Codes (such as condition, medication, or observation), Expressions ( using an expression language such as FHIRPath or CQL) or DataRequirements (such as Diabetes diagnosis onset in the last year).
    DataRequirement definitionDataRequirement;
    /// Use UsageContext to define the members of the population, such as Age Ranges, Genders, Settings.
    List<UsageContext> usageContext;
    /// When true, members with this characteristic are excluded from the element.
    bool exclude;
    /// Extensions for exclude
    Element extExclude;
    /// Specifies the UCUM unit for the outcome.
    CodeableConcept unitOfMeasure;
    /// A narrative description of the time period the study covers.
    String studyEffectiveDescription;
    /// Extensions for studyEffectiveDescription
    Element extStudyEffectiveDescription;
    /// Extensions for studyEffectiveDateTime
    Element extStudyEffectiveDateTime;
    /// Indicates what effective period the study covers.
    Period studyEffectivePeriod;
    /// Indicates what effective period the study covers.
    Duration studyEffectiveDuration;
    /// Indicates what effective period the study covers.
    Timing studyEffectiveTiming;
    /// Indicates duration from the study initiation.
    Duration studyEffectiveTimeFromStart;
    /// Indicates how elements are aggregated within the study effective period.
    String studyEffectiveGroupMeasure;
    /// Extensions for studyEffectiveGroupMeasure
    Element extStudyEffectiveGroupMeasure;
    /// A narrative description of the time period the study covers.
    String participantEffectiveDescription;
    /// Extensions for participantEffectiveDescription
    Element extParticipantEffectiveDescription;
    /// Extensions for participantEffectiveDateTime
    Element extParticipantEffectiveDateTime;
    /// Indicates what effective period the study covers.
    Period participantEffectivePeriod;
    /// Indicates what effective period the study covers.
    Duration participantEffectiveDuration;
    /// Indicates what effective period the study covers.
    Timing participantEffectiveTiming;
    /// Indicates duration from the participant's study entry.
    Duration participantEffectiveTimeFromStart;
    /// Indicates how elements are aggregated within the study effective period.
    String participantEffectiveGroupMeasure;
    /// Extensions for participantEffectiveGroupMeasure
    Element extParticipantEffectiveGroupMeasure;
 
    ResearchElementDefinitionCharacteristic.fromJSON( Map json ){
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
        this.definitionCodeableConcept = json['definitionCodeableConcept'] == null ? null : FHIRObjectFactory.buildFromJSON('CodeableConcept', json['definitionCodeableConcept']);
        this.extDefinitionCanonical = json['_definitionCanonical'] == null ? null : FHIRObjectFactory.buildFromJSON('Element', json['_definitionCanonical']);
        this.definitionExpression = json['definitionExpression'] == null ? null : FHIRObjectFactory.buildFromJSON('Expression', json['definitionExpression']);
        this.definitionDataRequirement = json['definitionDataRequirement'] == null ? null : FHIRObjectFactory.buildFromJSON('DataRequirement', json['definitionDataRequirement']);
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
        this.unitOfMeasure = json['unitOfMeasure'] == null ? null : FHIRObjectFactory.buildFromJSON('CodeableConcept', json['unitOfMeasure']);
        this.studyEffectiveDescription = json['studyEffectiveDescription'];
        this.extStudyEffectiveDescription = json['_studyEffectiveDescription'] == null ? null : FHIRObjectFactory.buildFromJSON('Element', json['_studyEffectiveDescription']);
        this.extStudyEffectiveDateTime = json['_studyEffectiveDateTime'] == null ? null : FHIRObjectFactory.buildFromJSON('Element', json['_studyEffectiveDateTime']);
        this.studyEffectivePeriod = json['studyEffectivePeriod'] == null ? null : FHIRObjectFactory.buildFromJSON('Period', json['studyEffectivePeriod']);
        this.studyEffectiveDuration = json['studyEffectiveDuration'] == null ? null : FHIRObjectFactory.buildFromJSON('Duration', json['studyEffectiveDuration']);
        this.studyEffectiveTiming = json['studyEffectiveTiming'] == null ? null : FHIRObjectFactory.buildFromJSON('Timing', json['studyEffectiveTiming']);
        this.studyEffectiveTimeFromStart = json['studyEffectiveTimeFromStart'] == null ? null : FHIRObjectFactory.buildFromJSON('Duration', json['studyEffectiveTimeFromStart']);
        this.studyEffectiveGroupMeasure = json['studyEffectiveGroupMeasure'];
        this.extStudyEffectiveGroupMeasure = json['_studyEffectiveGroupMeasure'] == null ? null : FHIRObjectFactory.buildFromJSON('Element', json['_studyEffectiveGroupMeasure']);
        this.participantEffectiveDescription = json['participantEffectiveDescription'];
        this.extParticipantEffectiveDescription = json['_participantEffectiveDescription'] == null ? null : FHIRObjectFactory.buildFromJSON('Element', json['_participantEffectiveDescription']);
        this.extParticipantEffectiveDateTime = json['_participantEffectiveDateTime'] == null ? null : FHIRObjectFactory.buildFromJSON('Element', json['_participantEffectiveDateTime']);
        this.participantEffectivePeriod = json['participantEffectivePeriod'] == null ? null : FHIRObjectFactory.buildFromJSON('Period', json['participantEffectivePeriod']);
        this.participantEffectiveDuration = json['participantEffectiveDuration'] == null ? null : FHIRObjectFactory.buildFromJSON('Duration', json['participantEffectiveDuration']);
        this.participantEffectiveTiming = json['participantEffectiveTiming'] == null ? null : FHIRObjectFactory.buildFromJSON('Timing', json['participantEffectiveTiming']);
        this.participantEffectiveTimeFromStart = json['participantEffectiveTimeFromStart'] == null ? null : FHIRObjectFactory.buildFromJSON('Duration', json['participantEffectiveTimeFromStart']);
        this.participantEffectiveGroupMeasure = json['participantEffectiveGroupMeasure'];
        this.extParticipantEffectiveGroupMeasure = json['_participantEffectiveGroupMeasure'] == null ? null : FHIRObjectFactory.buildFromJSON('Element', json['_participantEffectiveGroupMeasure']);
    }
}
