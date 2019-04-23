import 'extension.dart';
import 'fhir_object_factory.dart';
import 'element.dart';
import 'attachment.dart';
import 'identifier.dart';
/// A SubstanceProtein is defined as a single unit of a linear amino acid sequence, or a combination of subunits that are either covalently linked or have a defined invariant stoichiometric relationship. This includes all synthetic, recombinant and purified SubstanceProteins of defined sequence, whether the use is therapeutic or prophylactic. This set of elements will be used to describe albumins, coagulation factors, cytokines, growth factors, peptide/SubstanceProtein hormones, enzymes, toxins, toxoids, recombinant vaccines, and immunomodulators.
class SubstanceProteinSubunit {
    /// Unique id for the element within a resource (for internal references). This may be any string value that does not contain spaces.
    String id;
    /// May be used to represent additional information that is not part of the basic definition of the element. To make the use of extensions safe and manageable, there is a strict set of governance  applied to the definition and use of extensions. Though any implementer can define an extension, there is a set of requirements that SHALL be met as part of the definition of the extension.
    List<Extension> extension;
    /// May be used to represent additional information that is not part of the basic definition of the element and that modifies the understanding of the element in which it is contained and/or the understanding of the containing element's descendants. Usually modifier elements provide negation or qualification. To make the use of extensions safe and manageable, there is a strict set of governance applied to the definition and use of extensions. Though any implementer can define an extension, there is a set of requirements that SHALL be met as part of the definition of the extension. Applications processing a resource are required to check for modifier extensions.
    /// 
    /// Modifier extensions SHALL NOT change the meaning of any elements on Resource or DomainResource (including cannot change the meaning of modifierExtension itself).
    List<Extension> modifierExtension;
    /// Index of primary sequences of amino acids linked through peptide bonds in order of decreasing length. Sequences of the same length will be ordered by molecular weight. Subunits that have identical sequences will be repeated and have sequential subscripts.
    int subunit;
    /// Extensions for subunit
    Element extSubunit;
    /// The sequence information shall be provided enumerating the amino acids from N- to C-terminal end using standard single-letter amino acid codes. Uppercase shall be used for L-amino acids and lowercase for D-amino acids. Transcribed SubstanceProteins will always be described using the translated sequence; for synthetic peptide containing amino acids that are not represented with a single letter code an X should be used within the sequence. The modified amino acids will be distinguished by their position in the sequence.
    String sequence;
    /// Extensions for sequence
    Element extSequence;
    /// Length of linear sequences of amino acids contained in the subunit.
    int length;
    /// Extensions for length
    Element extLength;
    /// The sequence information shall be provided enumerating the amino acids from N- to C-terminal end using standard single-letter amino acid codes. Uppercase shall be used for L-amino acids and lowercase for D-amino acids. Transcribed SubstanceProteins will always be described using the translated sequence; for synthetic peptide containing amino acids that are not represented with a single letter code an X should be used within the sequence. The modified amino acids will be distinguished by their position in the sequence.
    Attachment sequenceAttachment;
    /// Unique identifier for molecular fragment modification based on the ISO 11238 Substance ID.
    Identifier nTerminalModificationId;
    /// The name of the fragment modified at the N-terminal of the SubstanceProtein shall be specified.
    String nTerminalModification;
    /// Extensions for nTerminalModification
    Element extNTerminalModification;
    /// Unique identifier for molecular fragment modification based on the ISO 11238 Substance ID.
    Identifier cTerminalModificationId;
    /// The modification at the C-terminal shall be specified.
    String cTerminalModification;
    /// Extensions for cTerminalModification
    Element extCTerminalModification;
 
    SubstanceProteinSubunit.fromJSON( Map json ){
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
        this.nTerminalModificationId = json['nTerminalModificationId'] == null ? null : FHIRObjectFactory.buildFromJSON('Identifier', json['nTerminalModificationId']);
        this.nTerminalModification = json['nTerminalModification'];
        this.extNTerminalModification = json['_nTerminalModification'] == null ? null : FHIRObjectFactory.buildFromJSON('Element', json['_nTerminalModification']);
        this.cTerminalModificationId = json['cTerminalModificationId'] == null ? null : FHIRObjectFactory.buildFromJSON('Identifier', json['cTerminalModificationId']);
        this.cTerminalModification = json['cTerminalModification'];
        this.extCTerminalModification = json['_cTerminalModification'] == null ? null : FHIRObjectFactory.buildFromJSON('Element', json['_cTerminalModification']);
    }
}
