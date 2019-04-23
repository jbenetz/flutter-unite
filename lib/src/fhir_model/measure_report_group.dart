import 'extension.dart';
import 'fhir_object_factory.dart';
import 'codeable_concept.dart';
import 'measure_report_population.dart';
import 'quantity.dart';
import 'measure_report_stratifier.dart';
/// The MeasureReport resource contains the results of the calculation of a measure; and optionally a reference to the resources involved in that calculation.
class MeasureReportGroup {
    /// Unique id for the element within a resource (for internal references). This may be any string value that does not contain spaces.
    String id;
    /// May be used to represent additional information that is not part of the basic definition of the element. To make the use of extensions safe and manageable, there is a strict set of governance  applied to the definition and use of extensions. Though any implementer can define an extension, there is a set of requirements that SHALL be met as part of the definition of the extension.
    List<Extension> extension;
    /// May be used to represent additional information that is not part of the basic definition of the element and that modifies the understanding of the element in which it is contained and/or the understanding of the containing element's descendants. Usually modifier elements provide negation or qualification. To make the use of extensions safe and manageable, there is a strict set of governance applied to the definition and use of extensions. Though any implementer can define an extension, there is a set of requirements that SHALL be met as part of the definition of the extension. Applications processing a resource are required to check for modifier extensions.
    /// 
    /// Modifier extensions SHALL NOT change the meaning of any elements on Resource or DomainResource (including cannot change the meaning of modifierExtension itself).
    List<Extension> modifierExtension;
    /// The meaning of the population group as defined in the measure definition.
    CodeableConcept code;
    /// The populations that make up the population group, one for each type of population appropriate for the measure.
    List<MeasureReportPopulation> population;
    /// The measure score for this population group, calculated as appropriate for the measure type and scoring method, and based on the contents of the populations defined in the group.
    Quantity measureScore;
    /// When a measure includes multiple stratifiers, there will be a stratifier group for each stratifier defined by the measure.
    List<MeasureReportStratifier> stratifier;
 
    MeasureReportGroup.fromJSON( Map json ){
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
        this.population = List<MeasureReportPopulation>();
        if (json['population'] != null && json['population'].length > 0) {
          if( json['population'] is List ){
            json['population'].forEach((i){
              this.population.add(FHIRObjectFactory.buildFromJSON('MeasureReportPopulation', i));
            });
          } else {
            // this handles the case when the list only has one object and does not return as a list
            var i = json['population'];
            this.population.add(FHIRObjectFactory.buildFromJSON('MeasureReportPopulation', i));
          }          
        }
        this.measureScore = json['measureScore'] == null ? null : FHIRObjectFactory.buildFromJSON('Quantity', json['measureScore']);
        this.stratifier = List<MeasureReportStratifier>();
        if (json['stratifier'] != null && json['stratifier'].length > 0) {
          if( json['stratifier'] is List ){
            json['stratifier'].forEach((i){
              this.stratifier.add(FHIRObjectFactory.buildFromJSON('MeasureReportStratifier', i));
            });
          } else {
            // this handles the case when the list only has one object and does not return as a list
            var i = json['stratifier'];
            this.stratifier.add(FHIRObjectFactory.buildFromJSON('MeasureReportStratifier', i));
          }          
        }
    }
}
