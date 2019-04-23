import 'extension.dart';
import 'fhir_object_factory.dart';
import 'element.dart';
import 'attachment.dart';
import 'codeable_concept.dart';
import 'substance_nucleic_acid_linkage.dart';
import 'substance_nucleic_acid_sugar.dart';
/// Nucleic acids are defined by three distinct elements: the base, sugar and linkage. Individual substance/moiety IDs will be created for each of these elements. The nucleotide sequence will be always entered in the 5’-3’ direction.
class SubstanceNucleicAcidSubunit {
    /// Unique id for the element within a resource (for internal references). This may be any string value that does not contain spaces.
    String id;
    /// May be used to represent additional information that is not part of the basic definition of the element. To make the use of extensions safe and manageable, there is a strict set of governance  applied to the definition and use of extensions. Though any implementer can define an extension, there is a set of requirements that SHALL be met as part of the definition of the extension.
    List<Extension> extension;
    /// May be used to represent additional information that is not part of the basic definition of the element and that modifies the understanding of the element in which it is contained and/or the understanding of the containing element's descendants. Usually modifier elements provide negation or qualification. To make the use of extensions safe and manageable, there is a strict set of governance applied to the definition and use of extensions. Though any implementer can define an extension, there is a set of requirements that SHALL be met as part of the definition of the extension. Applications processing a resource are required to check for modifier extensions.
    /// 
    /// Modifier extensions SHALL NOT change the meaning of any elements on Resource or DomainResource (including cannot change the meaning of modifierExtension itself).
    List<Extension> modifierExtension;
    /// Index of linear sequences of nucleic acids in order of decreasing length. Sequences of the same length will be ordered by molecular weight. Subunits that have identical sequences will be repeated and have sequential subscripts.
    int subunit;
    /// Extensions for subunit
    Element extSubunit;
    /// Actual nucleotide sequence notation from 5' to 3' end using standard single letter codes. In addition to the base sequence, sugar and type of phosphate or non-phosphate linkage should also be captured.
    String sequence;
    /// Extensions for sequence
    Element extSequence;
    /// The length of the sequence shall be captured.
    int length;
    /// Extensions for length
    Element extLength;
    /// (TBC).
    Attachment sequenceAttachment;
    /// The nucleotide present at the 5’ terminal shall be specified based on a controlled vocabulary. Since the sequence is represented from the 5' to the 3' end, the 5’ prime nucleotide is the letter at the first position in the sequence. A separate representation would be redundant.
    CodeableConcept fivePrime;
    /// The nucleotide present at the 3’ terminal shall be specified based on a controlled vocabulary. Since the sequence is represented from the 5' to the 3' end, the 5’ prime nucleotide is the letter at the last position in the sequence. A separate representation would be redundant.
    CodeableConcept threePrime;
    /// The linkages between sugar residues will also be captured.
    List<SubstanceNucleicAcidLinkage> linkage;
    /// 5.3.6.8.1 Sugar ID (Mandatory).
    List<SubstanceNucleicAcidSugar> sugar;
 
    SubstanceNucleicAcidSubunit.fromJSON( Map json ){
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
        this.subunit = json['subunit'];
        this.extSubunit = json['_subunit'] == null ? null : FHIRObjectFactory.buildFromJSON('Element', json['_subunit']);
        this.sequence = json['sequence'];
        this.extSequence = json['_sequence'] == null ? null : FHIRObjectFactory.buildFromJSON('Element', json['_sequence']);
        this.length = json['length'];
        this.extLength = json['_length'] == null ? null : FHIRObjectFactory.buildFromJSON('Element', json['_length']);
        this.sequenceAttachment = json['sequenceAttachment'] == null ? null : FHIRObjectFactory.buildFromJSON('Attachment', json['sequenceAttachment']);
        this.fivePrime = json['fivePrime'] == null ? null : FHIRObjectFactory.buildFromJSON('CodeableConcept', json['fivePrime']);
        this.threePrime = json['threePrime'] == null ? null : FHIRObjectFactory.buildFromJSON('CodeableConcept', json['threePrime']);
        this.linkage = List<SubstanceNucleicAcidLinkage>();
        if (json['linkage'] != null && json['linkage'].length > 0) {
          if( json['linkage'] is List ){
            json['linkage'].forEach((i){
              this.linkage.add(FHIRObjectFactory.buildFromJSON('SubstanceNucleicAcidLinkage', i));
            });
          } else {
            // this handles the case when the list only has one object and does not return as a list
            var i = json['linkage'];
            this.linkage.add(FHIRObjectFactory.buildFromJSON('SubstanceNucleicAcidLinkage', i));
          }          
        }
        this.sugar = List<SubstanceNucleicAcidSugar>();
        if (json['sugar'] != null && json['sugar'].length > 0) {
          if( json['sugar'] is List ){
            json['sugar'].forEach((i){
              this.sugar.add(FHIRObjectFactory.buildFromJSON('SubstanceNucleicAcidSugar', i));
            });
          } else {
            // this handles the case when the list only has one object and does not return as a list
            var i = json['sugar'];
            this.sugar.add(FHIRObjectFactory.buildFromJSON('SubstanceNucleicAcidSugar', i));
          }          
        }
    }
}
