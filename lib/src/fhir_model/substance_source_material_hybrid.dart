import 'extension.dart';
import 'fhir_object_factory.dart';
import 'element.dart';
import 'codeable_concept.dart';
/// Source material shall capture information on the taxonomic and anatomical origins as well as the fraction of a material that can result in or can be modified to form a substance. This set of data elements shall be used to define polymer substances isolated from biological matrices. Taxonomic and anatomical origins shall be described using a controlled vocabulary as required. This information is captured for naturally derived polymers ( . starch) and structurally diverse substances. For Organisms belonging to the Kingdom Plantae the Substance level defines the fresh material of a single species or infraspecies, the Herbal Drug and the Herbal preparation. For Herbal preparations, the fraction information will be captured at the Substance information level and additional information for herbal extracts will be captured at the Specified Substance Group 1 information level. See for further explanation the Substance Class: Structurally Diverse and the herbal annex.
class SubstanceSourceMaterialHybrid {
    /// Unique id for the element within a resource (for internal references). This may be any string value that does not contain spaces.
    String id;
    /// May be used to represent additional information that is not part of the basic definition of the element. To make the use of extensions safe and manageable, there is a strict set of governance  applied to the definition and use of extensions. Though any implementer can define an extension, there is a set of requirements that SHALL be met as part of the definition of the extension.
    List<Extension> extension;
    /// May be used to represent additional information that is not part of the basic definition of the element and that modifies the understanding of the element in which it is contained and/or the understanding of the containing element's descendants. Usually modifier elements provide negation or qualification. To make the use of extensions safe and manageable, there is a strict set of governance applied to the definition and use of extensions. Though any implementer can define an extension, there is a set of requirements that SHALL be met as part of the definition of the extension. Applications processing a resource are required to check for modifier extensions.
    /// 
    /// Modifier extensions SHALL NOT change the meaning of any elements on Resource or DomainResource (including cannot change the meaning of modifierExtension itself).
    List<Extension> modifierExtension;
    /// The identifier of the maternal species constituting the hybrid organism shall be specified based on a controlled vocabulary. For plants, the parents aren’t always known, and it is unlikely that it will be known which is maternal and which is paternal.
    String maternalOrganismId;
    /// Extensions for maternalOrganismId
    Element extMaternalOrganismId;
    /// The name of the maternal species constituting the hybrid organism shall be specified. For plants, the parents aren’t always known, and it is unlikely that it will be known which is maternal and which is paternal.
    String maternalOrganismName;
    /// Extensions for maternalOrganismName
    Element extMaternalOrganismName;
    /// The identifier of the paternal species constituting the hybrid organism shall be specified based on a controlled vocabulary.
    String paternalOrganismId;
    /// Extensions for paternalOrganismId
    Element extPaternalOrganismId;
    /// The name of the paternal species constituting the hybrid organism shall be specified.
    String paternalOrganismName;
    /// Extensions for paternalOrganismName
    Element extPaternalOrganismName;
    /// The hybrid type of an organism shall be specified.
    CodeableConcept hybridType;
 
    SubstanceSourceMaterialHybrid.fromJSON( Map json ){
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
        this.maternalOrganismId = json['maternalOrganismId'];
        this.extMaternalOrganismId = json['_maternalOrganismId'] == null ? null : FHIRObjectFactory.buildFromJSON('Element', json['_maternalOrganismId']);
        this.maternalOrganismName = json['maternalOrganismName'];
        this.extMaternalOrganismName = json['_maternalOrganismName'] == null ? null : FHIRObjectFactory.buildFromJSON('Element', json['_maternalOrganismName']);
        this.paternalOrganismId = json['paternalOrganismId'];
        this.extPaternalOrganismId = json['_paternalOrganismId'] == null ? null : FHIRObjectFactory.buildFromJSON('Element', json['_paternalOrganismId']);
        this.paternalOrganismName = json['paternalOrganismName'];
        this.extPaternalOrganismName = json['_paternalOrganismName'] == null ? null : FHIRObjectFactory.buildFromJSON('Element', json['_paternalOrganismName']);
        this.hybridType = json['hybridType'] == null ? null : FHIRObjectFactory.buildFromJSON('CodeableConcept', json['hybridType']);
    }
}
