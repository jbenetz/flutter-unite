import 'meta.dart';
import 'fhir_object_factory.dart';
import 'element.dart';
import 'narrative.dart';
import 'extension.dart';
import 'codeable_concept.dart';
import 'substance_protein_subunit.dart';
/// A SubstanceProtein is defined as a single unit of a linear amino acid sequence, or a combination of subunits that are either covalently linked or have a defined invariant stoichiometric relationship. This includes all synthetic, recombinant and purified SubstanceProteins of defined sequence, whether the use is therapeutic or prophylactic. This set of elements will be used to describe albumins, coagulation factors, cytokines, growth factors, peptide/SubstanceProtein hormones, enzymes, toxins, toxoids, recombinant vaccines, and immunomodulators.
class SubstanceProtein {
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
    /// The SubstanceProtein descriptive elements will only be used when a complete or partial amino acid sequence is available or derivable from a nucleic acid sequence.
    CodeableConcept sequenceType;
    /// Number of linear sequences of amino acids linked through peptide bonds. The number of subunits constituting the SubstanceProtein shall be described. It is possible that the number of subunits can be variable.
    int numberOfSubunits;
    /// Extensions for numberOfSubunits
    Element extNumberOfSubunits;
    /// The disulphide bond between two cysteine residues either on the same subunit or on two different subunits shall be described. The position of the disulfide bonds in the SubstanceProtein shall be listed in increasing order of subunit number and position within subunit followed by the abbreviation of the amino acids involved. The disulfide linkage positions shall actually contain the amino acid Cysteine at the respective positions.
    List<String> disulfideLinkage;
    /// Extensions for disulfideLinkage
    List<Element> extDisulfideLinkage;
    /// This subclause refers to the description of each subunit constituting the SubstanceProtein. A subunit is a linear sequence of amino acids linked through peptide bonds. The Subunit information shall be provided when the finished SubstanceProtein is a complex of multiple sequences; subunits are not used to delineate domains within a single sequence. Subunits are listed in order of decreasing length; sequences of the same length will be ordered by decreasing molecular weight; subunits that have identical sequences will be repeated multiple times.
    List<SubstanceProteinSubunit> subunit;
 
    SubstanceProtein.fromJSON( Map json ){
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
        this.disulfideLinkage = List<String>();
        if (json['disulfideLinkage'] != null && json['disulfideLinkage'].length > 0) {
          if( json['disulfideLinkage'] is List ){
            json['disulfideLinkage'].forEach((i){
              this.disulfideLinkage.add(i);
            });
          } else {
            // this handles the case when the list only has one object and does not return as a list
            var i = json['disulfideLinkage'];
            this.disulfideLinkage.add(i);
          }          
        }
        this.extDisulfideLinkage = List<Element>();
        if (json['_disulfideLinkage'] != null && json['_disulfideLinkage'].length > 0) {
          if( json['_disulfideLinkage'] is List ){
            json['_disulfideLinkage'].forEach((i){
              this.extDisulfideLinkage.add(FHIRObjectFactory.buildFromJSON('Element', i));
            });
          } else {
            // this handles the case when the list only has one object and does not return as a list
            var i = json['_disulfideLinkage'];
            this.extDisulfideLinkage.add(FHIRObjectFactory.buildFromJSON('Element', i));
          }          
        }
        this.subunit = List<SubstanceProteinSubunit>();
        if (json['subunit'] != null && json['subunit'].length > 0) {
          if( json['subunit'] is List ){
            json['subunit'].forEach((i){
              this.subunit.add(FHIRObjectFactory.buildFromJSON('SubstanceProteinSubunit', i));
            });
          } else {
            // this handles the case when the list only has one object and does not return as a list
            var i = json['subunit'];
            this.subunit.add(FHIRObjectFactory.buildFromJSON('SubstanceProteinSubunit', i));
          }          
        }
    }
}
