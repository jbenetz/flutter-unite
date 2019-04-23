import 'extension.dart';
import 'fhir_object_factory.dart';
import 'codeable_concept.dart';
import 'element.dart';
import 'range.dart';
import 'period.dart';
/// An assessment of the likely outcome(s) for a patient or other subject as well as the likelihood of each outcome.
class RiskAssessmentPrediction {
    /// Unique id for the element within a resource (for internal references). This may be any string value that does not contain spaces.
    String id;
    /// May be used to represent additional information that is not part of the basic definition of the element. To make the use of extensions safe and manageable, there is a strict set of governance  applied to the definition and use of extensions. Though any implementer can define an extension, there is a set of requirements that SHALL be met as part of the definition of the extension.
    List<Extension> extension;
    /// May be used to represent additional information that is not part of the basic definition of the element and that modifies the understanding of the element in which it is contained and/or the understanding of the containing element's descendants. Usually modifier elements provide negation or qualification. To make the use of extensions safe and manageable, there is a strict set of governance applied to the definition and use of extensions. Though any implementer can define an extension, there is a set of requirements that SHALL be met as part of the definition of the extension. Applications processing a resource are required to check for modifier extensions.
    /// 
    /// Modifier extensions SHALL NOT change the meaning of any elements on Resource or DomainResource (including cannot change the meaning of modifierExtension itself).
    List<Extension> modifierExtension;
    /// One of the potential outcomes for the patient (e.g. remission, death,  a particular condition).
    CodeableConcept outcome;
    /// Extensions for probabilityDecimal
    Element extProbabilityDecimal;
    /// Indicates how likely the outcome is (in the specified timeframe).
    Range probabilityRange;
    /// Indicates how likely the outcome is (in the specified timeframe), expressed as a qualitative value (e.g. low, medium, or high).
    CodeableConcept qualitativeRisk;
    /// Indicates the risk for this particular subject (with their specific characteristics) divided by the risk of the population in general.  (Numbers greater than 1 = higher risk than the population, numbers less than 1 = lower risk.).
    double relativeRisk;
    /// Extensions for relativeRisk
    Element extRelativeRisk;
    /// Indicates the period of time or age range of the subject to which the specified probability applies.
    Period whenPeriod;
    /// Indicates the period of time or age range of the subject to which the specified probability applies.
    Range whenRange;
    /// Additional information explaining the basis for the prediction.
    String rationale;
    /// Extensions for rationale
    Element extRationale;
 
    RiskAssessmentPrediction.fromJSON( Map json ){
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
        this.outcome = json['outcome'] == null ? null : FHIRObjectFactory.buildFromJSON('CodeableConcept', json['outcome']);
        this.extProbabilityDecimal = json['_probabilityDecimal'] == null ? null : FHIRObjectFactory.buildFromJSON('Element', json['_probabilityDecimal']);
        this.probabilityRange = json['probabilityRange'] == null ? null : FHIRObjectFactory.buildFromJSON('Range', json['probabilityRange']);
        this.qualitativeRisk = json['qualitativeRisk'] == null ? null : FHIRObjectFactory.buildFromJSON('CodeableConcept', json['qualitativeRisk']);
        if( json['relativeRisk'] != null && json['relativeRisk'] is int ) {
          this.relativeRisk = json['relativeRisk'].toDouble();
        } else {
          this.relativeRisk = json['relativeRisk'];
        }
    
        this.extRelativeRisk = json['_relativeRisk'] == null ? null : FHIRObjectFactory.buildFromJSON('Element', json['_relativeRisk']);
        this.whenPeriod = json['whenPeriod'] == null ? null : FHIRObjectFactory.buildFromJSON('Period', json['whenPeriod']);
        this.whenRange = json['whenRange'] == null ? null : FHIRObjectFactory.buildFromJSON('Range', json['whenRange']);
        this.rationale = json['rationale'];
        this.extRationale = json['_rationale'] == null ? null : FHIRObjectFactory.buildFromJSON('Element', json['_rationale']);
    }
}
