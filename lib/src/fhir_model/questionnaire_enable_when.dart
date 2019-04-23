import 'extension.dart';
import 'fhir_object_factory.dart';
import 'element.dart';
import 'coding.dart';
import 'quantity.dart';
import 'reference.dart';
/// A structured set of questions intended to guide the collection of answers from end-users. Questionnaires provide detailed control over order, presentation, phraseology and grouping to allow coherent, consistent data collection.
class QuestionnaireEnableWhen {
    /// Unique id for the element within a resource (for internal references). This may be any string value that does not contain spaces.
    String id;
    /// May be used to represent additional information that is not part of the basic definition of the element. To make the use of extensions safe and manageable, there is a strict set of governance  applied to the definition and use of extensions. Though any implementer can define an extension, there is a set of requirements that SHALL be met as part of the definition of the extension.
    List<Extension> extension;
    /// May be used to represent additional information that is not part of the basic definition of the element and that modifies the understanding of the element in which it is contained and/or the understanding of the containing element's descendants. Usually modifier elements provide negation or qualification. To make the use of extensions safe and manageable, there is a strict set of governance applied to the definition and use of extensions. Though any implementer can define an extension, there is a set of requirements that SHALL be met as part of the definition of the extension. Applications processing a resource are required to check for modifier extensions.
    /// 
    /// Modifier extensions SHALL NOT change the meaning of any elements on Resource or DomainResource (including cannot change the meaning of modifierExtension itself).
    List<Extension> modifierExtension;
    /// The linkId for the question whose answer (or lack of answer) governs whether this item is enabled.
    String question;
    /// Extensions for question
    Element extQuestion;
    /// Specifies the criteria by which the question is enabled.
    String operator;
    /// Extensions for operator
    Element extOperator;
    /// Extensions for answerBoolean
    Element extAnswerBoolean;
    /// Extensions for answerDecimal
    Element extAnswerDecimal;
    /// Extensions for answerInteger
    Element extAnswerInteger;
    /// Extensions for answerDate
    Element extAnswerDate;
    /// Extensions for answerDateTime
    Element extAnswerDateTime;
    /// Extensions for answerTime
    Element extAnswerTime;
    /// Extensions for answerString
    Element extAnswerString;
    /// A value that the referenced question is tested using the specified operator in order for the item to be enabled.
    Coding answerCoding;
    /// A value that the referenced question is tested using the specified operator in order for the item to be enabled.
    Quantity answerQuantity;
    /// A value that the referenced question is tested using the specified operator in order for the item to be enabled.
    Reference answerReference;
 
    QuestionnaireEnableWhen.fromJSON( Map json ){
        this.id = json['id'];
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
        this.question = json['question'];
        this.extQuestion = json['_question'] == null ? null : FHIRObjectFactory.buildFromJSON('Element', json['_question']);
        this.operator = json['operator'];
        this.extOperator = json['_operator'] == null ? null : FHIRObjectFactory.buildFromJSON('Element', json['_operator']);
        this.extAnswerBoolean = json['_answerBoolean'] == null ? null : FHIRObjectFactory.buildFromJSON('Element', json['_answerBoolean']);
        this.extAnswerDecimal = json['_answerDecimal'] == null ? null : FHIRObjectFactory.buildFromJSON('Element', json['_answerDecimal']);
        this.extAnswerInteger = json['_answerInteger'] == null ? null : FHIRObjectFactory.buildFromJSON('Element', json['_answerInteger']);
        this.extAnswerDate = json['_answerDate'] == null ? null : FHIRObjectFactory.buildFromJSON('Element', json['_answerDate']);
        this.extAnswerDateTime = json['_answerDateTime'] == null ? null : FHIRObjectFactory.buildFromJSON('Element', json['_answerDateTime']);
        this.extAnswerTime = json['_answerTime'] == null ? null : FHIRObjectFactory.buildFromJSON('Element', json['_answerTime']);
        this.extAnswerString = json['_answerString'] == null ? null : FHIRObjectFactory.buildFromJSON('Element', json['_answerString']);
        this.answerCoding = json['answerCoding'] == null ? null : FHIRObjectFactory.buildFromJSON('Coding', json['answerCoding']);
        this.answerQuantity = json['answerQuantity'] == null ? null : FHIRObjectFactory.buildFromJSON('Quantity', json['answerQuantity']);
        this.answerReference = json['answerReference'] == null ? null : FHIRObjectFactory.buildFromJSON('Reference', json['answerReference']);
    }
}
