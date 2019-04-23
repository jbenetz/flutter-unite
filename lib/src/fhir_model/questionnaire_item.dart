import 'extension.dart';
import 'fhir_object_factory.dart';
import 'element.dart';
import 'coding.dart';
import 'questionnaire_enable_when.dart';
import 'questionnaire_answer_option.dart';
import 'questionnaire_initial.dart';

/// A structured set of questions intended to guide the collection of answers from end-users. Questionnaires provide detailed control over order, presentation, phraseology and grouping to allow coherent, consistent data collection.
class QuestionnaireItem {
  /// Unique id for the element within a resource (for internal references). This may be any string value that does not contain spaces.
  String id;

  /// May be used to represent additional information that is not part of the basic definition of the element. To make the use of extensions safe and manageable, there is a strict set of governance  applied to the definition and use of extensions. Though any implementer can define an extension, there is a set of requirements that SHALL be met as part of the definition of the extension.
  List<Extension> extension;

  /// May be used to represent additional information that is not part of the basic definition of the element and that modifies the understanding of the element in which it is contained and/or the understanding of the containing element's descendants. Usually modifier elements provide negation or qualification. To make the use of extensions safe and manageable, there is a strict set of governance applied to the definition and use of extensions. Though any implementer can define an extension, there is a set of requirements that SHALL be met as part of the definition of the extension. Applications processing a resource are required to check for modifier extensions.
  ///
  /// Modifier extensions SHALL NOT change the meaning of any elements on Resource or DomainResource (including cannot change the meaning of modifierExtension itself).
  List<Extension> modifierExtension;

  /// An identifier that is unique within the Questionnaire allowing linkage to the equivalent item in a QuestionnaireResponse resource.
  String linkId;

  /// Extensions for linkId
  Element extLinkId;

  /// This element is a URI that refers to an [[[ElementDefinition]]] that provides information about this item, including information that might otherwise be included in the instance of the Questionnaire resource. A detailed description of the construction of the URI is shown in Comments, below. If this element is present then the following element values MAY be derived from the Element Definition if the corresponding elements of this Questionnaire resource instance have no value:
  ///
  /// * code (ElementDefinition.code)
  /// * type (ElementDefinition.type)
  /// * required (ElementDefinition.min)
  /// * repeats (ElementDefinition.max)
  /// * maxLength (ElementDefinition.maxLength)
  /// * answerValueSet (ElementDefinition.binding)
  /// * options (ElementDefinition.binding).
  String definition;

  /// Extensions for definition
  Element extDefinition;

  /// A terminology code that corresponds to this group or question (e.g. a code from LOINC, which defines many questions and answers).
  List<Coding> code;

  /// A short label for a particular group, question or set of display text within the questionnaire used for reference by the individual completing the questionnaire.
  String prefix;

  /// Extensions for prefix
  Element extPrefix;

  /// The name of a section, the text of a question or text content for a display item.
  String text;

  /// Extensions for text
  Element extText;

  /// The type of questionnaire item this is - whether text for display, a grouping of other items or a particular type of data to be captured (string, integer, coded choice, etc.).
  String type;

  /// Extensions for type
  Element extType;

  /// A constraint indicating that this item should only be enabled (displayed/allow answers to be captured) when the specified condition is true.
  List<QuestionnaireEnableWhen> enableWhen;

  /// Controls how multiple enableWhen values are interpreted -  whether all or any must be true.
  String enableBehavior;

  /// Extensions for enableBehavior
  Element extEnableBehavior;

  /// An indication, if true, that the item must be present in a "completed" QuestionnaireResponse.  If false, the item may be skipped when answering the questionnaire.
  bool required;

  /// Extensions for required
  Element extRequired;

  /// An indication, if true, that the item may occur multiple times in the response, collecting multiple answers for questions or multiple sets of answers for groups.
  bool repeats;

  /// Extensions for repeats
  Element extRepeats;

  /// An indication, when true, that the value cannot be changed by a human respondent to the Questionnaire.
  bool readOnly;

  /// Extensions for readOnly
  Element extReadOnly;

  /// The maximum number of characters that are permitted in the answer to be considered a "valid" QuestionnaireResponse.
  int maxLength;

  /// Extensions for maxLength
  Element extMaxLength;

  /// A reference to a value set containing a list of codes representing permitted answers for a "choice" or "open-choice" question.
  String answerValueSet;

  /// One of the permitted answers for a "choice" or "open-choice" question.
  List<QuestionnaireAnswerOption> answerOption;

  /// One or more values that should be pre-populated in the answer when initially rendering the questionnaire for user input.
  List<QuestionnaireInitial> initial;

  /// Text, questions and other groups to be nested beneath a question or group.
  List<QuestionnaireItem> item;

  QuestionnaireItem.fromJSON(Map json) {
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
    this.code = List<Coding>();
    if (json['code'] != null && json['code'].length > 0) {
      if (json['code'] is List) {
        json['code'].forEach((i) {
          this.code.add(FHIRObjectFactory.buildFromJSON('Coding', i));
        });
      } else {
        // this handles the case when the list only has one object and does not return as a list
        var i = json['code'];
        this.code.add(FHIRObjectFactory.buildFromJSON('Coding', i));
      }
    }
    this.prefix = json['prefix'];
    this.extPrefix = json['_prefix'] == null
        ? null
        : FHIRObjectFactory.buildFromJSON('Element', json['_prefix']);
    this.text = json['text'];
    this.extText = json['_text'] == null
        ? null
        : FHIRObjectFactory.buildFromJSON('Element', json['_text']);
    this.type = json['type'];
    this.extType = json['_type'] == null
        ? null
        : FHIRObjectFactory.buildFromJSON('Element', json['_type']);
    this.enableWhen = List<QuestionnaireEnableWhen>();
    if (json['enableWhen'] != null && json['enableWhen'].length > 0) {
      if (json['enableWhen'] is List) {
        json['enableWhen'].forEach((i) {
          this.enableWhen.add(
              FHIRObjectFactory.buildFromJSON('QuestionnaireEnableWhen', i));
        });
      } else {
        // this handles the case when the list only has one object and does not return as a list
        var i = json['enableWhen'];
        this
            .enableWhen
            .add(FHIRObjectFactory.buildFromJSON('QuestionnaireEnableWhen', i));
      }
    }
    this.enableBehavior = json['enableBehavior'];
    this.extEnableBehavior = json['_enableBehavior'] == null
        ? null
        : FHIRObjectFactory.buildFromJSON('Element', json['_enableBehavior']);
    this.required = json['required'];
    this.extRequired = json['_required'] == null
        ? null
        : FHIRObjectFactory.buildFromJSON('Element', json['_required']);
    this.repeats = json['repeats'];
    this.extRepeats = json['_repeats'] == null
        ? null
        : FHIRObjectFactory.buildFromJSON('Element', json['_repeats']);
    this.readOnly = json['readOnly'];
    this.extReadOnly = json['_readOnly'] == null
        ? null
        : FHIRObjectFactory.buildFromJSON('Element', json['_readOnly']);
    this.maxLength = json['maxLength'];
    this.extMaxLength = json['_maxLength'] == null
        ? null
        : FHIRObjectFactory.buildFromJSON('Element', json['_maxLength']);
    this.answerValueSet = json['answerValueSet'];
    this.answerOption = List<QuestionnaireAnswerOption>();
    if (json['answerOption'] != null && json['answerOption'].length > 0) {
      if (json['answerOption'] is List) {
        json['answerOption'].forEach((i) {
          this.answerOption.add(
              FHIRObjectFactory.buildFromJSON('QuestionnaireAnswerOption', i));
        });
      } else {
        // this handles the case when the list only has one object and does not return as a list
        var i = json['answerOption'];
        this.answerOption.add(
            FHIRObjectFactory.buildFromJSON('QuestionnaireAnswerOption', i));
      }
    }
    this.initial = List<QuestionnaireInitial>();
    if (json['initial'] != null && json['initial'].length > 0) {
      if (json['initial'] is List) {
        json['initial'].forEach((i) {
          this
              .initial
              .add(FHIRObjectFactory.buildFromJSON('QuestionnaireInitial', i));
        });
      } else {
        // this handles the case when the list only has one object and does not return as a list
        var i = json['initial'];
        this
            .initial
            .add(FHIRObjectFactory.buildFromJSON('QuestionnaireInitial', i));
      }
    }
    this.item = List<QuestionnaireItem>();
    if (json['item'] != null && json['item'].length > 0) {
      if (json['item'] is List) {
        json['item'].forEach((i) {
          this
              .item
              .add(FHIRObjectFactory.buildFromJSON('QuestionnaireItem', i));
        });
      } else {
        // this handles the case when the list only has one object and does not return as a list
        var i = json['item'];
        this.item.add(FHIRObjectFactory.buildFromJSON('QuestionnaireItem', i));
      }
    }
  }
}
