import 'extension.dart';
import 'fhir_object_factory.dart';
import 'element.dart';
import 'reference.dart';
/// Raw data describing a biological sequence.
class MolecularSequenceVariant {
    /// Unique id for the element within a resource (for internal references). This may be any string value that does not contain spaces.
    String id;
    /// May be used to represent additional information that is not part of the basic definition of the element. To make the use of extensions safe and manageable, there is a strict set of governance  applied to the definition and use of extensions. Though any implementer can define an extension, there is a set of requirements that SHALL be met as part of the definition of the extension.
    List<Extension> extension;
    /// May be used to represent additional information that is not part of the basic definition of the element and that modifies the understanding of the element in which it is contained and/or the understanding of the containing element's descendants. Usually modifier elements provide negation or qualification. To make the use of extensions safe and manageable, there is a strict set of governance applied to the definition and use of extensions. Though any implementer can define an extension, there is a set of requirements that SHALL be met as part of the definition of the extension. Applications processing a resource are required to check for modifier extensions.
    /// 
    /// Modifier extensions SHALL NOT change the meaning of any elements on Resource or DomainResource (including cannot change the meaning of modifierExtension itself).
    List<Extension> modifierExtension;
    /// Start position of the variant on the  reference sequence. If the coordinate system is either 0-based or 1-based, then start position is inclusive.
    int start;
    /// Extensions for start
    Element extStart;
    /// End position of the variant on the reference sequence. If the coordinate system is 0-based then end is exclusive and does not include the last position. If the coordinate system is 1-base, then end is inclusive and includes the last position.
    int end;
    /// Extensions for end
    Element extEnd;
    /// An allele is one of a set of coexisting sequence variants of a gene ([SO:0001023](http://www.sequenceontology.org/browser/current_svn/term/SO:0001023)).  Nucleotide(s)/amino acids from start position of sequence to stop position of sequence on the positive (+) strand of the observed  sequence. When the sequence  type is DNA, it should be the sequence on the positive (+) strand. This will lay in the range between variant.start and variant.end.
    String observedAllele;
    /// Extensions for observedAllele
    Element extObservedAllele;
    /// An allele is one of a set of coexisting sequence variants of a gene ([SO:0001023](http://www.sequenceontology.org/browser/current_svn/term/SO:0001023)). Nucleotide(s)/amino acids from start position of sequence to stop position of sequence on the positive (+) strand of the reference sequence. When the sequence  type is DNA, it should be the sequence on the positive (+) strand. This will lay in the range between variant.start and variant.end.
    String referenceAllele;
    /// Extensions for referenceAllele
    Element extReferenceAllele;
    /// Extended CIGAR string for aligning the sequence with reference bases. See detailed documentation [here](http://support.illumina.com/help/SequencingAnalysisWorkflow/Content/Vault/Informatics/Sequencing_Analysis/CASAVA/swSEQ_mCA_ExtendedCIGARFormat.htm).
    String cigar;
    /// Extensions for cigar
    Element extCigar;
    /// A pointer to an Observation containing variant information.
    Reference variantPointer;
 
    MolecularSequenceVariant.fromJSON( Map json ){
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
        this.start = json['start'];
        this.extStart = json['_start'] == null ? null : FHIRObjectFactory.buildFromJSON('Element', json['_start']);
        this.end = json['end'];
        this.extEnd = json['_end'] == null ? null : FHIRObjectFactory.buildFromJSON('Element', json['_end']);
        this.observedAllele = json['observedAllele'];
        this.extObservedAllele = json['_observedAllele'] == null ? null : FHIRObjectFactory.buildFromJSON('Element', json['_observedAllele']);
        this.referenceAllele = json['referenceAllele'];
        this.extReferenceAllele = json['_referenceAllele'] == null ? null : FHIRObjectFactory.buildFromJSON('Element', json['_referenceAllele']);
        this.cigar = json['cigar'];
        this.extCigar = json['_cigar'] == null ? null : FHIRObjectFactory.buildFromJSON('Element', json['_cigar']);
        this.variantPointer = json['variantPointer'] == null ? null : FHIRObjectFactory.buildFromJSON('Reference', json['variantPointer']);
    }
}
