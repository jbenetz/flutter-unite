import 'extension.dart';
import 'fhir_object_factory.dart';
import 'element.dart';
import 'questionnaire_response_answer.dart';

/// A structured set of questions and their answers. The questions are ordered and grouped into coherent subsets, corresponding to the structure of the grouping of the questionnaire being responded to.
class QuestionnaireResponseItem {
  /// Unique id for the element within a resource (for internal references). This may be any string value that does not contain spaces.
  String id;

  /// May be used to represent additional information that is not part of the basic definition of the element. To make the use of extensions safe and manageable, there is a strict set of governance  applied to the definition and use of extensions. Though any implementer can define an extension, there is a set of requirements that SHALL be met as part of the definition of the extension.
  List<Extension> extension;

  /// May be used to represent additional information that is not part of the basic definition of the element and that modifies the understanding of the element in which it is contained and/or the understanding of the containing element's descendants. Usually modifier elements provide negation or qualification. To make the use of extensions safe and manageable, there is a strict set of governance applied to the definition and use of extensions. Though any implementer can define an extension, there is a set of requirements that SHALL be met as part of the definition of the extension. Applications processing a resource are required to check for modifier extensions.
  ///
  /// Modifier extensions SHALL NOT change the meaning of any elements on Resource or DomainResource (including cannot change the meaning of modifierExtension itself).
  List<Extension> modifierExtension;

  /// The item from the Questionnaire that corresponds to this item in the QuestionnaireResponse resource.
  String linkId;

  /// Extensions for linkId
  Element extLinkId;

  /// A reference to an [[[ElementDefinition]]] that provides the details for the item.
  String definition;

  /// Extensions for definition
  Element extDefinition;

  /// Text that is displayed above the contents of the group or as the text of the question being answered.
  String text;

  /// Extensions for text
  Element extText;

  /// The respondent's answer(s) to the question.
  List<QuestionnaireResponseAnswer> answer;

  /// Questions or sub-groups nested beneath a question or group.
  List<QuestionnaireResponseItem> item;

  QuestionnaireResponseItem.fromJSON(Map json) {
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
    this.linkId = json['linkId'];
    this.extLinkId = json['_linkId'] == null
        ? null
        : FHIRObjectFactory.buildFromJSON('Element', json['_linkId']);
    this.definition = json['definition'];
    this.extDefinition = json['_definition'] == null
        ? null
        : FHIRObjectFactory.buildFromJSON('Element', json['_definition']);
    this.text = json['text'];
    this.extText = json['_text'] == null
        ? null
        : FHIRObjectFactory.buildFromJSON('Element', json['_text']);
    this.answer = List<QuestionnaireResponseAnswer>();
    if (json['answer'] != null && json['answer'].length > 0) {
      if (json['answer'] is List) {
        json['answer'].forEach((i) {
          this.answer.add(FHIRObjectFactory.buildFromJSON(
              'QuestionnaireResponseAnswer', i));
        });
      } else {
        // this handles the case when the list only has one object and does not return as a list
        var i = json['answer'];
        this.answer.add(
            FHIRObjectFactory.buildFromJSON('QuestionnaireResponseAnswer', i));
      }
    }
    this.item = List<QuestionnaireResponseItem>();
    if (json['item'] != null && json['item'].length > 0) {
      if (json['item'] is List) {
        json['item'].forEach((i) {
          this.item.add(
              FHIRObjectFactory.buildFromJSON('QuestionnaireResponseItem', i));
        });
      } else {
        // this handles the case when the list only has one object and does not return as a list
        var i = json['item'];
        this.item.add(
            FHIRObjectFactory.buildFromJSON('QuestionnaireResponseItem', i));
      }
    }
  }
}
