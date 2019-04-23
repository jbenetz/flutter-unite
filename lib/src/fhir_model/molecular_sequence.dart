import 'meta.dart';
import 'fhir_object_factory.dart';
import 'element.dart';
import 'narrative.dart';
import 'extension.dart';
import 'identifier.dart';
import 'reference.dart';
import 'quantity.dart';
import 'molecular_sequence_reference_seq.dart';
import 'molecular_sequence_variant.dart';
import 'molecular_sequence_quality.dart';
import 'molecular_sequence_repository.dart';
import 'molecular_sequence_structure_variant.dart';
/// Raw data describing a biological sequence.
class MolecularSequence {
    /// The logical id of the resource, as used in the URL for the resource. Once assigned, this value never changes.
    String id;
    /// The metadata about the resource. This is content that is maintained by the infrastructure. Changes to the content might not always be associated with version changes to the resource.
    Meta meta;
    /// A reference to a set of rules that were followed when the resource was constructed, and which must be understood when processing the content. Often, this is a reference to an implementation guide that defines the special rules along with other profiles etc.
    String implicitRules;
    /// Extensions for implicitRules
    Element extImplicitRules;
    /// The base language in which the resource is written.
    String language;
    /// Extensions for language
    Element extLanguage;
    /// A human-readable narrative that contains a summary of the resource and can be used to represent the content of the resource to a human. The narrative need not encode all the structured data, but is required to contain sufficient detail to make it "clinically safe" for a human to just read the narrative. Resource definitions may define what content should be represented in the narrative to ensure clinical safety.
    Narrative text;
    /// May be used to represent additional information that is not part of the basic definition of the resource. To make the use of extensions safe and manageable, there is a strict set of governance  applied to the definition and use of extensions. Though any implementer can define an extension, there is a set of requirements that SHALL be met as part of the definition of the extension.
    List<Extension> extension;
    /// May be used to represent additional information that is not part of the basic definition of the resource and that modifies the understanding of the element that contains it and/or the understanding of the containing element's descendants. Usually modifier elements provide negation or qualification. To make the use of extensions safe and manageable, there is a strict set of governance applied to the definition and use of extensions. Though any implementer is allowed to define an extension, there is a set of requirements that SHALL be met as part of the definition of the extension. Applications processing a resource are required to check for modifier extensions.
    /// 
    /// Modifier extensions SHALL NOT change the meaning of any elements on Resource or DomainResource (including cannot change the meaning of modifierExtension itself).
    List<Extension> modifierExtension;
    /// A unique identifier for this particular sequence instance. This is a FHIR-defined id.
    List<Identifier> identifier;
    /// Amino Acid Sequence/ DNA Sequence / RNA Sequence.
    String type;
    /// Extensions for type
    Element extType;
    /// Whether the sequence is numbered starting at 0 (0-based numbering or coordinates, inclusive start, exclusive end) or starting at 1 (1-based numbering, inclusive start and inclusive end).
    int coordinateSystem;
    /// Extensions for coordinateSystem
    Element extCoordinateSystem;
    /// The patient whose sequencing results are described by this resource.
    Reference patient;
    /// Specimen used for sequencing.
    Reference specimen;
    /// The method for sequencing, for example, chip information.
    Reference device;
    /// The organization or lab that should be responsible for this result.
    Reference performer;
    /// The number of copies of the sequence of interest. (RNASeq).
    Quantity quantity;
    /// A sequence that is used as a reference to describe variants that are present in a sequence analyzed.
    MolecularSequenceReferenceSeq referenceSeq;
    /// The definition of variant here originates from Sequence ontology ([variant_of](http://www.sequenceontology.org/browser/current_svn/term/variant_of)). This element can represent amino acid or nucleic sequence change(including insertion,deletion,SNP,etc.)  It can represent some complex mutation or segment variation with the assist of CIGAR string.
    List<MolecularSequenceVariant> variant;
    /// Sequence that was observed. It is the result marked by referenceSeq along with variant records on referenceSeq. This shall start from referenceSeq.windowStart and end by referenceSeq.windowEnd.
    String observedSeq;
    /// Extensions for observedSeq
    Element extObservedSeq;
    /// An experimental feature attribute that defines the quality of the feature in a quantitative way, such as a phred quality score ([SO:0001686](http://www.sequenceontology.org/browser/current_svn/term/SO:0001686)).
    List<MolecularSequenceQuality> quality;
    /// Coverage (read depth or depth) is the average number of reads representing a given nucleotide in the reconstructed sequence.
    int readCoverage;
    /// Extensions for readCoverage
    Element extReadCoverage;
    /// Configurations of the external repository. The repository shall store target's observedSeq or records related with target's observedSeq.
    List<MolecularSequenceRepository> repository;
    /// Pointer to next atomic sequence which at most contains one variant.
    List<Reference> pointer;
    /// Information about chromosome structure variation.
    List<MolecularSequenceStructureVariant> structureVariant;
 
    MolecularSequence.fromJSON( Map json ){
        this.id = json['id'];
        this.meta = json['meta'] == null ? null : FHIRObjectFactory.buildFromJSON('Meta', json['meta']);
        this.implicitRules = json['implicitRules'];
        this.extImplicitRules = json['_implicitRules'] == null ? null : FHIRObjectFactory.buildFromJSON('Element', json['_implicitRules']);
        this.language = json['language'];
        this.extLanguage = json['_language'] == null ? null : FHIRObjectFactory.buildFromJSON('Element', json['_language']);
        this.text = json['text'] == null ? null : FHIRObjectFactory.buildFromJSON('Narrative', json['text']);
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
        this.identifier = List<Identifier>();
        if (json['identifier'] != null && json['identifier'].length > 0) {
          if( json['identifier'] is List ){
            json['identifier'].forEach((i){
              this.identifier.add(FHIRObjectFactory.buildFromJSON('Identifier', i));
            });
          } else {
            // this handles the case when the list only has one object and does not return as a list
            var i = json['identifier'];
            this.identifier.add(FHIRObjectFactory.buildFromJSON('Identifier', i));
          }          
        }
        this.type = json['type'];
        this.extType = json['_type'] == null ? null : FHIRObjectFactory.buildFromJSON('Element', json['_type']);
        this.coordinateSystem = json['coordinateSystem'];
        this.extCoordinateSystem = json['_coordinateSystem'] == null ? null : FHIRObjectFactory.buildFromJSON('Element', json['_coordinateSystem']);
        this.patient = json['patient'] == null ? null : FHIRObjectFactory.buildFromJSON('Reference', json['patient']);
        this.specimen = json['specimen'] == null ? null : FHIRObjectFactory.buildFromJSON('Reference', json['specimen']);
        this.device = json['device'] == null ? null : FHIRObjectFactory.buildFromJSON('Reference', json['device']);
        this.performer = json['performer'] == null ? null : FHIRObjectFactory.buildFromJSON('Reference', json['performer']);
        this.quantity = json['quantity'] == null ? null : FHIRObjectFactory.buildFromJSON('Quantity', json['quantity']);
        this.referenceSeq = json['referenceSeq'] == null ? null : FHIRObjectFactory.buildFromJSON('MolecularSequenceReferenceSeq', json['referenceSeq']);
        this.variant = List<MolecularSequenceVariant>();
        if (json['variant'] != null && json['variant'].length > 0) {
          if( json['variant'] is List ){
            json['variant'].forEach((i){
              this.variant.add(FHIRObjectFactory.buildFromJSON('MolecularSequenceVariant', i));
            });
          } else {
            // this handles the case when the list only has one object and does not return as a list
            var i = json['variant'];
            this.variant.add(FHIRObjectFactory.buildFromJSON('MolecularSequenceVariant', i));
          }          
        }
        this.observedSeq = json['observedSeq'];
        this.extObservedSeq = json['_observedSeq'] == null ? null : FHIRObjectFactory.buildFromJSON('Element', json['_observedSeq']);
        this.quality = List<MolecularSequenceQuality>();
        if (json['quality'] != null && json['quality'].length > 0) {
          if( json['quality'] is List ){
            json['quality'].forEach((i){
              this.quality.add(FHIRObjectFactory.buildFromJSON('MolecularSequenceQuality', i));
            });
          } else {
            // this handles the case when the list only has one object and does not return as a list
            var i = json['quality'];
            this.quality.add(FHIRObjectFactory.buildFromJSON('MolecularSequenceQuality', i));
          }          
        }
        this.readCoverage = json['readCoverage'];
        this.extReadCoverage = json['_readCoverage'] == null ? null : FHIRObjectFactory.buildFromJSON('Element', json['_readCoverage']);
        this.repository = List<MolecularSequenceRepository>();
        if (json['repository'] != null && json['repository'].length > 0) {
          if( json['repository'] is List ){
            json['repository'].forEach((i){
              this.repository.add(FHIRObjectFactory.buildFromJSON('MolecularSequenceRepository', i));
            });
          } else {
            // this handles the case when the list only has one object and does not return as a list
            var i = json['repository'];
            this.repository.add(FHIRObjectFactory.buildFromJSON('MolecularSequenceRepository', i));
          }          
        }
        this.pointer = List<Reference>();
        if (json['pointer'] != null && json['pointer'].length > 0) {
          if( json['pointer'] is List ){
            json['pointer'].forEach((i){
              this.pointer.add(FHIRObjectFactory.buildFromJSON('Reference', i));
            });
          } else {
            // this handles the case when the list only has one object and does not return as a list
            var i = json['pointer'];
            this.pointer.add(FHIRObjectFactory.buildFromJSON('Reference', i));
          }          
        }
        this.structureVariant = List<MolecularSequenceStructureVariant>();
        if (json['structureVariant'] != null && json['structureVariant'].length > 0) {
          if( json['structureVariant'] is List ){
            json['structureVariant'].forEach((i){
              this.structureVariant.add(FHIRObjectFactory.buildFromJSON('MolecularSequenceStructureVariant', i));
            });
          } else {
            // this handles the case when the list only has one object and does not return as a list
            var i = json['structureVariant'];
            this.structureVariant.add(FHIRObjectFactory.buildFromJSON('MolecularSequenceStructureVariant', i));
          }          
        }
    }
}
