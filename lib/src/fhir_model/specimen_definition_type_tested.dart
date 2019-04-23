import 'extension.dart';
import 'fhir_object_factory.dart';
import 'element.dart';
import 'codeable_concept.dart';
import 'specimen_definition_container.dart';
import 'duration.dart';
import 'specimen_definition_handling.dart';
/// A kind of specimen with associated set of requirements.
class SpecimenDefinitionTypeTested {
    /// Unique id for the element within a resource (for internal references). This may be any string value that does not contain spaces.
    String id;
    /// May be used to represent additional information that is not part of the basic definition of the element. To make the use of extensions safe and manageable, there is a strict set of governance  applied to the definition and use of extensions. Though any implementer can define an extension, there is a set of requirements that SHALL be met as part of the definition of the extension.
    List<Extension> extension;
    /// May be used to represent additional information that is not part of the basic definition of the element and that modifies the understanding of the element in which it is contained and/or the understanding of the containing element's descendants. Usually modifier elements provide negation or qualification. To make the use of extensions safe and manageable, there is a strict set of governance applied to the definition and use of extensions. Though any implementer can define an extension, there is a set of requirements that SHALL be met as part of the definition of the extension. Applications processing a resource are required to check for modifier extensions.
    /// 
    /// Modifier extensions SHALL NOT change the meaning of any elements on Resource or DomainResource (including cannot change the meaning of modifierExtension itself).
    List<Extension> modifierExtension;
    /// Primary of secondary specimen.
    bool isDerived;
    /// Extensions for isDerived
    Element extIsDerived;
    /// The kind of specimen conditioned for testing expected by lab.
    CodeableConcept type;
    /// The preference for this type of conditioned specimen.
    String preference;
    /// Extensions for preference
    Element extPreference;
    /// The specimen's container.
    SpecimenDefinitionContainer container;
    /// Requirements for delivery and special handling of this kind of conditioned specimen.
    String requirement;
    /// Extensions for requirement
    Element extRequirement;
    /// The usual time that a specimen of this kind is retained after the ordered tests are completed, for the purpose of additional testing.
    Duration retentionTime;
    /// Criterion for rejection of the specimen in its container by the laboratory.
    List<CodeableConcept> rejectionCriterion;
    /// Set of instructions for preservation/transport of the specimen at a defined temperature interval, prior the testing process.
    List<SpecimenDefinitionHandling> handling;
 
    SpecimenDefinitionTypeTested.fromJSON( Map json ){
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
        this.isDerived = json['isDerived'];
        this.extIsDerived = json['_isDerived'] == null ? null : FHIRObjectFactory.buildFromJSON('Element', json['_isDerived']);
        this.type = json['type'] == null ? null : FHIRObjectFactory.buildFromJSON('CodeableConcept', json['type']);
        this.preference = json['preference'];
        this.extPreference = json['_preference'] == null ? null : FHIRObjectFactory.buildFromJSON('Element', json['_preference']);
        this.container = json['container'] == null ? null : FHIRObjectFactory.buildFromJSON('SpecimenDefinitionContainer', json['container']);
        this.requirement = json['requirement'];
        this.extRequirement = json['_requirement'] == null ? null : FHIRObjectFactory.buildFromJSON('Element', json['_requirement']);
        this.retentionTime = json['retentionTime'] == null ? null : FHIRObjectFactory.buildFromJSON('Duration', json['retentionTime']);
        this.rejectionCriterion = List<CodeableConcept>();
        if (json['rejectionCriterion'] != null && json['rejectionCriterion'].length > 0) {
          if( json['rejectionCriterion'] is List ){
            json['rejectionCriterion'].forEach((i){
              this.rejectionCriterion.add(FHIRObjectFactory.buildFromJSON('CodeableConcept', i));
            });
          } else {
            // this handles the case when the list only has one object and does not return as a list
            var i = json['rejectionCriterion'];
            this.rejectionCriterion.add(FHIRObjectFactory.buildFromJSON('CodeableConcept', i));
          }          
        }
        this.handling = List<SpecimenDefinitionHandling>();
        if (json['handling'] != null && json['handling'].length > 0) {
          if( json['handling'] is List ){
            json['handling'].forEach((i){
              this.handling.add(FHIRObjectFactory.buildFromJSON('SpecimenDefinitionHandling', i));
            });
          } else {
            // this handles the case when the list only has one object and does not return as a list
            var i = json['handling'];
            this.handling.add(FHIRObjectFactory.buildFromJSON('SpecimenDefinitionHandling', i));
          }          
        }
    }
}
