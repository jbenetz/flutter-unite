import 'meta.dart';
import 'fhir_object_factory.dart';
import 'element.dart';
import 'narrative.dart';
import 'extension.dart';
import 'codeable_concept.dart';
import 'identifier.dart';
import 'substance_source_material_fraction_description.dart';
import 'substance_source_material_organism.dart';
import 'substance_source_material_part_description.dart';
/// Source material shall capture information on the taxonomic and anatomical origins as well as the fraction of a material that can result in or can be modified to form a substance. This set of data elements shall be used to define polymer substances isolated from biological matrices. Taxonomic and anatomical origins shall be described using a controlled vocabulary as required. This information is captured for naturally derived polymers ( . starch) and structurally diverse substances. For Organisms belonging to the Kingdom Plantae the Substance level defines the fresh material of a single species or infraspecies, the Herbal Drug and the Herbal preparation. For Herbal preparations, the fraction information will be captured at the Substance information level and additional information for herbal extracts will be captured at the Specified Substance Group 1 information level. See for further explanation the Substance Class: Structurally Diverse and the herbal annex.
class SubstanceSourceMaterial {
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
    /// General high level classification of the source material specific to the origin of the material.
    CodeableConcept sourceMaterialClass;
    /// The type of the source material shall be specified based on a controlled vocabulary. For vaccines, this subclause refers to the class of infectious agent.
    CodeableConcept sourceMaterialType;
    /// The state of the source material when extracted.
    CodeableConcept sourceMaterialState;
    /// The unique identifier associated with the source material parent organism shall be specified.
    Identifier organismId;
    /// The organism accepted Scientific name shall be provided based on the organism taxonomy.
    String organismName;
    /// Extensions for organismName
    Element extOrganismName;
    /// The parent of the herbal drug Ginkgo biloba, Leaf is the substance ID of the substance (fresh) of Ginkgo biloba L. or Ginkgo biloba L. (Whole plant).
    List<Identifier> parentSubstanceId;
    /// The parent substance of the Herbal Drug, or Herbal preparation.
    List<String> parentSubstanceName;
    /// Extensions for parentSubstanceName
    List<Element> extParentSubstanceName;
    /// The country where the plant material is harvested or the countries where the plasma is sourced from as laid down in accordance with the Plasma Master File. For “Plasma-derived substances” the attribute country of origin provides information about the countries used for the manufacturing of the Cryopoor plama or Crioprecipitate.
    List<CodeableConcept> countryOfOrigin;
    /// The place/region where the plant is harvested or the places/regions where the animal source material has its habitat.
    List<String> geographicalLocation;
    /// Extensions for geographicalLocation
    List<Element> extGeographicalLocation;
    /// Stage of life for animals, plants, insects and microorganisms. This information shall be provided only when the substance is significantly different in these stages (e.g. foetal bovine serum).
    CodeableConcept developmentStage;
    /// Many complex materials are fractions of parts of plants, animals, or minerals. Fraction elements are often necessary to define both Substances and Specified Group 1 Substances. For substances derived from Plants, fraction information will be captured at the Substance information level ( . Oils, Juices and Exudates). Additional information for Extracts, such as extraction solvent composition, will be captured at the Specified Substance Group 1 information level. For plasma-derived products fraction information will be captured at the Substance and the Specified Substance Group 1 levels.
    List<SubstanceSourceMaterialFractionDescription> fractionDescription;
    /// This subclause describes the organism which the substance is derived from. For vaccines, the parent organism shall be specified based on these subclause elements. As an example, full taxonomy will be described for the Substance Name: ., Leaf.
    SubstanceSourceMaterialOrganism organism;
    /// To do.
    List<SubstanceSourceMaterialPartDescription> partDescription;
 
    SubstanceSourceMaterial.fromJSON( Map json ){
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
        this.sourceMaterialClass = json['sourceMaterialClass'] == null ? null : FHIRObjectFactory.buildFromJSON('CodeableConcept', json['sourceMaterialClass']);
        this.sourceMaterialType = json['sourceMaterialType'] == null ? null : FHIRObjectFactory.buildFromJSON('CodeableConcept', json['sourceMaterialType']);
        this.sourceMaterialState = json['sourceMaterialState'] == null ? null : FHIRObjectFactory.buildFromJSON('CodeableConcept', json['sourceMaterialState']);
        this.organismId = json['organismId'] == null ? null : FHIRObjectFactory.buildFromJSON('Identifier', json['organismId']);
        this.organismName = json['organismName'];
        this.extOrganismName = json['_organismName'] == null ? null : FHIRObjectFactory.buildFromJSON('Element', json['_organismName']);
        this.parentSubstanceId = List<Identifier>();
        if (json['parentSubstanceId'] != null && json['parentSubstanceId'].length > 0) {
          if( json['parentSubstanceId'] is List ){
            json['parentSubstanceId'].forEach((i){
              this.parentSubstanceId.add(FHIRObjectFactory.buildFromJSON('Identifier', i));
            });
          } else {
            // this handles the case when the list only has one object and does not return as a list
            var i = json['parentSubstanceId'];
            this.parentSubstanceId.add(FHIRObjectFactory.buildFromJSON('Identifier', i));
          }          
        }
        this.parentSubstanceName = List<String>();
        if (json['parentSubstanceName'] != null && json['parentSubstanceName'].length > 0) {
          if( json['parentSubstanceName'] is List ){
            json['parentSubstanceName'].forEach((i){
              this.parentSubstanceName.add(i);
            });
          } else {
            // this handles the case when the list only has one object and does not return as a list
            var i = json['parentSubstanceName'];
            this.parentSubstanceName.add(i);
          }          
        }
        this.extParentSubstanceName = List<Element>();
        if (json['_parentSubstanceName'] != null && json['_parentSubstanceName'].length > 0) {
          if( json['_parentSubstanceName'] is List ){
            json['_parentSubstanceName'].forEach((i){
              this.extParentSubstanceName.add(FHIRObjectFactory.buildFromJSON('Element', i));
            });
          } else {
            // this handles the case when the list only has one object and does not return as a list
            var i = json['_parentSubstanceName'];
            this.extParentSubstanceName.add(FHIRObjectFactory.buildFromJSON('Element', i));
          }          
        }
        this.countryOfOrigin = List<CodeableConcept>();
        if (json['countryOfOrigin'] != null && json['countryOfOrigin'].length > 0) {
          if( json['countryOfOrigin'] is List ){
            json['countryOfOrigin'].forEach((i){
              this.countryOfOrigin.add(FHIRObjectFactory.buildFromJSON('CodeableConcept', i));
            });
          } else {
            // this handles the case when the list only has one object and does not return as a list
            var i = json['countryOfOrigin'];
            this.countryOfOrigin.add(FHIRObjectFactory.buildFromJSON('CodeableConcept', i));
          }          
        }
        this.geographicalLocation = List<String>();
        if (json['geographicalLocation'] != null && json['geographicalLocation'].length > 0) {
          if( json['geographicalLocation'] is List ){
            json['geographicalLocation'].forEach((i){
              this.geographicalLocation.add(i);
            });
          } else {
            // this handles the case when the list only has one object and does not return as a list
            var i = json['geographicalLocation'];
            this.geographicalLocation.add(i);
          }          
        }
        this.extGeographicalLocation = List<Element>();
        if (json['_geographicalLocation'] != null && json['_geographicalLocation'].length > 0) {
          if( json['_geographicalLocation'] is List ){
            json['_geographicalLocation'].forEach((i){
              this.extGeographicalLocation.add(FHIRObjectFactory.buildFromJSON('Element', i));
            });
          } else {
            // this handles the case when the list only has one object and does not return as a list
            var i = json['_geographicalLocation'];
            this.extGeographicalLocation.add(FHIRObjectFactory.buildFromJSON('Element', i));
          }          
        }
        this.developmentStage = json['developmentStage'] == null ? null : FHIRObjectFactory.buildFromJSON('CodeableConcept', json['developmentStage']);
        this.fractionDescription = List<SubstanceSourceMaterialFractionDescription>();
        if (json['fractionDescription'] != null && json['fractionDescription'].length > 0) {
          if( json['fractionDescription'] is List ){
            json['fractionDescription'].forEach((i){
              this.fractionDescription.add(FHIRObjectFactory.buildFromJSON('SubstanceSourceMaterialFractionDescription', i));
            });
          } else {
            // this handles the case when the list only has one object and does not return as a list
            var i = json['fractionDescription'];
            this.fractionDescription.add(FHIRObjectFactory.buildFromJSON('SubstanceSourceMaterialFractionDescription', i));
          }          
        }
        this.organism = json['organism'] == null ? null : FHIRObjectFactory.buildFromJSON('SubstanceSourceMaterialOrganism', json['organism']);
        this.partDescription = List<SubstanceSourceMaterialPartDescription>();
        if (json['partDescription'] != null && json['partDescription'].length > 0) {
          if( json['partDescription'] is List ){
            json['partDescription'].forEach((i){
              this.partDescription.add(FHIRObjectFactory.buildFromJSON('SubstanceSourceMaterialPartDescription', i));
            });
          } else {
            // this handles the case when the list only has one object and does not return as a list
            var i = json['partDescription'];
            this.partDescription.add(FHIRObjectFactory.buildFromJSON('SubstanceSourceMaterialPartDescription', i));
          }          
        }
    }
}
