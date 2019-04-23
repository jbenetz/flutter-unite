import 'extension.dart';
import 'fhir_object_factory.dart';
import 'element.dart';
import 'structure_map_source.dart';
import 'structure_map_target.dart';
import 'structure_map_dependent.dart';

/// A Map of relationships between 2 structures that can be used to transform data.
class StructureMapRule {
  /// Unique id for the element within a resource (for internal references). This may be any string value that does not contain spaces.
  String id;

  /// May be used to represent additional information that is not part of the basic definition of the element. To make the use of extensions safe and manageable, there is a strict set of governance  applied to the definition and use of extensions. Though any implementer can define an extension, there is a set of requirements that SHALL be met as part of the definition of the extension.
  List<Extension> extension;

  /// May be used to represent additional information that is not part of the basic definition of the element and that modifies the understanding of the element in which it is contained and/or the understanding of the containing element's descendants. Usually modifier elements provide negation or qualification. To make the use of extensions safe and manageable, there is a strict set of governance applied to the definition and use of extensions. Though any implementer can define an extension, there is a set of requirements that SHALL be met as part of the definition of the extension. Applications processing a resource are required to check for modifier extensions.
  ///
  /// Modifier extensions SHALL NOT change the meaning of any elements on Resource or DomainResource (including cannot change the meaning of modifierExtension itself).
  List<Extension> modifierExtension;

  /// Name of the rule for internal references.
  String name;

  /// Extensions for name
  Element extName;

  /// Source inputs to the mapping.
  List<StructureMapSource> source;

  /// Content to create because of this mapping rule.
  List<StructureMapTarget> target;

  /// Rules contained in this rule.
  List<StructureMapRule> rule;

  /// Which other rules to apply in the context of this rule.
  List<StructureMapDependent> dependent;

  /// Documentation for this instance of data.
  String documentation;

  /// Extensions for documentation
  Element extDocumentation;

  StructureMapRule.fromJSON(Map json) {
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
    this.source = List<StructureMapSource>();
    if (json['source'] != null && json['source'].length > 0) {
      if (json['source'] is List) {
        json['source'].forEach((i) {
          this
              .source
              .add(FHIRObjectFactory.buildFromJSON('StructureMapSource', i));
        });
      } else {
        // this handles the case when the list only has one object and does not return as a list
        var i = json['source'];
        this
            .source
            .add(FHIRObjectFactory.buildFromJSON('StructureMapSource', i));
      }
    }
    this.target = List<StructureMapTarget>();
    if (json['target'] != null && json['target'].length > 0) {
      if (json['target'] is List) {
        json['target'].forEach((i) {
          this
              .target
              .add(FHIRObjectFactory.buildFromJSON('StructureMapTarget', i));
        });
      } else {
        // this handles the case when the list only has one object and does not return as a list
        var i = json['target'];
        this
            .target
            .add(FHIRObjectFactory.buildFromJSON('StructureMapTarget', i));
      }
    }
    this.rule = List<StructureMapRule>();
    if (json['rule'] != null && json['rule'].length > 0) {
      if (json['rule'] is List) {
        json['rule'].forEach((i) {
          this.rule.add(FHIRObjectFactory.buildFromJSON('StructureMapRule', i));
        });
      } else {
        // this handles the case when the list only has one object and does not return as a list
        var i = json['rule'];
        this.rule.add(FHIRObjectFactory.buildFromJSON('StructureMapRule', i));
      }
    }
    this.dependent = List<StructureMapDependent>();
    if (json['dependent'] != null && json['dependent'].length > 0) {
      if (json['dependent'] is List) {
        json['dependent'].forEach((i) {
          this
              .dependent
              .add(FHIRObjectFactory.buildFromJSON('StructureMapDependent', i));
        });
      } else {
        // this handles the case when the list only has one object and does not return as a list
        var i = json['dependent'];
        this
            .dependent
            .add(FHIRObjectFactory.buildFromJSON('StructureMapDependent', i));
      }
    }
    this.documentation = json['documentation'];
    this.extDocumentation = json['_documentation'] == null
        ? null
        : FHIRObjectFactory.buildFromJSON('Element', json['_documentation']);
  }
}
