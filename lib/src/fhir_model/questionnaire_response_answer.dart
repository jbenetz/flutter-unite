import 'extension.dart';
import 'fhir_object_factory.dart';
import 'element.dart';
import 'attachment.dart';
import 'coding.dart';
import 'quantity.dart';
import 'reference.dart';
import 'questionnaire_response_item.dart';
/// A structured set of questions and their answers. The questions are ordered and grouped into coherent subsets, corresponding to the structure of the grouping of the questionnaire being responded to.
class QuestionnaireResponseAnswer {
    /// Unique id for the element within a resource (for internal references). This may be any string value that does not contain spaces.
    String id;
    /// May be used to represent additional information that is not part of the basic definition of the element. To make the use of extensions safe and manageable, there is a strict set of governance  applied to the definition and use of extensions. Though any implementer can define an extension, there is a set of requirements that SHALL be met as part of the definition of the extension.
    List<Extension> extension;
    /// May be used to represent additional information that is not part of the basic definition of the element and that modifies the understanding of the element in which it is contained and/or the understanding of the containing element's descendants. Usually modifier elements provide negation or qualification. To make the use of extensions safe and manageable, there is a strict set of governance applied to the definition and use of extensions. Though any implementer can define an extension, there is a set of requirements that SHALL be met as part of the definition of the extension. Applications processing a resource are required to check for modifier extensions.
    /// 
    /// Modifier extensions SHALL NOT change the meaning of any elements on Resource or DomainResource (including cannot change the meaning of modifierExtension itself).
    List<Extension> modifierExtension;
    /// Extensions for valueBoolean
    Element extValueBoolean;
    /// Extensions for valueDecimal
    Element extValueDecimal;
    /// Extensions for valueInteger
    Element extValueInteger;
    /// Extensions for valueDate
    Element extValueDate;
    /// Extensions for valueDateTime
    Element extValueDateTime;
    /// Extensions for valueTime
    Element extValueTime;
    /// Extensions for valueString
    Element extValueString;
    /// Extensions for valueUri
    Element extValueUri;
    /// The answer (or one of the answers) provided by the respondent to the question.
    Attachment valueAttachment;
    /// The answer (or one of the answers) provided by the respondent to the question.
    Coding valueCoding;
    /// The answer (or one of the answers) provided by the respondent to the question.
    Quantity valueQuantity;
    /// The answer (or one of the answers) provided by the respondent to the question.
    Reference valueReference;
    /// Nested groups and/or questions found within this particular answer.
    List<QuestionnaireResponseItem> item;
 
    QuestionnaireResponseAnswer.fromJSON( Map json ){
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
        this.extValueBoolean = json['_valueBoolean'] == null ? null : FHIRObjectFactory.buildFromJSON('Element', json['_valueBoolean']);
        this.extValueDecimal = json['_valueDecimal'] == null ? null : FHIRObjectFactory.buildFromJSON('Element', json['_valueDecimal']);
        this.extValueInteger = json['_valueInteger'] == null ? null : FHIRObjectFactory.buildFromJSON('Element', json['_valueInteger']);
        this.extValueDate = json['_valueDate'] == null ? null : FHIRObjectFactory.buildFromJSON('Element', json['_valueDate']);
        this.extValueDateTime = json['_valueDateTime'] == null ? null : FHIRObjectFactory.buildFromJSON('Element', json['_valueDateTime']);
        this.extValueTime = json['_valueTime'] == null ? null : FHIRObjectFactory.buildFromJSON('Element', json['_valueTime']);
        this.extValueString = json['_valueString'] == null ? null : FHIRObjectFactory.buildFromJSON('Element', json['_valueString']);
        this.extValueUri = json['_valueUri'] == null ? null : FHIRObjectFactory.buildFromJSON('Element', json['_valueUri']);
        this.valueAttachment = json['valueAttachment'] == null ? null : FHIRObjectFactory.buildFromJSON('Attachment', json['valueAttachment']);
        this.valueCoding = json['valueCoding'] == null ? null : FHIRObjectFactory.buildFromJSON('Coding', json['valueCoding']);
        this.valueQuantity = json['valueQuantity'] == null ? null : FHIRObjectFactory.buildFromJSON('Quantity', json['valueQuantity']);
        this.valueReference = json['valueReference'] == null ? null : FHIRObjectFactory.buildFromJSON('Reference', json['valueReference']);
        this.item = List<QuestionnaireResponseItem>();
        if (json['item'] != null && json['item'].length > 0) {
          if( json['item'] is List ){
            json['item'].forEach((i){
              this.item.add(FHIRObjectFactory.buildFromJSON('QuestionnaireResponseItem', i));
            });
          } else {
            // this handles the case when the list only has one object and does not return as a list
            var i = json['item'];
            this.item.add(FHIRObjectFactory.buildFromJSON('QuestionnaireResponseItem', i));
          }          
        }
    }
}
