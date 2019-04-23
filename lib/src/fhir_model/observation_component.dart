import 'extension.dart';
import 'fhir_object_factory.dart';
import 'codeable_concept.dart';
import 'quantity.dart';
import 'element.dart';
import 'range.dart';
import 'ratio.dart';
import 'sampled_data.dart';
import 'period.dart';
import 'observation_reference_range.dart';
/// Measurements and simple assertions made about a patient, device or other subject.
class ObservationComponent {
    /// Unique id for the element within a resource (for internal references). This may be any string value that does not contain spaces.
    String id;
    /// May be used to represent additional information that is not part of the basic definition of the element. To make the use of extensions safe and manageable, there is a strict set of governance  applied to the definition and use of extensions. Though any implementer can define an extension, there is a set of requirements that SHALL be met as part of the definition of the extension.
    List<Extension> extension;
    /// May be used to represent additional information that is not part of the basic definition of the element and that modifies the understanding of the element in which it is contained and/or the understanding of the containing element's descendants. Usually modifier elements provide negation or qualification. To make the use of extensions safe and manageable, there is a strict set of governance applied to the definition and use of extensions. Though any implementer can define an extension, there is a set of requirements that SHALL be met as part of the definition of the extension. Applications processing a resource are required to check for modifier extensions.
    /// 
    /// Modifier extensions SHALL NOT change the meaning of any elements on Resource or DomainResource (including cannot change the meaning of modifierExtension itself).
    List<Extension> modifierExtension;
    /// Describes what was observed. Sometimes this is called the observation "code".
    CodeableConcept code;
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
    /// Provides a reason why the expected value in the element Observation.component.value[x] is missing.
    CodeableConcept dataAbsentReason;
    /// A categorical assessment of an observation value.  For example, high, low, normal.
    List<CodeableConcept> interpretation;
    /// Guidance on how to interpret the value by comparison to a normal or recommended range.
    List<ObservationReferenceRange> referenceRange;
 
    ObservationComponent.fromJSON( Map json ){
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
        this.code = json['code'] == null ? null : FHIRObjectFactory.buildFromJSON('CodeableConcept', json['code']);
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
    }
}
