import 'extension.dart';
import 'fhir_object_factory.dart';
import 'codeable_concept.dart';
import 'element.dart';
/// Set of definitional characteristics for a kind of observation or measurement produced or consumed by an orderable health care service.
class ObservationDefinitionQuantitativeDetails {
    /// Unique id for the element within a resource (for internal references). This may be any string value that does not contain spaces.
    String id;
    /// May be used to represent additional information that is not part of the basic definition of the element. To make the use of extensions safe and manageable, there is a strict set of governance  applied to the definition and use of extensions. Though any implementer can define an extension, there is a set of requirements that SHALL be met as part of the definition of the extension.
    List<Extension> extension;
    /// May be used to represent additional information that is not part of the basic definition of the element and that modifies the understanding of the element in which it is contained and/or the understanding of the containing element's descendants. Usually modifier elements provide negation or qualification. To make the use of extensions safe and manageable, there is a strict set of governance applied to the definition and use of extensions. Though any implementer can define an extension, there is a set of requirements that SHALL be met as part of the definition of the extension. Applications processing a resource are required to check for modifier extensions.
    /// 
    /// Modifier extensions SHALL NOT change the meaning of any elements on Resource or DomainResource (including cannot change the meaning of modifierExtension itself).
    List<Extension> modifierExtension;
    /// Customary unit used to report quantitative results of observations conforming to this ObservationDefinition.
    CodeableConcept customaryUnit;
    /// SI unit used to report quantitative results of observations conforming to this ObservationDefinition.
    CodeableConcept unit;
    /// Factor for converting value expressed with SI unit to value expressed with customary unit.
    double conversionFactor;
    /// Extensions for conversionFactor
    Element extConversionFactor;
    /// Number of digits after decimal separator when the results of such observations are of type Quantity.
    int decimalPrecision;
    /// Extensions for decimalPrecision
    Element extDecimalPrecision;
 
    ObservationDefinitionQuantitativeDetails.fromJSON( Map json ){
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
        this.customaryUnit = json['customaryUnit'] == null ? null : FHIRObjectFactory.buildFromJSON('CodeableConcept', json['customaryUnit']);
        this.unit = json['unit'] == null ? null : FHIRObjectFactory.buildFromJSON('CodeableConcept', json['unit']);
        if( json['conversionFactor'] != null && json['conversionFactor'] is int ) {
          this.conversionFactor = json['conversionFactor'].toDouble();
        } else {
          this.conversionFactor = json['conversionFactor'];
        }
    
        this.extConversionFactor = json['_conversionFactor'] == null ? null : FHIRObjectFactory.buildFromJSON('Element', json['_conversionFactor']);
        this.decimalPrecision = json['decimalPrecision'];
        this.extDecimalPrecision = json['_decimalPrecision'] == null ? null : FHIRObjectFactory.buildFromJSON('Element', json['_decimalPrecision']);
    }
}
