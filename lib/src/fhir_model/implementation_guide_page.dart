import 'extension.dart';
import 'fhir_object_factory.dart';
import 'element.dart';
import 'reference.dart';

/// A set of rules of how a particular interoperability or standards problem is solved - typically through the use of FHIR resources. This resource is used to gather all the parts of an implementation guide into a logical whole and to publish a computable definition of all the parts.
class ImplementationGuidePage {
  /// Unique id for the element within a resource (for internal references). This may be any string value that does not contain spaces.
  String id;

  /// May be used to represent additional information that is not part of the basic definition of the element. To make the use of extensions safe and manageable, there is a strict set of governance  applied to the definition and use of extensions. Though any implementer can define an extension, there is a set of requirements that SHALL be met as part of the definition of the extension.
  List<Extension> extension;

  /// May be used to represent additional information that is not part of the basic definition of the element and that modifies the understanding of the element in which it is contained and/or the understanding of the containing element's descendants. Usually modifier elements provide negation or qualification. To make the use of extensions safe and manageable, there is a strict set of governance applied to the definition and use of extensions. Though any implementer can define an extension, there is a set of requirements that SHALL be met as part of the definition of the extension. Applications processing a resource are required to check for modifier extensions.
  ///
  /// Modifier extensions SHALL NOT change the meaning of any elements on Resource or DomainResource (including cannot change the meaning of modifierExtension itself).
  List<Extension> modifierExtension;

  /// Extensions for nameUrl
  Element extNameUrl;

  /// The source address for the page.
  Reference nameReference;

  /// A short title used to represent this page in navigational structures such as table of contents, bread crumbs, etc.
  String title;

  /// Extensions for title
  Element extTitle;

  /// A code that indicates how the page is generated.
  String generation;

  /// Extensions for generation
  Element extGeneration;

  /// Nested Pages/Sections under this page.
  List<ImplementationGuidePage> page;

  ImplementationGuidePage.fromJSON(Map json) {
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
    this.extNameUrl = json['_nameUrl'] == null
        ? null
        : FHIRObjectFactory.buildFromJSON('Element', json['_nameUrl']);
    this.nameReference = json['nameReference'] == null
        ? null
        : FHIRObjectFactory.buildFromJSON('Reference', json['nameReference']);
    this.title = json['title'];
    this.extTitle = json['_title'] == null
        ? null
        : FHIRObjectFactory.buildFromJSON('Element', json['_title']);
    this.generation = json['generation'];
    this.extGeneration = json['_generation'] == null
        ? null
        : FHIRObjectFactory.buildFromJSON('Element', json['_generation']);
    this.page = List<ImplementationGuidePage>();
    if (json['page'] != null && json['page'].length > 0) {
      if (json['page'] is List) {
        json['page'].forEach((i) {
          this.page.add(
              FHIRObjectFactory.buildFromJSON('ImplementationGuidePage', i));
        });
      } else {
        // this handles the case when the list only has one object and does not return as a list
        var i = json['page'];
        this
            .page
            .add(FHIRObjectFactory.buildFromJSON('ImplementationGuidePage', i));
      }
    }
  }
}
