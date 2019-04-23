import 'meta.dart';
import 'fhir_object_factory.dart';
import 'element.dart';
import 'narrative.dart';
import 'extension.dart';
import 'reference.dart';
import 'codeable_concept.dart';
import 'quantity.dart';
import 'medicinal_product_indication_other_therapy.dart';
import 'population.dart';
/// Indication for the Medicinal Product.
class MedicinalProductIndication {
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
    /// The medication for which this is an indication.
    List<Reference> subject;
    /// The disease, symptom or procedure that is the indication for treatment.
    CodeableConcept diseaseSymptomProcedure;
    /// The status of the disease or symptom for which the indication applies.
    CodeableConcept diseaseStatus;
    /// Comorbidity (concurrent condition) or co-infection as part of the indication.
    List<CodeableConcept> comorbidity;
    /// The intended effect, aim or strategy to be achieved by the indication.
    CodeableConcept intendedEffect;
    /// Timing or duration information as part of the indication.
    Quantity duration;
    /// Information about the use of the medicinal product in relation to other therapies described as part of the indication.
    List<MedicinalProductIndicationOtherTherapy> otherTherapy;
    /// Describe the undesirable effects of the medicinal product.
    List<Reference> undesirableEffect;
    /// The population group to which this applies.
    List<Population> population;
 
    MedicinalProductIndication.fromJSON( Map json ){
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
        this.subject = List<Reference>();
        if (json['subject'] != null && json['subject'].length > 0) {
          if( json['subject'] is List ){
            json['subject'].forEach((i){
              this.subject.add(FHIRObjectFactory.buildFromJSON('Reference', i));
            });
          } else {
            // this handles the case when the list only has one object and does not return as a list
            var i = json['subject'];
            this.subject.add(FHIRObjectFactory.buildFromJSON('Reference', i));
          }          
        }
        this.diseaseSymptomProcedure = json['diseaseSymptomProcedure'] == null ? null : FHIRObjectFactory.buildFromJSON('CodeableConcept', json['diseaseSymptomProcedure']);
        this.diseaseStatus = json['diseaseStatus'] == null ? null : FHIRObjectFactory.buildFromJSON('CodeableConcept', json['diseaseStatus']);
        this.comorbidity = List<CodeableConcept>();
        if (json['comorbidity'] != null && json['comorbidity'].length > 0) {
          if( json['comorbidity'] is List ){
            json['comorbidity'].forEach((i){
              this.comorbidity.add(FHIRObjectFactory.buildFromJSON('CodeableConcept', i));
            });
          } else {
            // this handles the case when the list only has one object and does not return as a list
            var i = json['comorbidity'];
            this.comorbidity.add(FHIRObjectFactory.buildFromJSON('CodeableConcept', i));
          }          
        }
        this.intendedEffect = json['intendedEffect'] == null ? null : FHIRObjectFactory.buildFromJSON('CodeableConcept', json['intendedEffect']);
        this.duration = json['duration'] == null ? null : FHIRObjectFactory.buildFromJSON('Quantity', json['duration']);
        this.otherTherapy = List<MedicinalProductIndicationOtherTherapy>();
        if (json['otherTherapy'] != null && json['otherTherapy'].length > 0) {
          if( json['otherTherapy'] is List ){
            json['otherTherapy'].forEach((i){
              this.otherTherapy.add(FHIRObjectFactory.buildFromJSON('MedicinalProductIndicationOtherTherapy', i));
            });
          } else {
            // this handles the case when the list only has one object and does not return as a list
            var i = json['otherTherapy'];
            this.otherTherapy.add(FHIRObjectFactory.buildFromJSON('MedicinalProductIndicationOtherTherapy', i));
          }          
        }
        this.undesirableEffect = List<Reference>();
        if (json['undesirableEffect'] != null && json['undesirableEffect'].length > 0) {
          if( json['undesirableEffect'] is List ){
            json['undesirableEffect'].forEach((i){
              this.undesirableEffect.add(FHIRObjectFactory.buildFromJSON('Reference', i));
            });
          } else {
            // this handles the case when the list only has one object and does not return as a list
            var i = json['undesirableEffect'];
            this.undesirableEffect.add(FHIRObjectFactory.buildFromJSON('Reference', i));
          }          
        }
        this.population = List<Population>();
        if (json['population'] != null && json['population'].length > 0) {
          if( json['population'] is List ){
            json['population'].forEach((i){
              this.population.add(FHIRObjectFactory.buildFromJSON('Population', i));
            });
          } else {
            // this handles the case when the list only has one object and does not return as a list
            var i = json['population'];
            this.population.add(FHIRObjectFactory.buildFromJSON('Population', i));
          }          
        }
    }
}
