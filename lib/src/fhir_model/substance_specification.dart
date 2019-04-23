import 'meta.dart';
import 'fhir_object_factory.dart';
import 'element.dart';
import 'narrative.dart';
import 'extension.dart';
import 'identifier.dart';
import 'codeable_concept.dart';
import 'reference.dart';
import 'substance_specification_moiety.dart';
import 'substance_specification_property.dart';
import 'substance_specification_structure.dart';
import 'substance_specification_code.dart';
import 'substance_specification_name.dart';
import 'substance_specification_molecular_weight.dart';
import 'substance_specification_relationship.dart';
/// The detailed description of a substance, typically at a level beyond what is used for prescribing.
class SubstanceSpecification {
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
    /// Identifier by which this substance is known.
    Identifier identifier;
    /// High level categorization, e.g. polymer or nucleic acid.
    CodeableConcept type;
    /// Status of substance within the catalogue e.g. approved.
    CodeableConcept status;
    /// If the substance applies to only human or veterinary use.
    CodeableConcept domain;
    /// Textual description of the substance.
    String description;
    /// Extensions for description
    Element extDescription;
    /// Supporting literature.
    List<Reference> source;
    /// Textual comment about this record of a substance.
    String comment;
    /// Extensions for comment
    Element extComment;
    /// Moiety, for structural modifications.
    List<SubstanceSpecificationMoiety> moiety;
    /// General specifications for this substance, including how it is related to other substances.
    List<SubstanceSpecificationProperty> property;
    /// General information detailing this substance.
    Reference referenceInformation;
    /// Structural information.
    SubstanceSpecificationStructure structure;
    /// Codes associated with the substance.
    List<SubstanceSpecificationCode> code;
    /// Names applicable to this substance.
    List<SubstanceSpecificationName> name;
    /// The molecular weight or weight range (for proteins, polymers or nucleic acids).
    List<SubstanceSpecificationMolecularWeight> molecularWeight;
    /// A link between this substance and another, with details of the relationship.
    List<SubstanceSpecificationRelationship> relationship;
    /// Data items specific to nucleic acids.
    Reference nucleicAcid;
    /// Data items specific to polymers.
    Reference polymer;
    /// Data items specific to proteins.
    Reference protein;
    /// Material or taxonomic/anatomical source for the substance.
    Reference sourceMaterial;
 
    SubstanceSpecification.fromJSON( Map json ){
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
        this.identifier = json['identifier'] == null ? null : FHIRObjectFactory.buildFromJSON('Identifier', json['identifier']);
        this.type = json['type'] == null ? null : FHIRObjectFactory.buildFromJSON('CodeableConcept', json['type']);
        this.status = json['status'] == null ? null : FHIRObjectFactory.buildFromJSON('CodeableConcept', json['status']);
        this.domain = json['domain'] == null ? null : FHIRObjectFactory.buildFromJSON('CodeableConcept', json['domain']);
        this.description = json['description'];
        this.extDescription = json['_description'] == null ? null : FHIRObjectFactory.buildFromJSON('Element', json['_description']);
        this.source = List<Reference>();
        if (json['source'] != null && json['source'].length > 0) {
          if( json['source'] is List ){
            json['source'].forEach((i){
              this.source.add(FHIRObjectFactory.buildFromJSON('Reference', i));
            });
          } else {
            // this handles the case when the list only has one object and does not return as a list
            var i = json['source'];
            this.source.add(FHIRObjectFactory.buildFromJSON('Reference', i));
          }          
        }
        this.comment = json['comment'];
        this.extComment = json['_comment'] == null ? null : FHIRObjectFactory.buildFromJSON('Element', json['_comment']);
        this.moiety = List<SubstanceSpecificationMoiety>();
        if (json['moiety'] != null && json['moiety'].length > 0) {
          if( json['moiety'] is List ){
            json['moiety'].forEach((i){
              this.moiety.add(FHIRObjectFactory.buildFromJSON('SubstanceSpecificationMoiety', i));
            });
          } else {
            // this handles the case when the list only has one object and does not return as a list
            var i = json['moiety'];
            this.moiety.add(FHIRObjectFactory.buildFromJSON('SubstanceSpecificationMoiety', i));
          }          
        }
        this.property = List<SubstanceSpecificationProperty>();
        if (json['property'] != null && json['property'].length > 0) {
          if( json['property'] is List ){
            json['property'].forEach((i){
              this.property.add(FHIRObjectFactory.buildFromJSON('SubstanceSpecificationProperty', i));
            });
          } else {
            // this handles the case when the list only has one object and does not return as a list
            var i = json['property'];
            this.property.add(FHIRObjectFactory.buildFromJSON('SubstanceSpecificationProperty', i));
          }          
        }
        this.referenceInformation = json['referenceInformation'] == null ? null : FHIRObjectFactory.buildFromJSON('Reference', json['referenceInformation']);
        this.structure = json['structure'] == null ? null : FHIRObjectFactory.buildFromJSON('SubstanceSpecificationStructure', json['structure']);
        this.code = List<SubstanceSpecificationCode>();
        if (json['code'] != null && json['code'].length > 0) {
          if( json['code'] is List ){
            json['code'].forEach((i){
              this.code.add(FHIRObjectFactory.buildFromJSON('SubstanceSpecificationCode', i));
            });
          } else {
            // this handles the case when the list only has one object and does not return as a list
            var i = json['code'];
            this.code.add(FHIRObjectFactory.buildFromJSON('SubstanceSpecificationCode', i));
          }          
        }
        this.name = List<SubstanceSpecificationName>();
        if (json['name'] != null && json['name'].length > 0) {
          if( json['name'] is List ){
            json['name'].forEach((i){
              this.name.add(FHIRObjectFactory.buildFromJSON('SubstanceSpecificationName', i));
            });
          } else {
            // this handles the case when the list only has one object and does not return as a list
            var i = json['name'];
            this.name.add(FHIRObjectFactory.buildFromJSON('SubstanceSpecificationName', i));
          }          
        }
        this.molecularWeight = List<SubstanceSpecificationMolecularWeight>();
        if (json['molecularWeight'] != null && json['molecularWeight'].length > 0) {
          if( json['molecularWeight'] is List ){
            json['molecularWeight'].forEach((i){
              this.molecularWeight.add(FHIRObjectFactory.buildFromJSON('SubstanceSpecificationMolecularWeight', i));
            });
          } else {
            // this handles the case when the list only has one object and does not return as a list
            var i = json['molecularWeight'];
            this.molecularWeight.add(FHIRObjectFactory.buildFromJSON('SubstanceSpecificationMolecularWeight', i));
          }          
        }
        this.relationship = List<SubstanceSpecificationRelationship>();
        if (json['relationship'] != null && json['relationship'].length > 0) {
          if( json['relationship'] is List ){
            json['relationship'].forEach((i){
              this.relationship.add(FHIRObjectFactory.buildFromJSON('SubstanceSpecificationRelationship', i));
            });
          } else {
            // this handles the case when the list only has one object and does not return as a list
            var i = json['relationship'];
            this.relationship.add(FHIRObjectFactory.buildFromJSON('SubstanceSpecificationRelationship', i));
          }          
        }
        this.nucleicAcid = json['nucleicAcid'] == null ? null : FHIRObjectFactory.buildFromJSON('Reference', json['nucleicAcid']);
        this.polymer = json['polymer'] == null ? null : FHIRObjectFactory.buildFromJSON('Reference', json['polymer']);
        this.protein = json['protein'] == null ? null : FHIRObjectFactory.buildFromJSON('Reference', json['protein']);
        this.sourceMaterial = json['sourceMaterial'] == null ? null : FHIRObjectFactory.buildFromJSON('Reference', json['sourceMaterial']);
    }
}
