import 'extension.dart';
import 'fhir_object_factory.dart';
import 'element.dart';
import 'codeable_concept.dart';
import 'substance_specification_official.dart';
import 'reference.dart';

/// The detailed description of a substance, typically at a level beyond what is used for prescribing.
class SubstanceSpecificationName {
  /// Unique id for the element within a resource (for internal references). This may be any string value that does not contain spaces.
  String id;

  /// May be used to represent additional information that is not part of the basic definition of the element. To make the use of extensions safe and manageable, there is a strict set of governance  applied to the definition and use of extensions. Though any implementer can define an extension, there is a set of requirements that SHALL be met as part of the definition of the extension.
  List<Extension> extension;

  /// May be used to represent additional information that is not part of the basic definition of the element and that modifies the understanding of the element in which it is contained and/or the understanding of the containing element's descendants. Usually modifier elements provide negation or qualification. To make the use of extensions safe and manageable, there is a strict set of governance applied to the definition and use of extensions. Though any implementer can define an extension, there is a set of requirements that SHALL be met as part of the definition of the extension. Applications processing a resource are required to check for modifier extensions.
  ///
  /// Modifier extensions SHALL NOT change the meaning of any elements on Resource or DomainResource (including cannot change the meaning of modifierExtension itself).
  List<Extension> modifierExtension;

  /// The actual name.
  String name;

  /// Extensions for name
  Element extName;

  /// Name type.
  CodeableConcept type;

  /// The status of the name.
  CodeableConcept status;

  /// If this is the preferred name for this substance.
  bool preferred;

  /// Extensions for preferred
  Element extPreferred;

  /// Language of the name.
  List<CodeableConcept> language;

  /// The use context of this name for example if there is a different name a drug active ingredient as opposed to a food colour additive.
  List<CodeableConcept> domain;

  /// The jurisdiction where this name applies.
  List<CodeableConcept> jurisdiction;

  /// A synonym of this name.
  List<SubstanceSpecificationName> synonym;

  /// A translation for this name.
  List<SubstanceSpecificationName> translation;

  /// Details of the official nature of this name.
  List<SubstanceSpecificationOfficial> official;

  /// Supporting literature.
  List<Reference> source;

  SubstanceSpecificationName.fromJSON(Map json) {
    this.id = json['id'];
    this.extension = List<Extension>();
    if (json['extension'] != null && json['extension'].length > 0) {
      if (json['extension'] is List) {
        json['extension'].forEach((i) {
          this.extension.add(FHIRObjectFactory.buildFromJSON('Extension', i));
        });
      } else {
        // this handles the case when the list only has one object and does not return as a list
        var i = json['extension'];
        this.extension.add(FHIRObjectFactory.buildFromJSON('Extension', i));
      }
    }
    this.modifierExtension = List<Extension>();
    if (json['modifierExtension'] != null &&
        json['modifierExtension'].length > 0) {
      if (json['modifierExtension'] is List) {
        json['modifierExtension'].forEach((i) {
          this
              .modifierExtension
              .add(FHIRObjectFactory.buildFromJSON('Extension', i));
        });
      } else {
        // this handles the case when the list only has one object and does not return as a list
        var i = json['modifierExtension'];
        this
            .modifierExtension
            .add(FHIRObjectFactory.buildFromJSON('Extension', i));
      }
    }
    this.name = json['name'];
    this.extName = json['_name'] == null
        ? null
        : FHIRObjectFactory.buildFromJSON('Element', json['_name']);
    this.type = json['type'] == null
        ? null
        : FHIRObjectFactory.buildFromJSON('CodeableConcept', json['type']);
    this.status = json['status'] == null
        ? null
        : FHIRObjectFactory.buildFromJSON('CodeableConcept', json['status']);
    this.preferred = json['preferred'];
    this.extPreferred = json['_preferred'] == null
        ? null
        : FHIRObjectFactory.buildFromJSON('Element', json['_preferred']);
    this.language = List<CodeableConcept>();
    if (json['language'] != null && json['language'].length > 0) {
      if (json['language'] is List) {
        json['language'].forEach((i) {
          this
              .language
              .add(FHIRObjectFactory.buildFromJSON('CodeableConcept', i));
        });
      } else {
        // this handles the case when the list only has one object and does not return as a list
        var i = json['language'];
        this
            .language
            .add(FHIRObjectFactory.buildFromJSON('CodeableConcept', i));
      }
    }
    this.domain = List<CodeableConcept>();
    if (json['domain'] != null && json['domain'].length > 0) {
      if (json['domain'] is List) {
        json['domain'].forEach((i) {
          this
              .domain
              .add(FHIRObjectFactory.buildFromJSON('CodeableConcept', i));
        });
      } else {
        // this handles the case when the list only has one object and does not return as a list
        var i = json['domain'];
        this.domain.add(FHIRObjectFactory.buildFromJSON('CodeableConcept', i));
      }
    }
    this.jurisdiction = List<CodeableConcept>();
    if (json['jurisdiction'] != null && json['jurisdiction'].length > 0) {
      if (json['jurisdiction'] is List) {
        json['jurisdiction'].forEach((i) {
          this
              .jurisdiction
              .add(FHIRObjectFactory.buildFromJSON('CodeableConcept', i));
        });
      } else {
        // this handles the case when the list only has one object and does not return as a list
        var i = json['jurisdiction'];
        this
            .jurisdiction
            .add(FHIRObjectFactory.buildFromJSON('CodeableConcept', i));
      }
    }
    this.synonym = List<SubstanceSpecificationName>();
    if (json['synonym'] != null && json['synonym'].length > 0) {
      if (json['synonym'] is List) {
        json['synonym'].forEach((i) {
          this.synonym.add(
              FHIRObjectFactory.buildFromJSON('SubstanceSpecificationName', i));
        });
      } else {
        // this handles the case when the list only has one object and does not return as a list
        var i = json['synonym'];
        this.synonym.add(
            FHIRObjectFactory.buildFromJSON('SubstanceSpecificationName', i));
      }
    }
    this.translation = List<SubstanceSpecificationName>();
    if (json['translation'] != null && json['translation'].length > 0) {
      if (json['translation'] is List) {
        json['translation'].forEach((i) {
          this.translation.add(
              FHIRObjectFactory.buildFromJSON('SubstanceSpecificationName', i));
        });
      } else {
        // this handles the case when the list only has one object and does not return as a list
        var i = json['translation'];
        this.translation.add(
            FHIRObjectFactory.buildFromJSON('SubstanceSpecificationName', i));
      }
    }
    this.official = List<SubstanceSpecificationOfficial>();
    if (json['official'] != null && json['official'].length > 0) {
      if (json['official'] is List) {
        json['official'].forEach((i) {
          this.official.add(FHIRObjectFactory.buildFromJSON(
              'SubstanceSpecificationOfficial', i));
        });
      } else {
        // this handles the case when the list only has one object and does not return as a list
        var i = json['official'];
        this.official.add(FHIRObjectFactory.buildFromJSON(
            'SubstanceSpecificationOfficial', i));
      }
    }
    this.source = List<Reference>();
    if (json['source'] != null && json['source'].length > 0) {
      if (json['source'] is List) {
        json['source'].forEach((i) {
          this.source.add(FHIRObjectFactory.buildFromJSON('Reference', i));
        });
      } else {
        // this handles the case when the list only has one object and does not return as a list
        var i = json['source'];
        this.source.add(FHIRObjectFactory.buildFromJSON('Reference', i));
      }
    }
  }
}
