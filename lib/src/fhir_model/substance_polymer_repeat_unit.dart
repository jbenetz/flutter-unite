import 'extension.dart';
import 'fhir_object_factory.dart';
import 'codeable_concept.dart';
import 'element.dart';
import 'substance_amount.dart';
import 'substance_polymer_degree_of_polymerisation.dart';
import 'substance_polymer_structural_representation.dart';
/// Todo.
class SubstancePolymerRepeatUnit {
    /// Unique id for the element within a resource (for internal references). This may be any string value that does not contain spaces.
    String id;
    /// May be used to represent additional information that is not part of the basic definition of the element. To make the use of extensions safe and manageable, there is a strict set of governance  applied to the definition and use of extensions. Though any implementer can define an extension, there is a set of requirements that SHALL be met as part of the definition of the extension.
    List<Extension> extension;
    /// May be used to represent additional information that is not part of the basic definition of the element and that modifies the understanding of the element in which it is contained and/or the understanding of the containing element's descendants. Usually modifier elements provide negation or qualification. To make the use of extensions safe and manageable, there is a strict set of governance applied to the definition and use of extensions. Though any implementer can define an extension, there is a set of requirements that SHALL be met as part of the definition of the extension. Applications processing a resource are required to check for modifier extensions.
    /// 
    /// Modifier extensions SHALL NOT change the meaning of any elements on Resource or DomainResource (including cannot change the meaning of modifierExtension itself).
    List<Extension> modifierExtension;
    /// Todo.
    CodeableConcept orientationOfPolymerisation;
    /// Todo.
    String repeatUnit;
    /// Extensions for repeatUnit
    Element extRepeatUnit;
    /// Todo.
    SubstanceAmount amount;
    /// Todo.
    List<SubstancePolymerDegreeOfPolymerisation> degreeOfPolymerisation;
    /// Todo.
    List<SubstancePolymerStructuralRepresentation> structuralRepresentation;
 
    SubstancePolymerRepeatUnit.fromJSON( Map json ){
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
        this.orientationOfPolymerisation = json['orientationOfPolymerisation'] == null ? null : FHIRObjectFactory.buildFromJSON('CodeableConcept', json['orientationOfPolymerisation']);
        this.repeatUnit = json['repeatUnit'];
        this.extRepeatUnit = json['_repeatUnit'] == null ? null : FHIRObjectFactory.buildFromJSON('Element', json['_repeatUnit']);
        this.amount = json['amount'] == null ? null : FHIRObjectFactory.buildFromJSON('SubstanceAmount', json['amount']);
        this.degreeOfPolymerisation = List<SubstancePolymerDegreeOfPolymerisation>();
        if (json['degreeOfPolymerisation'] != null && json['degreeOfPolymerisation'].length > 0) {
          if( json['degreeOfPolymerisation'] is List ){
            json['degreeOfPolymerisation'].forEach((i){
              this.degreeOfPolymerisation.add(FHIRObjectFactory.buildFromJSON('SubstancePolymerDegreeOfPolymerisation', i));
            });
          } else {
            // this handles the case when the list only has one object and does not return as a list
            var i = json['degreeOfPolymerisation'];
            this.degreeOfPolymerisation.add(FHIRObjectFactory.buildFromJSON('SubstancePolymerDegreeOfPolymerisation', i));
          }          
        }
        this.structuralRepresentation = List<SubstancePolymerStructuralRepresentation>();
        if (json['structuralRepresentation'] != null && json['structuralRepresentation'].length > 0) {
          if( json['structuralRepresentation'] is List ){
            json['structuralRepresentation'].forEach((i){
              this.structuralRepresentation.add(FHIRObjectFactory.buildFromJSON('SubstancePolymerStructuralRepresentation', i));
            });
          } else {
            // this handles the case when the list only has one object and does not return as a list
            var i = json['structuralRepresentation'];
            this.structuralRepresentation.add(FHIRObjectFactory.buildFromJSON('SubstancePolymerStructuralRepresentation', i));
          }          
        }
    }
}
