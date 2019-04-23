import 'meta.dart';
import 'fhir_object_factory.dart';
import 'element.dart';
import 'narrative.dart';
import 'extension.dart';
import 'identifier.dart';
import 'codeable_concept.dart';
import 'specimen_definition_type_tested.dart';
/// A kind of specimen with associated set of requirements.
class SpecimenDefinition {
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
    /// A business identifier associated with the kind of specimen.
    Identifier identifier;
    /// The kind of material to be collected.
    CodeableConcept typeCollected;
    /// Preparation of the patient for specimen collection.
    List<CodeableConcept> patientPreparation;
    /// Time aspect of specimen collection (duration or offset).
    String timeAspect;
    /// Extensions for timeAspect
    Element extTimeAspect;
    /// The action to be performed for collecting the specimen.
    List<CodeableConcept> collection;
    /// Specimen conditioned in a container as expected by the testing laboratory.
    List<SpecimenDefinitionTypeTested> typeTested;
 
    SpecimenDefinition.fromJSON( Map json ){
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
        this.identifier = json['identifier'] == null ? null : FHIRObjectFactory.buildFromJSON('Identifier', json['identifier']);
        this.typeCollected = json['typeCollected'] == null ? null : FHIRObjectFactory.buildFromJSON('CodeableConcept', json['typeCollected']);
        this.patientPreparation = List<CodeableConcept>();
        if (json['patientPreparation'] != null && json['patientPreparation'].length > 0) {
          if( json['patientPreparation'] is List ){
            json['patientPreparation'].forEach((i){
              this.patientPreparation.add(FHIRObjectFactory.buildFromJSON('CodeableConcept', i));
            });
          } else {
            // this handles the case when the list only has one object and does not return as a list
            var i = json['patientPreparation'];
            this.patientPreparation.add(FHIRObjectFactory.buildFromJSON('CodeableConcept', i));
          }          
        }
        this.timeAspect = json['timeAspect'];
        this.extTimeAspect = json['_timeAspect'] == null ? null : FHIRObjectFactory.buildFromJSON('Element', json['_timeAspect']);
        this.collection = List<CodeableConcept>();
        if (json['collection'] != null && json['collection'].length > 0) {
          if( json['collection'] is List ){
            json['collection'].forEach((i){
              this.collection.add(FHIRObjectFactory.buildFromJSON('CodeableConcept', i));
            });
          } else {
            // this handles the case when the list only has one object and does not return as a list
            var i = json['collection'];
            this.collection.add(FHIRObjectFactory.buildFromJSON('CodeableConcept', i));
          }          
        }
        this.typeTested = List<SpecimenDefinitionTypeTested>();
        if (json['typeTested'] != null && json['typeTested'].length > 0) {
          if( json['typeTested'] is List ){
            json['typeTested'].forEach((i){
              this.typeTested.add(FHIRObjectFactory.buildFromJSON('SpecimenDefinitionTypeTested', i));
            });
          } else {
            // this handles the case when the list only has one object and does not return as a list
            var i = json['typeTested'];
            this.typeTested.add(FHIRObjectFactory.buildFromJSON('SpecimenDefinitionTypeTested', i));
          }          
        }
    }
}
