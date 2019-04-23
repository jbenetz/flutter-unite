import 'extension.dart';
import 'fhir_object_factory.dart';
import 'element.dart';
import 'value_set_designation.dart';

/// A ValueSet resource instance specifies a set of codes drawn from one or more code systems, intended for use in a particular context. Value sets link between [[[CodeSystem]]] definitions and their use in [coded elements](terminologies.html).
class ValueSetContains {
  /// Unique id for the element within a resource (for internal references). This may be any string value that does not contain spaces.
  String id;

  /// May be used to represent additional information that is not part of the basic definition of the element. To make the use of extensions safe and manageable, there is a strict set of governance  applied to the definition and use of extensions. Though any implementer can define an extension, there is a set of requirements that SHALL be met as part of the definition of the extension.
  List<Extension> extension;

  /// May be used to represent additional information that is not part of the basic definition of the element and that modifies the understanding of the element in which it is contained and/or the understanding of the containing element's descendants. Usually modifier elements provide negation or qualification. To make the use of extensions safe and manageable, there is a strict set of governance applied to the definition and use of extensions. Though any implementer can define an extension, there is a set of requirements that SHALL be met as part of the definition of the extension. Applications processing a resource are required to check for modifier extensions.
  ///
  /// Modifier extensions SHALL NOT change the meaning of any elements on Resource or DomainResource (including cannot change the meaning of modifierExtension itself).
  List<Extension> modifierExtension;

  /// An absolute URI which is the code system in which the code for this item in the expansion is defined.
  String system;

  /// Extensions for system
  Element extSystem;

  /// If true, this entry is included in the expansion for navigational purposes, and the user cannot select the code directly as a proper value.
  bool abstract;

  /// Extensions for abstract
  Element extAbstract;

  /// If the concept is inactive in the code system that defines it. Inactive codes are those that are no longer to be used, but are maintained by the code system for understanding legacy data. It might not be known or specified whether an concept is inactive (and it may depend on the context of use).
  bool inactive;

  /// Extensions for inactive
  Element extInactive;

  /// The version of the code system from this code was taken. Note that a well-maintained code system does not need the version reported, because the meaning of codes is consistent across versions. However this cannot consistently be assured, and when the meaning is not guaranteed to be consistent, the version SHOULD be exchanged.
  String version;

  /// Extensions for version
  Element extVersion;

  /// The code for this item in the expansion hierarchy. If this code is missing the entry in the hierarchy is a place holder (abstract) and does not represent a valid code in the value set.
  String code;

  /// Extensions for code
  Element extCode;

  /// The recommended display for this item in the expansion.
  String display;

  /// Extensions for display
  Element extDisplay;

  /// Additional representations for this item - other languages, aliases, specialized purposes, used for particular purposes, etc. These are relevant when the conditions of the expansion do not fix to a single correct representation.
  List<ValueSetDesignation> designation;

  /// Other codes and entries contained under this entry in the hierarchy.
  List<ValueSetContains> contains;

  ValueSetContains.fromJSON(Map json) {
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
    this.system = json['system'];
    this.extSystem = json['_system'] == null
        ? null
        : FHIRObjectFactory.buildFromJSON('Element', json['_system']);
    this.abstract = json['abstract'];
    this.extAbstract = json['_abstract'] == null
        ? null
        : FHIRObjectFactory.buildFromJSON('Element', json['_abstract']);
    this.inactive = json['inactive'];
    this.extInactive = json['_inactive'] == null
        ? null
        : FHIRObjectFactory.buildFromJSON('Element', json['_inactive']);
    this.version = json['version'];
    this.extVersion = json['_version'] == null
        ? null
        : FHIRObjectFactory.buildFromJSON('Element', json['_version']);
    this.code = json['code'];
    this.extCode = json['_code'] == null
        ? null
        : FHIRObjectFactory.buildFromJSON('Element', json['_code']);
    this.display = json['display'];
    this.extDisplay = json['_display'] == null
        ? null
        : FHIRObjectFactory.buildFromJSON('Element', json['_display']);
    this.designation = List<ValueSetDesignation>();
    if (json['designation'] != null && json['designation'].length > 0) {
      if (json['designation'] is List) {
        json['designation'].forEach((i) {
          this
              .designation
              .add(FHIRObjectFactory.buildFromJSON('ValueSetDesignation', i));
        });
      } else {
        // this handles the case when the list only has one object and does not return as a list
        var i = json['designation'];
        this
            .designation
            .add(FHIRObjectFactory.buildFromJSON('ValueSetDesignation', i));
      }
    }
    this.contains = List<ValueSetContains>();
    if (json['contains'] != null && json['contains'].length > 0) {
      if (json['contains'] is List) {
        json['contains'].forEach((i) {
          this
              .contains
              .add(FHIRObjectFactory.buildFromJSON('ValueSetContains', i));
        });
      } else {
        // this handles the case when the list only has one object and does not return as a list
        var i = json['contains'];
        this
            .contains
            .add(FHIRObjectFactory.buildFromJSON('ValueSetContains', i));
      }
    }
  }
}
