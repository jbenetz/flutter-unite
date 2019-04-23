import 'extension.dart';
import 'fhir_object_factory.dart';
import 'element.dart';
import 'operation_definition_binding.dart';
import 'operation_definition_referenced_from.dart';

/// A formal computable definition of an operation (on the RESTful interface) or a named query (using the search interaction).
class OperationDefinitionParameter {
  /// Unique id for the element within a resource (for internal references). This may be any string value that does not contain spaces.
  String id;

  /// May be used to represent additional information that is not part of the basic definition of the element. To make the use of extensions safe and manageable, there is a strict set of governance  applied to the definition and use of extensions. Though any implementer can define an extension, there is a set of requirements that SHALL be met as part of the definition of the extension.
  List<Extension> extension;

  /// May be used to represent additional information that is not part of the basic definition of the element and that modifies the understanding of the element in which it is contained and/or the understanding of the containing element's descendants. Usually modifier elements provide negation or qualification. To make the use of extensions safe and manageable, there is a strict set of governance applied to the definition and use of extensions. Though any implementer can define an extension, there is a set of requirements that SHALL be met as part of the definition of the extension. Applications processing a resource are required to check for modifier extensions.
  ///
  /// Modifier extensions SHALL NOT change the meaning of any elements on Resource or DomainResource (including cannot change the meaning of modifierExtension itself).
  List<Extension> modifierExtension;

  /// The name of used to identify the parameter.
  String name;

  /// Extensions for name
  Element extName;

  /// Whether this is an input or an output parameter.
  String use;

  /// Extensions for use
  Element extUse;

  /// The minimum number of times this parameter SHALL appear in the request or response.
  int min;

  /// Extensions for min
  Element extMin;

  /// The maximum number of times this element is permitted to appear in the request or response.
  String max;

  /// Extensions for max
  Element extMax;

  /// Describes the meaning or use of this parameter.
  String documentation;

  /// Extensions for documentation
  Element extDocumentation;

  /// The type for this parameter.
  String type;

  /// Extensions for type
  Element extType;

  /// Used when the type is "Reference" or "canonical", and identifies a profile structure or implementation Guide that applies to the target of the reference this parameter refers to. If any profiles are specified, then the content must conform to at least one of them. The URL can be a local reference - to a contained StructureDefinition, or a reference to another StructureDefinition or Implementation Guide by a canonical URL. When an implementation guide is specified, the target resource SHALL conform to at least one profile defined in the implementation guide.
  List<String> targetProfile;

  /// How the parameter is understood as a search parameter. This is only used if the parameter type is 'string'.
  String searchType;

  /// Extensions for searchType
  Element extSearchType;

  /// Binds to a value set if this parameter is coded (code, Coding, CodeableConcept).
  OperationDefinitionBinding binding;

  /// Identifies other resource parameters within the operation invocation that are expected to resolve to this resource.
  List<OperationDefinitionReferencedFrom> referencedFrom;

  /// The parts of a nested Parameter.
  List<OperationDefinitionParameter> part;

  OperationDefinitionParameter.fromJSON(Map json) {
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
    this.use = json['use'];
    this.extUse = json['_use'] == null
        ? null
        : FHIRObjectFactory.buildFromJSON('Element', json['_use']);
    this.min = json['min'];
    this.extMin = json['_min'] == null
        ? null
        : FHIRObjectFactory.buildFromJSON('Element', json['_min']);
    this.max = json['max'];
    this.extMax = json['_max'] == null
        ? null
        : FHIRObjectFactory.buildFromJSON('Element', json['_max']);
    this.documentation = json['documentation'];
    this.extDocumentation = json['_documentation'] == null
        ? null
        : FHIRObjectFactory.buildFromJSON('Element', json['_documentation']);
    this.type = json['type'];
    this.extType = json['_type'] == null
        ? null
        : FHIRObjectFactory.buildFromJSON('Element', json['_type']);
    this.targetProfile = List<String>();
    if (json['targetProfile'] != null && json['targetProfile'].length > 0) {
      if (json['targetProfile'] is List) {
        json['targetProfile'].forEach((i) {
          this.targetProfile.add(i);
        });
      } else {
        // this handles the case when the list only has one object and does not return as a list
        var i = json['targetProfile'];
        this.targetProfile.add(i);
      }
    }
    this.searchType = json['searchType'];
    this.extSearchType = json['_searchType'] == null
        ? null
        : FHIRObjectFactory.buildFromJSON('Element', json['_searchType']);
    this.binding = json['binding'] == null
        ? null
        : FHIRObjectFactory.buildFromJSON(
            'OperationDefinitionBinding', json['binding']);
    this.referencedFrom = List<OperationDefinitionReferencedFrom>();
    if (json['referencedFrom'] != null && json['referencedFrom'].length > 0) {
      if (json['referencedFrom'] is List) {
        json['referencedFrom'].forEach((i) {
          this.referencedFrom.add(FHIRObjectFactory.buildFromJSON(
              'OperationDefinitionReferencedFrom', i));
        });
      } else {
        // this handles the case when the list only has one object and does not return as a list
        var i = json['referencedFrom'];
        this.referencedFrom.add(FHIRObjectFactory.buildFromJSON(
            'OperationDefinitionReferencedFrom', i));
      }
    }
    this.part = List<OperationDefinitionParameter>();
    if (json['part'] != null && json['part'].length > 0) {
      if (json['part'] is List) {
        json['part'].forEach((i) {
          this.part.add(FHIRObjectFactory.buildFromJSON(
              'OperationDefinitionParameter', i));
        });
      } else {
        // this handles the case when the list only has one object and does not return as a list
        var i = json['part'];
        this.part.add(
            FHIRObjectFactory.buildFromJSON('OperationDefinitionParameter', i));
      }
    }
  }
}
