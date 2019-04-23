import 'meta.dart';
import 'fhir_object_factory.dart';
import 'element.dart';
import 'narrative.dart';
import 'extension.dart';
import 'identifier.dart';
import 'reference.dart';
import 'codeable_concept.dart';
import 'period.dart';
import 'timing.dart';
import 'quantity.dart';
import 'range.dart';
import 'ratio.dart';
import 'sampled_data.dart';
import 'annotation.dart';
import 'observation_reference_range.dart';
import 'observation_component.dart';
/// Measurements and simple assertions made about a patient, device or other subject.
class Observation {
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
    /// A unique identifier assigned to this observation.
    List<Identifier> identifier;
    /// A plan, proposal or order that is fulfilled in whole or in part by this event.  For example, a MedicationRequest may require a patient to have laboratory test performed before  it is dispensed.
    List<Reference> basedOn;
    /// A larger event of which this particular Observation is a component or step.  For example,  an observation as part of a procedure.
    List<Reference> partOf;
    /// The status of the result value.
    String status;
    /// Extensions for status
    Element extStatus;
    /// A code that classifies the general type of observation being made.
    List<CodeableConcept> category;
    /// Describes what was observed. Sometimes this is called the observation "name".
    CodeableConcept code;
    /// The patient, or group of patients, location, or device this observation is about and into whose record the observation is placed. If the actual focus of the observation is different from the subject (or a sample of, part, or region of the subject), the `focus` element or the `code` itself specifies the actual focus of the observation.
    Reference subject;
    /// The actual focus of an observation when it is not the patient of record representing something or someone associated with the patient such as a spouse, parent, fetus, or donor. For example, fetus observations in a mother's record.  The focus of an observation could also be an existing condition,  an intervention, the subject's diet,  another observation of the subject,  or a body structure such as tumor or implanted device.   An example use case would be using the Observation resource to capture whether the mother is trained to change her child's tracheostomy tube. In this example, the child is the patient of record and the mother is the focus.
    List<Reference> focus;
    /// The healthcare event  (e.g. a patient and healthcare provider interaction) during which this observation is made.
    Reference encounter;
    /// Extensions for effectiveDateTime
    Element extEffectiveDateTime;
    /// The time or time-period the observed value is asserted as being true. For biological subjects - e.g. human patients - this is usually called the "physiologically relevant time". This is usually either the time of the procedure or of specimen collection, but very often the source of the date/time is not known, only the date/time itself.
    Period effectivePeriod;
    /// The time or time-period the observed value is asserted as being true. For biological subjects - e.g. human patients - this is usually called the "physiologically relevant time". This is usually either the time of the procedure or of specimen collection, but very often the source of the date/time is not known, only the date/time itself.
    Timing effectiveTiming;
    /// Extensions for effectiveInstant
    Element extEffectiveInstant;
    /// The date and time this version of the observation was made available to providers, typically after the results have been reviewed and verified.
    DateTime issued;
    /// Extensions for issued
    Element extIssued;
    /// Who was responsible for asserting the observed value as "true".
    List<Reference> performer;
    /// The information determined as a result of making the observation, if the information has a simple value.
    Quantity valueQuantity;
    /// The information determined as a result of making the observation, if the information has a simple value.
    CodeableConcept valueCodeableConcept;
    /// Extensions for valueString
    Element extValueString;
    /// Extensions for valueBoolean
    Element extValueBoolean;
    /// Extensions for valueInteger
    Element extValueInteger;
    /// The information determined as a result of making the observation, if the information has a simple value.
    Range valueRange;
    /// The information determined as a result of making the observation, if the information has a simple value.
    Ratio valueRatio;
    /// The information determined as a result of making the observation, if the information has a simple value.
    SampledData valueSampledData;
    /// Extensions for valueTime
    Element extValueTime;
    /// Extensions for valueDateTime
    Element extValueDateTime;
    /// The information determined as a result of making the observation, if the information has a simple value.
    Period valuePeriod;
    /// Provides a reason why the expected value in the element Observation.value[x] is missing.
    CodeableConcept dataAbsentReason;
    /// A categorical assessment of an observation value.  For example, high, low, normal.
    List<CodeableConcept> interpretation;
    /// Comments about the observation or the results.
    List<Annotation> note;
    /// Indicates the site on the subject's body where the observation was made (i.e. the target site).
    CodeableConcept bodySite;
    /// Indicates the mechanism used to perform the observation.
    CodeableConcept method;
    /// The specimen that was used when this observation was made.
    Reference specimen;
    /// The device used to generate the observation data.
    Reference device;
    /// Guidance on how to interpret the value by comparison to a normal or recommended range.  Multiple reference ranges are interpreted as an "OR".   In other words, to represent two distinct target populations, two `referenceRange` elements would be used.
    List<ObservationReferenceRange> referenceRange;
    /// This observation is a group observation (e.g. a battery, a panel of tests, a set of vital sign measurements) that includes the target as a member of the group.
    List<Reference> hasMember;
    /// The target resource that represents a measurement from which this observation value is derived. For example, a calculated anion gap or a fetal measurement based on an ultrasound image.
    List<Reference> derivedFrom;
    /// Some observations have multiple component observations.  These component observations are expressed as separate code value pairs that share the same attributes.  Examples include systolic and diastolic component observations for blood pressure measurement and multiple component observations for genetics observations.
    List<ObservationComponent> component;
 
    Observation.fromJSON( Map json ){
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
        this.code = json['code'] == null ? null : FHIRObjectFactory.buildFromJSON('CodeableConcept', json['code']);
        this.subject = json['subject'] == null ? null : FHIRObjectFactory.buildFromJSON('Reference', json['subject']);
        this.focus = List<Reference>();
        if (json['focus'] != null && json['focus'].length > 0) {
          if( json['focus'] is List ){
            json['focus'].forEach((i){
              this.focus.add(FHIRObjectFactory.buildFromJSON('Reference', i));
            });
          } else {
            // this handles the case when the list only has one object and does not return as a list
            var i = json['focus'];
            this.focus.add(FHIRObjectFactory.buildFromJSON('Reference', i));
          }          
        }
        this.encounter = json['encounter'] == null ? null : FHIRObjectFactory.buildFromJSON('Reference', json['encounter']);
        this.extEffectiveDateTime = json['_effectiveDateTime'] == null ? null : FHIRObjectFactory.buildFromJSON('Element', json['_effectiveDateTime']);
        this.effectivePeriod = json['effectivePeriod'] == null ? null : FHIRObjectFactory.buildFromJSON('Period', json['effectivePeriod']);
        this.effectiveTiming = json['effectiveTiming'] == null ? null : FHIRObjectFactory.buildFromJSON('Timing', json['effectiveTiming']);
        this.extEffectiveInstant = json['_effectiveInstant'] == null ? null : FHIRObjectFactory.buildFromJSON('Element', json['_effectiveInstant']);
        if( json['issued'] != null ) { this.issued = DateTime.parse(json['issued']);}
        this.extIssued = json['_issued'] == null ? null : FHIRObjectFactory.buildFromJSON('Element', json['_issued']);
        this.performer = List<Reference>();
        if (json['performer'] != null && json['performer'].length > 0) {
          if( json['performer'] is List ){
            json['performer'].forEach((i){
              this.performer.add(FHIRObjectFactory.buildFromJSON('Reference', i));
            });
          } else {
            // this handles the case when the list only has one object and does not return as a list
            var i = json['performer'];
            this.performer.add(FHIRObjectFactory.buildFromJSON('Reference', i));
          }          
        }
        this.valueQuantity = json['valueQuantity'] == null ? null : FHIRObjectFactory.buildFromJSON('Quantity', json['valueQuantity']);
        this.valueCodeableConcept = json['valueCodeableConcept'] == null ? null : FHIRObjectFactory.buildFromJSON('CodeableConcept', json['valueCodeableConcept']);
        this.extValueString = json['_valueString'] == null ? null : FHIRObjectFactory.buildFromJSON('Element', json['_valueString']);
        this.extValueBoolean = json['_valueBoolean'] == null ? null : FHIRObjectFactory.buildFromJSON('Element', json['_valueBoolean']);
        this.extValueInteger = json['_valueInteger'] == null ? null : FHIRObjectFactory.buildFromJSON('Element', json['_valueInteger']);
        this.valueRange = json['valueRange'] == null ? null : FHIRObjectFactory.buildFromJSON('Range', json['valueRange']);
        this.valueRatio = json['valueRatio'] == null ? null : FHIRObjectFactory.buildFromJSON('Ratio', json['valueRatio']);
        this.valueSampledData = json['valueSampledData'] == null ? null : FHIRObjectFactory.buildFromJSON('SampledData', json['valueSampledData']);
        this.extValueTime = json['_valueTime'] == null ? null : FHIRObjectFactory.buildFromJSON('Element', json['_valueTime']);
        this.extValueDateTime = json['_valueDateTime'] == null ? null : FHIRObjectFactory.buildFromJSON('Element', json['_valueDateTime']);
        this.valuePeriod = json['valuePeriod'] == null ? null : FHIRObjectFactory.buildFromJSON('Period', json['valuePeriod']);
        this.dataAbsentReason = json['dataAbsentReason'] == null ? null : FHIRObjectFactory.buildFromJSON('CodeableConcept', json['dataAbsentReason']);
        this.interpretation = List<CodeableConcept>();
        if (json['interpretation'] != null && json['interpretation'].length > 0) {
          if( json['interpretation'] is List ){
            json['interpretation'].forEach((i){
              this.interpretation.add(FHIRObjectFactory.buildFromJSON('CodeableConcept', i));
            });
          } else {
            // this handles the case when the list only has one object and does not return as a list
            var i = json['interpretation'];
            this.interpretation.add(FHIRObjectFactory.buildFromJSON('CodeableConcept', i));
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
        this.bodySite = json['bodySite'] == null ? null : FHIRObjectFactory.buildFromJSON('CodeableConcept', json['bodySite']);
        this.method = json['method'] == null ? null : FHIRObjectFactory.buildFromJSON('CodeableConcept', json['method']);
        this.specimen = json['specimen'] == null ? null : FHIRObjectFactory.buildFromJSON('Reference', json['specimen']);
        this.device = json['device'] == null ? null : FHIRObjectFactory.buildFromJSON('Reference', json['device']);
        this.referenceRange = List<ObservationReferenceRange>();
        if (json['referenceRange'] != null && json['referenceRange'].length > 0) {
          if( json['referenceRange'] is List ){
            json['referenceRange'].forEach((i){
              this.referenceRange.add(FHIRObjectFactory.buildFromJSON('ObservationReferenceRange', i));
            });
          } else {
            // this handles the case when the list only has one object and does not return as a list
            var i = json['referenceRange'];
            this.referenceRange.add(FHIRObjectFactory.buildFromJSON('ObservationReferenceRange', i));
          }          
        }
        this.hasMember = List<Reference>();
        if (json['hasMember'] != null && json['hasMember'].length > 0) {
          if( json['hasMember'] is List ){
            json['hasMember'].forEach((i){
              this.hasMember.add(FHIRObjectFactory.buildFromJSON('Reference', i));
            });
          } else {
            // this handles the case when the list only has one object and does not return as a list
            var i = json['hasMember'];
            this.hasMember.add(FHIRObjectFactory.buildFromJSON('Reference', i));
          }          
        }
        this.derivedFrom = List<Reference>();
        if (json['derivedFrom'] != null && json['derivedFrom'].length > 0) {
          if( json['derivedFrom'] is List ){
            json['derivedFrom'].forEach((i){
              this.derivedFrom.add(FHIRObjectFactory.buildFromJSON('Reference', i));
            });
          } else {
            // this handles the case when the list only has one object and does not return as a list
            var i = json['derivedFrom'];
            this.derivedFrom.add(FHIRObjectFactory.buildFromJSON('Reference', i));
          }          
        }
        this.component = List<ObservationComponent>();
        if (json['component'] != null && json['component'].length > 0) {
          if( json['component'] is List ){
            json['component'].forEach((i){
              this.component.add(FHIRObjectFactory.buildFromJSON('ObservationComponent', i));
            });
          } else {
            // this handles the case when the list only has one object and does not return as a list
            var i = json['component'];
            this.component.add(FHIRObjectFactory.buildFromJSON('ObservationComponent', i));
          }          
        }
    }
}
