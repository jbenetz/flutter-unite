import 'extension.dart';
import 'fhir_object_factory.dart';
import 'element.dart';
import 'codeable_concept.dart';
import 'reference.dart';
import 'narrative.dart';

/// A set of healthcare-related information that is assembled together into a single logical package that provides a single coherent statement of meaning, establishes its own context and that has clinical attestation with regard to who is making the statement. A Composition defines the structure and narrative content necessary for a document. However, a Composition alone does not constitute a document. Rather, the Composition must be the first entry in a Bundle where Bundle.type=document, and any other resources referenced from Composition must be included as subsequent entries in the Bundle (for example Patient, Practitioner, Encounter, etc.).
class CompositionSection {
  /// Unique id for the element within a resource (for internal references). This may be any string value that does not contain spaces.
  String id;

  /// May be used to represent additional information that is not part of the basic definition of the element. To make the use of extensions safe and manageable, there is a strict set of governance  applied to the definition and use of extensions. Though any implementer can define an extension, there is a set of requirements that SHALL be met as part of the definition of the extension.
  List<Extension> extension;

  /// May be used to represent additional information that is not part of the basic definition of the element and that modifies the understanding of the element in which it is contained and/or the understanding of the containing element's descendants. Usually modifier elements provide negation or qualification. To make the use of extensions safe and manageable, there is a strict set of governance applied to the definition and use of extensions. Though any implementer can define an extension, there is a set of requirements that SHALL be met as part of the definition of the extension. Applications processing a resource are required to check for modifier extensions.
  ///
  /// Modifier extensions SHALL NOT change the meaning of any elements on Resource or DomainResource (including cannot change the meaning of modifierExtension itself).
  List<Extension> modifierExtension;

  /// The label for this particular section.  This will be part of the rendered content for the document, and is often used to build a table of contents.
  String title;

  /// Extensions for title
  Element extTitle;

  /// A code identifying the kind of content contained within the section. This must be consistent with the section title.
  CodeableConcept code;

  /// Identifies who is responsible for the information in this section, not necessarily who typed it in.
  List<Reference> author;

  /// The actual focus of the section when it is not the subject of the composition, but instead represents something or someone associated with the subject such as (for a patient subject) a spouse, parent, fetus, or donor. If not focus is specified, the focus is assumed to be focus of the parent section, or, for a section in the Composition itself, the subject of the composition. Sections with a focus SHALL only include resources where the logical subject (patient, subject, focus, etc.) matches the section focus, or the resources have no logical subject (few resources).
  Reference focus;

  /// A human-readable narrative that contains the attested content of the section, used to represent the content of the resource to a human. The narrative need not encode all the structured data, but is required to contain sufficient detail to make it "clinically safe" for a human to just read the narrative.
  Narrative text;

  /// How the entry list was prepared - whether it is a working list that is suitable for being maintained on an ongoing basis, or if it represents a snapshot of a list of items from another source, or whether it is a prepared list where items may be marked as added, modified or deleted.
  String mode;

  /// Extensions for mode
  Element extMode;

  /// Specifies the order applied to the items in the section entries.
  CodeableConcept orderedBy;

  /// A reference to the actual resource from which the narrative in the section is derived.
  List<Reference> entry;

  /// If the section is empty, why the list is empty. An empty section typically has some text explaining the empty reason.
  CodeableConcept emptyReason;

  /// A nested sub-section within this section.
  List<CompositionSection> section;

  CompositionSection.fromJSON(Map json) {
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
    this.title = json['title'];
    this.extTitle = json['_title'] == null
        ? null
        : FHIRObjectFactory.buildFromJSON('Element', json['_title']);
    this.code = json['code'] == null
        ? null
        : FHIRObjectFactory.buildFromJSON('CodeableConcept', json['code']);
    this.author = List<Reference>();
    if (json['author'] != null && json['author'].length > 0) {
      if (json['author'] is List) {
        json['author'].forEach((i) {
          this.author.add(FHIRObjectFactory.buildFromJSON('Reference', i));
        });
      } else {
        // this handles the case when the list only has one object and does not return as a list
        var i = json['author'];
        this.author.add(FHIRObjectFactory.buildFromJSON('Reference', i));
      }
    }
    this.focus = json['focus'] == null
        ? null
        : FHIRObjectFactory.buildFromJSON('Reference', json['focus']);
    this.text = json['text'] == null
        ? null
        : FHIRObjectFactory.buildFromJSON('Narrative', json['text']);
    this.mode = json['mode'];
    this.extMode = json['_mode'] == null
        ? null
        : FHIRObjectFactory.buildFromJSON('Element', json['_mode']);
    this.orderedBy = json['orderedBy'] == null
        ? null
        : FHIRObjectFactory.buildFromJSON('CodeableConcept', json['orderedBy']);
    this.entry = List<Reference>();
    if (json['entry'] != null && json['entry'].length > 0) {
      if (json['entry'] is List) {
        json['entry'].forEach((i) {
          this.entry.add(FHIRObjectFactory.buildFromJSON('Reference', i));
        });
      } else {
        // this handles the case when the list only has one object and does not return as a list
        var i = json['entry'];
        this.entry.add(FHIRObjectFactory.buildFromJSON('Reference', i));
      }
    }
    this.emptyReason = json['emptyReason'] == null
        ? null
        : FHIRObjectFactory.buildFromJSON(
            'CodeableConcept', json['emptyReason']);
    this.section = List<CompositionSection>();
    if (json['section'] != null && json['section'].length > 0) {
      if (json['section'] is List) {
        json['section'].forEach((i) {
          this
              .section
              .add(FHIRObjectFactory.buildFromJSON('CompositionSection', i));
        });
      } else {
        // this handles the case when the list only has one object and does not return as a list
        var i = json['section'];
        this
            .section
            .add(FHIRObjectFactory.buildFromJSON('CompositionSection', i));
      }
    }
  }
}
