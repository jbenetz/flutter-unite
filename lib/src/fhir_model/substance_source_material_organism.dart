import 'extension.dart';
import 'fhir_object_factory.dart';
import 'codeable_concept.dart';
import 'element.dart';
import 'substance_source_material_author.dart';
import 'substance_source_material_hybrid.dart';
import 'substance_source_material_organism_general.dart';
/// Source material shall capture information on the taxonomic and anatomical origins as well as the fraction of a material that can result in or can be modified to form a substance. This set of data elements shall be used to define polymer substances isolated from biological matrices. Taxonomic and anatomical origins shall be described using a controlled vocabulary as required. This information is captured for naturally derived polymers ( . starch) and structurally diverse substances. For Organisms belonging to the Kingdom Plantae the Substance level defines the fresh material of a single species or infraspecies, the Herbal Drug and the Herbal preparation. For Herbal preparations, the fraction information will be captured at the Substance information level and additional information for herbal extracts will be captured at the Specified Substance Group 1 information level. See for further explanation the Substance Class: Structurally Diverse and the herbal annex.
class SubstanceSourceMaterialOrganism {
    /// Unique id for the element within a resource (for internal references). This may be any string value that does not contain spaces.
    String id;
    /// May be used to represent additional information that is not part of the basic definition of the element. To make the use of extensions safe and manageable, there is a strict set of governance  applied to the definition and use of extensions. Though any implementer can define an extension, there is a set of requirements that SHALL be met as part of the definition of the extension.
    List<Extension> extension;
    /// May be used to represent additional information that is not part of the basic definition of the element and that modifies the understanding of the element in which it is contained and/or the understanding of the containing element's descendants. Usually modifier elements provide negation or qualification. To make the use of extensions safe and manageable, there is a strict set of governance applied to the definition and use of extensions. Though any implementer can define an extension, there is a set of requirements that SHALL be met as part of the definition of the extension. Applications processing a resource are required to check for modifier extensions.
    /// 
    /// Modifier extensions SHALL NOT change the meaning of any elements on Resource or DomainResource (including cannot change the meaning of modifierExtension itself).
    List<Extension> modifierExtension;
    /// The family of an organism shall be specified.
    CodeableConcept family;
    /// The genus of an organism shall be specified; refers to the Latin epithet of the genus element of the plant/animal scientific name; it is present in names for genera, species and infraspecies.
    CodeableConcept genus;
    /// The species of an organism shall be specified; refers to the Latin epithet of the species of the plant/animal; it is present in names for species and infraspecies.
    CodeableConcept species;
    /// The Intraspecific type of an organism shall be specified.
    CodeableConcept intraspecificType;
    /// The intraspecific description of an organism shall be specified based on a controlled vocabulary. For Influenza Vaccine, the intraspecific description shall contain the syntax of the antigen in line with the WHO convention.
    String intraspecificDescription;
    /// Extensions for intraspecificDescription
    Element extIntraspecificDescription;
    /// 4.9.13.6.1 Author type (Conditional).
    List<SubstanceSourceMaterialAuthor> author;
    /// 4.9.13.8.1 Hybrid species maternal organism ID (Optional).
    SubstanceSourceMaterialHybrid hybrid;
    /// 4.9.13.7.1 Kingdom (Conditional).
    SubstanceSourceMaterialOrganismGeneral organismGeneral;
 
    SubstanceSourceMaterialOrganism.fromJSON( Map json ){
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
        this.family = json['family'] == null ? null : FHIRObjectFactory.buildFromJSON('CodeableConcept', json['family']);
        this.genus = json['genus'] == null ? null : FHIRObjectFactory.buildFromJSON('CodeableConcept', json['genus']);
        this.species = json['species'] == null ? null : FHIRObjectFactory.buildFromJSON('CodeableConcept', json['species']);
        this.intraspecificType = json['intraspecificType'] == null ? null : FHIRObjectFactory.buildFromJSON('CodeableConcept', json['intraspecificType']);
        this.intraspecificDescription = json['intraspecificDescription'];
        this.extIntraspecificDescription = json['_intraspecificDescription'] == null ? null : FHIRObjectFactory.buildFromJSON('Element', json['_intraspecificDescription']);
        this.author = List<SubstanceSourceMaterialAuthor>();
        if (json['author'] != null && json['author'].length > 0) {
          if( json['author'] is List ){
            json['author'].forEach((i){
              this.author.add(FHIRObjectFactory.buildFromJSON('SubstanceSourceMaterialAuthor', i));
            });
          } else {
            // this handles the case when the list only has one object and does not return as a list
            var i = json['author'];
            this.author.add(FHIRObjectFactory.buildFromJSON('SubstanceSourceMaterialAuthor', i));
          }          
        }
        this.hybrid = json['hybrid'] == null ? null : FHIRObjectFactory.buildFromJSON('SubstanceSourceMaterialHybrid', json['hybrid']);
        this.organismGeneral = json['organismGeneral'] == null ? null : FHIRObjectFactory.buildFromJSON('SubstanceSourceMaterialOrganismGeneral', json['organismGeneral']);
    }
}
