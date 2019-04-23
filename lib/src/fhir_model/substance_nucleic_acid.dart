import 'meta.dart';
import 'fhir_object_factory.dart';
import 'element.dart';
import 'narrative.dart';
import 'extension.dart';
import 'codeable_concept.dart';
import 'substance_nucleic_acid_subunit.dart';
/// Nucleic acids are defined by three distinct elements: the base, sugar and linkage. Individual substance/moiety IDs will be created for each of these elements. The nucleotide sequence will be always entered in the 5’-3’ direction.
class SubstanceNucleicAcid {
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
    /// The type of the sequence shall be specified based on a controlled vocabulary.
    CodeableConcept sequenceType;
    /// The number of linear sequences of nucleotides linked through phosphodiester bonds shall be described. Subunits would be strands of nucleic acids that are tightly associated typically through Watson-Crick base pairing. NOTE: If not specified in the reference source, the assumption is that there is 1 subunit.
    int numberOfSubunits;
    /// Extensions for numberOfSubunits
    Element extNumberOfSubunits;
    /// The area of hybridisation shall be described if applicable for double stranded RNA or DNA. The number associated with the subunit followed by the number associated to the residue shall be specified in increasing order. The underscore “” shall be used as separator as follows: “Subunitnumber Residue”.
    String areaOfHybridisation;
    /// Extensions for areaOfHybridisation
    Element extAreaOfHybridisation;
    /// (TBC).
    CodeableConcept oligoNucleotideType;
    /// Subunits are listed in order of decreasing length; sequences of the same length will be ordered by molecular weight; subunits that have identical sequences will be repeated multiple times.
    List<SubstanceNucleicAcidSubunit> subunit;
 
    SubstanceNucleicAcid.fromJSON( Map json ){
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
        this.sequenceType = json['sequenceType'] == null ? null : FHIRObjectFactory.buildFromJSON('CodeableConcept', json['sequenceType']);
        this.numberOfSubunits = json['numberOfSubunits'];
        this.extNumberOfSubunits = json['_numberOfSubunits'] == null ? null : FHIRObjectFactory.buildFromJSON('Element', json['_numberOfSubunits']);
        this.areaOfHybridisation = json['areaOfHybridisation'];
        this.extAreaOfHybridisation = json['_areaOfHybridisation'] == null ? null : FHIRObjectFactory.buildFromJSON('Element', json['_areaOfHybridisation']);
        this.oligoNucleotideType = json['oligoNucleotideType'] == null ? null : FHIRObjectFactory.buildFromJSON('CodeableConcept', json['oligoNucleotideType']);
        this.subunit = List<SubstanceNucleicAcidSubunit>();
        if (json['subunit'] != null && json['subunit'].length > 0) {
          if( json['subunit'] is List ){
            json['subunit'].forEach((i){
              this.subunit.add(FHIRObjectFactory.buildFromJSON('SubstanceNucleicAcidSubunit', i));
            });
          } else {
            // this handles the case when the list only has one object and does not return as a list
            var i = json['subunit'];
            this.subunit.add(FHIRObjectFactory.buildFromJSON('SubstanceNucleicAcidSubunit', i));
          }          
        }
    }
}
