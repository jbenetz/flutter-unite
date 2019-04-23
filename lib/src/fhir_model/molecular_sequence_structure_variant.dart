import 'extension.dart';
import 'fhir_object_factory.dart';
import 'codeable_concept.dart';
import 'element.dart';
import 'molecular_sequence_outer.dart';
import 'molecular_sequence_inner.dart';
/// Raw data describing a biological sequence.
class MolecularSequenceStructureVariant {
    /// Unique id for the element within a resource (for internal references). This may be any string value that does not contain spaces.
    String id;
    /// May be used to represent additional information that is not part of the basic definition of the element. To make the use of extensions safe and manageable, there is a strict set of governance  applied to the definition and use of extensions. Though any implementer can define an extension, there is a set of requirements that SHALL be met as part of the definition of the extension.
    List<Extension> extension;
    /// May be used to represent additional information that is not part of the basic definition of the element and that modifies the understanding of the element in which it is contained and/or the understanding of the containing element's descendants. Usually modifier elements provide negation or qualification. To make the use of extensions safe and manageable, there is a strict set of governance applied to the definition and use of extensions. Though any implementer can define an extension, there is a set of requirements that SHALL be met as part of the definition of the extension. Applications processing a resource are required to check for modifier extensions.
    /// 
    /// Modifier extensions SHALL NOT change the meaning of any elements on Resource or DomainResource (including cannot change the meaning of modifierExtension itself).
    List<Extension> modifierExtension;
    /// Information about chromosome structure variation DNA change type.
    CodeableConcept variantType;
    /// Used to indicate if the outer and inner start-end values have the same meaning.
    bool exact;
    /// Extensions for exact
    Element extExact;
    /// Length of the variant chromosome.
    int length;
    /// Extensions for length
    Element extLength;
    /// Structural variant outer.
    MolecularSequenceOuter outer;
    /// Structural variant inner.
    MolecularSequenceInner inner;
 
    MolecularSequenceStructureVariant.fromJSON( Map json ){
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
        this.variantType = json['variantType'] == null ? null : FHIRObjectFactory.buildFromJSON('CodeableConcept', json['variantType']);
        this.exact = json['exact'];
        this.extExact = json['_exact'] == null ? null : FHIRObjectFactory.buildFromJSON('Element', json['_exact']);
        this.length = json['length'];
        this.extLength = json['_length'] == null ? null : FHIRObjectFactory.buildFromJSON('Element', json['_length']);
        this.outer = json['outer'] == null ? null : FHIRObjectFactory.buildFromJSON('MolecularSequenceOuter', json['outer']);
        this.inner = json['inner'] == null ? null : FHIRObjectFactory.buildFromJSON('MolecularSequenceInner', json['inner']);
    }
}
