import 'extension.dart';
import 'fhir_object_factory.dart';
import 'codeable_concept.dart';
import 'element.dart';
import 'measure_population.dart';
import 'measure_stratifier.dart';
/// The Measure resource provides the definition of a quality measure.
class MeasureGroup {
    /// Unique id for the element within a resource (for internal references). This may be any string value that does not contain spaces.
    String id;
    /// May be used to represent additional information that is not part of the basic definition of the element. To make the use of extensions safe and manageable, there is a strict set of governance  applied to the definition and use of extensions. Though any implementer can define an extension, there is a set of requirements that SHALL be met as part of the definition of the extension.
    List<Extension> extension;
    /// May be used to represent additional information that is not part of the basic definition of the element and that modifies the understanding of the element in which it is contained and/or the understanding of the containing element's descendants. Usually modifier elements provide negation or qualification. To make the use of extensions safe and manageable, there is a strict set of governance applied to the definition and use of extensions. Though any implementer can define an extension, there is a set of requirements that SHALL be met as part of the definition of the extension. Applications processing a resource are required to check for modifier extensions.
    /// 
    /// Modifier extensions SHALL NOT change the meaning of any elements on Resource or DomainResource (including cannot change the meaning of modifierExtension itself).
    List<Extension> modifierExtension;
    /// Indicates a meaning for the group. This can be as simple as a unique identifier, or it can establish meaning in a broader context by drawing from a terminology, allowing groups to be correlated across measures.
    CodeableConcept code;
    /// The human readable description of this population group.
    String description;
    /// Extensions for description
    Element extDescription;
    /// A population criteria for the measure.
    List<MeasurePopulation> population;
    /// The stratifier criteria for the measure report, specified as either the name of a valid CQL expression defined within a referenced library or a valid FHIR Resource Path.
    List<MeasureStratifier> stratifier;
 
    MeasureGroup.fromJSON( Map json ){
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
        this.description = json['description'];
        this.extDescription = json['_description'] == null ? null : FHIRObjectFactory.buildFromJSON('Element', json['_description']);
        this.population = List<MeasurePopulation>();
        if (json['population'] != null && json['population'].length > 0) {
          if( json['population'] is List ){
            json['population'].forEach((i){
              this.population.add(FHIRObjectFactory.buildFromJSON('MeasurePopulation', i));
            });
          } else {
            // this handles the case when the list only has one object and does not return as a list
            var i = json['population'];
            this.population.add(FHIRObjectFactory.buildFromJSON('MeasurePopulation', i));
          }          
        }
        this.stratifier = List<MeasureStratifier>();
        if (json['stratifier'] != null && json['stratifier'].length > 0) {
          if( json['stratifier'] is List ){
            json['stratifier'].forEach((i){
              this.stratifier.add(FHIRObjectFactory.buildFromJSON('MeasureStratifier', i));
            });
          } else {
            // this handles the case when the list only has one object and does not return as a list
            var i = json['stratifier'];
            this.stratifier.add(FHIRObjectFactory.buildFromJSON('MeasureStratifier', i));
          }          
        }
    }
}
