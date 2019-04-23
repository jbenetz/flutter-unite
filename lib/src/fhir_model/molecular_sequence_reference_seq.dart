import 'extension.dart';
import 'fhir_object_factory.dart';
import 'codeable_concept.dart';
import 'element.dart';
import 'reference.dart';
/// Raw data describing a biological sequence.
class MolecularSequenceReferenceSeq {
    /// Unique id for the element within a resource (for internal references). This may be any string value that does not contain spaces.
    String id;
    /// May be used to represent additional information that is not part of the basic definition of the element. To make the use of extensions safe and manageable, there is a strict set of governance  applied to the definition and use of extensions. Though any implementer can define an extension, there is a set of requirements that SHALL be met as part of the definition of the extension.
    List<Extension> extension;
    /// May be used to represent additional information that is not part of the basic definition of the element and that modifies the understanding of the element in which it is contained and/or the understanding of the containing element's descendants. Usually modifier elements provide negation or qualification. To make the use of extensions safe and manageable, there is a strict set of governance applied to the definition and use of extensions. Though any implementer can define an extension, there is a set of requirements that SHALL be met as part of the definition of the extension. Applications processing a resource are required to check for modifier extensions.
    /// 
    /// Modifier extensions SHALL NOT change the meaning of any elements on Resource or DomainResource (including cannot change the meaning of modifierExtension itself).
    List<Extension> modifierExtension;
    /// Structural unit composed of a nucleic acid molecule which controls its own replication through the interaction of specific proteins at one or more origins of replication ([SO:0000340](http://www.sequenceontology.org/browser/current_svn/term/SO:0000340)).
    CodeableConcept chromosome;
    /// The Genome Build used for reference, following GRCh build versions e.g. 'GRCh 37'.  Version number must be included if a versioned release of a primary build was used.
    String genomeBuild;
    /// Extensions for genomeBuild
    Element extGenomeBuild;
    /// A relative reference to a DNA strand based on gene orientation. The strand that contains the open reading frame of the gene is the "sense" strand, and the opposite complementary strand is the "antisense" strand.
    String orientation;
    /// Extensions for orientation
    Element extOrientation;
    /// Reference identifier of reference sequence submitted to NCBI. It must match the type in the MolecularSequence.type field. For example, the prefix, “NG_” identifies reference sequence for genes, “NM_” for messenger RNA transcripts, and “NP_” for amino acid sequences.
    CodeableConcept referenceSeqId;
    /// A pointer to another MolecularSequence entity as reference sequence.
    Reference referenceSeqPointer;
    /// A string like "ACGT".
    String referenceSeqString;
    /// Extensions for referenceSeqString
    Element extReferenceSeqString;
    /// An absolute reference to a strand. The Watson strand is the strand whose 5'-end is on the short arm of the chromosome, and the Crick strand as the one whose 5'-end is on the long arm.
    String strand;
    /// Extensions for strand
    Element extStrand;
    /// Start position of the window on the reference sequence. If the coordinate system is either 0-based or 1-based, then start position is inclusive.
    int windowStart;
    /// Extensions for windowStart
    Element extWindowStart;
    /// End position of the window on the reference sequence. If the coordinate system is 0-based then end is exclusive and does not include the last position. If the coordinate system is 1-base, then end is inclusive and includes the last position.
    int windowEnd;
    /// Extensions for windowEnd
    Element extWindowEnd;
 
    MolecularSequenceReferenceSeq.fromJSON( Map json ){
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
        this.chromosome = json['chromosome'] == null ? null : FHIRObjectFactory.buildFromJSON('CodeableConcept', json['chromosome']);
        this.genomeBuild = json['genomeBuild'];
        this.extGenomeBuild = json['_genomeBuild'] == null ? null : FHIRObjectFactory.buildFromJSON('Element', json['_genomeBuild']);
        this.orientation = json['orientation'];
        this.extOrientation = json['_orientation'] == null ? null : FHIRObjectFactory.buildFromJSON('Element', json['_orientation']);
        this.referenceSeqId = json['referenceSeqId'] == null ? null : FHIRObjectFactory.buildFromJSON('CodeableConcept', json['referenceSeqId']);
        this.referenceSeqPointer = json['referenceSeqPointer'] == null ? null : FHIRObjectFactory.buildFromJSON('Reference', json['referenceSeqPointer']);
        this.referenceSeqString = json['referenceSeqString'];
        this.extReferenceSeqString = json['_referenceSeqString'] == null ? null : FHIRObjectFactory.buildFromJSON('Element', json['_referenceSeqString']);
        this.strand = json['strand'];
        this.extStrand = json['_strand'] == null ? null : FHIRObjectFactory.buildFromJSON('Element', json['_strand']);
        this.windowStart = json['windowStart'];
        this.extWindowStart = json['_windowStart'] == null ? null : FHIRObjectFactory.buildFromJSON('Element', json['_windowStart']);
        this.windowEnd = json['windowEnd'];
        this.extWindowEnd = json['_windowEnd'] == null ? null : FHIRObjectFactory.buildFromJSON('Element', json['_windowEnd']);
    }
}
