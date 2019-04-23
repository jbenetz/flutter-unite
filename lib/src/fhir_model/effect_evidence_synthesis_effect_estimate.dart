import 'extension.dart';
import 'fhir_object_factory.dart';
import 'element.dart';
import 'codeable_concept.dart';
import 'effect_evidence_synthesis_precision_estimate.dart';
/// The EffectEvidenceSynthesis resource describes the difference in an outcome between exposures states in a population where the effect estimate is derived from a combination of research studies.
class EffectEvidenceSynthesisEffectEstimate {
    /// Unique id for the element within a resource (for internal references). This may be any string value that does not contain spaces.
    String id;
    /// May be used to represent additional information that is not part of the basic definition of the element. To make the use of extensions safe and manageable, there is a strict set of governance  applied to the definition and use of extensions. Though any implementer can define an extension, there is a set of requirements that SHALL be met as part of the definition of the extension.
    List<Extension> extension;
    /// May be used to represent additional information that is not part of the basic definition of the element and that modifies the understanding of the element in which it is contained and/or the understanding of the containing element's descendants. Usually modifier elements provide negation or qualification. To make the use of extensions safe and manageable, there is a strict set of governance applied to the definition and use of extensions. Though any implementer can define an extension, there is a set of requirements that SHALL be met as part of the definition of the extension. Applications processing a resource are required to check for modifier extensions.
    /// 
    /// Modifier extensions SHALL NOT change the meaning of any elements on Resource or DomainResource (including cannot change the meaning of modifierExtension itself).
    List<Extension> modifierExtension;
    /// Human-readable summary of effect estimate.
    String description;
    /// Extensions for description
    Element extDescription;
    /// Examples include relative risk and mean difference.
    CodeableConcept type;
    /// Used to define variant exposure states such as low-risk state.
    CodeableConcept variantState;
    /// The point estimate of the effect estimate.
    double value;
    /// Extensions for value
    Element extValue;
    /// Specifies the UCUM unit for the outcome.
    CodeableConcept unitOfMeasure;
    /// A description of the precision of the estimate for the effect.
    List<EffectEvidenceSynthesisPrecisionEstimate> precisionEstimate;
 
    EffectEvidenceSynthesisEffectEstimate.fromJSON( Map json ){
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
        this.type = json['type'] == null ? null : FHIRObjectFactory.buildFromJSON('CodeableConcept', json['type']);
        this.variantState = json['variantState'] == null ? null : FHIRObjectFactory.buildFromJSON('CodeableConcept', json['variantState']);
        if( json['value'] != null && json['value'] is int ) {
          this.value = json['value'].toDouble();
        } else {
          this.value = json['value'];
        }
    
        this.extValue = json['_value'] == null ? null : FHIRObjectFactory.buildFromJSON('Element', json['_value']);
        this.unitOfMeasure = json['unitOfMeasure'] == null ? null : FHIRObjectFactory.buildFromJSON('CodeableConcept', json['unitOfMeasure']);
        this.precisionEstimate = List<EffectEvidenceSynthesisPrecisionEstimate>();
        if (json['precisionEstimate'] != null && json['precisionEstimate'].length > 0) {
          if( json['precisionEstimate'] is List ){
            json['precisionEstimate'].forEach((i){
              this.precisionEstimate.add(FHIRObjectFactory.buildFromJSON('EffectEvidenceSynthesisPrecisionEstimate', i));
            });
          } else {
            // this handles the case when the list only has one object and does not return as a list
            var i = json['precisionEstimate'];
            this.precisionEstimate.add(FHIRObjectFactory.buildFromJSON('EffectEvidenceSynthesisPrecisionEstimate', i));
          }          
        }
    }
}
