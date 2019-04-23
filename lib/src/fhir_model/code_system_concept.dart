import 'extension.dart';
import 'fhir_object_factory.dart';
import 'element.dart';
import 'code_system_designation.dart';
import 'code_system_property1.dart';

/// The CodeSystem resource is used to declare the existence of and describe a code system or code system supplement and its key properties, and optionally define a part or all of its content.
class CodeSystemConcept {
  /// Unique id for the element within a resource (for internal references). This may be any string value that does not contain spaces.
  String id;

  /// May be used to represent additional information that is not part of the basic definition of the element. To make the use of extensions safe and manageable, there is a strict set of governance  applied to the definition and use of extensions. Though any implementer can define an extension, there is a set of requirements that SHALL be met as part of the definition of the extension.
  List<Extension> extension;

  /// May be used to represent additional information that is not part of the basic definition of the element and that modifies the understanding of the element in which it is contained and/or the understanding of the containing element's descendants. Usually modifier elements provide negation or qualification. To make the use of extensions safe and manageable, there is a strict set of governance applied to the definition and use of extensions. Though any implementer can define an extension, there is a set of requirements that SHALL be met as part of the definition of the extension. Applications processing a resource are required to check for modifier extensions.
  ///
  /// Modifier extensions SHALL NOT change the meaning of any elements on Resource or DomainResource (including cannot change the meaning of modifierExtension itself).
  List<Extension> modifierExtension;

  /// A code - a text symbol - that uniquely identifies the concept within the code system.
  String code;

  /// Extensions for code
  Element extCode;

  /// A human readable string that is the recommended default way to present this concept to a user.
  String display;

  /// Extensions for display
  Element extDisplay;

  /// The formal definition of the concept. The code system resource does not make formal definitions required, because of the prevalence of legacy systems. However, they are highly recommended, as without them there is no formal meaning associated with the concept.
  String definition;

  /// Extensions for definition
  Element extDefinition;

  /// Additional representations for the concept - other languages, aliases, specialized purposes, used for particular purposes, etc.
  List<CodeSystemDesignation> designation;

  /// A property value for this concept.
  List<CodeSystemProperty1> property;

  /// Defines children of a concept to produce a hierarchy of concepts. The nature of the relationships is variable (is-a/contains/categorizes) - see hierarchyMeaning.
  List<CodeSystemConcept> concept;

  CodeSystemConcept.fromJSON(Map json) {
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
    this.code = json['code'];
    this.extCode = json['_code'] == null
        ? null
        : FHIRObjectFactory.buildFromJSON('Element', json['_code']);
    this.display = json['display'];
    this.extDisplay = json['_display'] == null
        ? null
        : FHIRObjectFactory.buildFromJSON('Element', json['_display']);
    this.definition = json['definition'];
    this.extDefinition = json['_definition'] == null
        ? null
        : FHIRObjectFactory.buildFromJSON('Element', json['_definition']);
    this.designation = List<CodeSystemDesignation>();
    if (json['designation'] != null && json['designation'].length > 0) {
      if (json['designation'] is List) {
        json['designation'].forEach((i) {
          this
              .designation
              .add(FHIRObjectFactory.buildFromJSON('CodeSystemDesignation', i));
        });
      } else {
        // this handles the case when the list only has one object and does not return as a list
        var i = json['designation'];
        this
            .designation
            .add(FHIRObjectFactory.buildFromJSON('CodeSystemDesignation', i));
      }
    }
    this.property = List<CodeSystemProperty1>();
    if (json['property'] != null && json['property'].length > 0) {
      if (json['property'] is List) {
        json['property'].forEach((i) {
          this
              .property
              .add(FHIRObjectFactory.buildFromJSON('CodeSystemProperty1', i));
        });
      } else {
        // this handles the case when the list only has one object and does not return as a list
        var i = json['property'];
        this
            .property
            .add(FHIRObjectFactory.buildFromJSON('CodeSystemProperty1', i));
      }
    }
    this.concept = List<CodeSystemConcept>();
    if (json['concept'] != null && json['concept'].length > 0) {
      if (json['concept'] is List) {
        json['concept'].forEach((i) {
          this
              .concept
              .add(FHIRObjectFactory.buildFromJSON('CodeSystemConcept', i));
        });
      } else {
        // this handles the case when the list only has one object and does not return as a list
        var i = json['concept'];
        this
            .concept
            .add(FHIRObjectFactory.buildFromJSON('CodeSystemConcept', i));
      }
    }
  }
}
