import 'extension.dart';
import 'fhir_object_factory.dart';
import 'codeable_concept.dart';
import 'reference.dart';
import 'coding.dart';
import 'contract_context.dart';
import 'element.dart';
import 'period.dart';
import 'contract_answer.dart';
import 'contract_valued_item.dart';
/// Legally enforceable, formally recorded unilateral or bilateral directive i.e., a policy or agreement.
class ContractAsset {
    /// Unique id for the element within a resource (for internal references). This may be any string value that does not contain spaces.
    String id;
    /// May be used to represent additional information that is not part of the basic definition of the element. To make the use of extensions safe and manageable, there is a strict set of governance  applied to the definition and use of extensions. Though any implementer can define an extension, there is a set of requirements that SHALL be met as part of the definition of the extension.
    List<Extension> extension;
    /// May be used to represent additional information that is not part of the basic definition of the element and that modifies the understanding of the element in which it is contained and/or the understanding of the containing element's descendants. Usually modifier elements provide negation or qualification. To make the use of extensions safe and manageable, there is a strict set of governance applied to the definition and use of extensions. Though any implementer can define an extension, there is a set of requirements that SHALL be met as part of the definition of the extension. Applications processing a resource are required to check for modifier extensions.
    /// 
    /// Modifier extensions SHALL NOT change the meaning of any elements on Resource or DomainResource (including cannot change the meaning of modifierExtension itself).
    List<Extension> modifierExtension;
    /// Differentiates the kind of the asset .
    CodeableConcept scope;
    /// Target entity type about which the term may be concerned.
    List<CodeableConcept> type;
    /// Associated entities.
    List<Reference> typeReference;
    /// May be a subtype or part of an offered asset.
    List<CodeableConcept> subtype;
    /// Specifies the applicability of the term to an asset resource instance, and instances it refers to orinstances that refer to it, and/or are owned by the offeree.
    Coding relationship;
    /// Circumstance of the asset.
    List<ContractContext> context;
    /// Description of the quality and completeness of the asset that imay be a factor in its valuation.
    String condition;
    /// Extensions for condition
    Element extCondition;
    /// Type of Asset availability for use or ownership.
    List<CodeableConcept> periodType;
    /// Asset relevant contractual time period.
    List<Period> period;
    /// Time period of asset use.
    List<Period> usePeriod;
    /// Clause or question text (Prose Object) concerning the asset in a linked form, such as a QuestionnaireResponse used in the formation of the contract.
    String text;
    /// Extensions for text
    Element extText;
    /// Id [identifier??] of the clause or question text about the asset in the referenced form or QuestionnaireResponse.
    List<String> linkId;
    /// Extensions for linkId
    List<Element> extLinkId;
    /// Response to assets.
    List<ContractAnswer> answer;
    /// Security labels that protects the asset.
    List<int> securityLabelNumber;
    /// Extensions for securityLabelNumber
    List<Element> extSecurityLabelNumber;
    /// Contract Valued Item List.
    List<ContractValuedItem> valuedItem;
 
    ContractAsset.fromJSON( Map json ){
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
        this.scope = json['scope'] == null ? null : FHIRObjectFactory.buildFromJSON('CodeableConcept', json['scope']);
        this.type = List<CodeableConcept>();
        if (json['type'] != null && json['type'].length > 0) {
          if( json['type'] is List ){
            json['type'].forEach((i){
              this.type.add(FHIRObjectFactory.buildFromJSON('CodeableConcept', i));
            });
          } else {
            // this handles the case when the list only has one object and does not return as a list
            var i = json['type'];
            this.type.add(FHIRObjectFactory.buildFromJSON('CodeableConcept', i));
          }          
        }
        this.typeReference = List<Reference>();
        if (json['typeReference'] != null && json['typeReference'].length > 0) {
          if( json['typeReference'] is List ){
            json['typeReference'].forEach((i){
              this.typeReference.add(FHIRObjectFactory.buildFromJSON('Reference', i));
            });
          } else {
            // this handles the case when the list only has one object and does not return as a list
            var i = json['typeReference'];
            this.typeReference.add(FHIRObjectFactory.buildFromJSON('Reference', i));
          }          
        }
        this.subtype = List<CodeableConcept>();
        if (json['subtype'] != null && json['subtype'].length > 0) {
          if( json['subtype'] is List ){
            json['subtype'].forEach((i){
              this.subtype.add(FHIRObjectFactory.buildFromJSON('CodeableConcept', i));
            });
          } else {
            // this handles the case when the list only has one object and does not return as a list
            var i = json['subtype'];
            this.subtype.add(FHIRObjectFactory.buildFromJSON('CodeableConcept', i));
          }          
        }
        this.relationship = json['relationship'] == null ? null : FHIRObjectFactory.buildFromJSON('Coding', json['relationship']);
        this.context = List<ContractContext>();
        if (json['context'] != null && json['context'].length > 0) {
          if( json['context'] is List ){
            json['context'].forEach((i){
              this.context.add(FHIRObjectFactory.buildFromJSON('ContractContext', i));
            });
          } else {
            // this handles the case when the list only has one object and does not return as a list
            var i = json['context'];
            this.context.add(FHIRObjectFactory.buildFromJSON('ContractContext', i));
          }          
        }
        this.condition = json['condition'];
        this.extCondition = json['_condition'] == null ? null : FHIRObjectFactory.buildFromJSON('Element', json['_condition']);
        this.periodType = List<CodeableConcept>();
        if (json['periodType'] != null && json['periodType'].length > 0) {
          if( json['periodType'] is List ){
            json['periodType'].forEach((i){
              this.periodType.add(FHIRObjectFactory.buildFromJSON('CodeableConcept', i));
            });
          } else {
            // this handles the case when the list only has one object and does not return as a list
            var i = json['periodType'];
            this.periodType.add(FHIRObjectFactory.buildFromJSON('CodeableConcept', i));
          }          
        }
        this.period = List<Period>();
        if (json['period'] != null && json['period'].length > 0) {
          if( json['period'] is List ){
            json['period'].forEach((i){
              this.period.add(FHIRObjectFactory.buildFromJSON('Period', i));
            });
          } else {
            // this handles the case when the list only has one object and does not return as a list
            var i = json['period'];
            this.period.add(FHIRObjectFactory.buildFromJSON('Period', i));
          }          
        }
        this.usePeriod = List<Period>();
        if (json['usePeriod'] != null && json['usePeriod'].length > 0) {
          if( json['usePeriod'] is List ){
            json['usePeriod'].forEach((i){
              this.usePeriod.add(FHIRObjectFactory.buildFromJSON('Period', i));
            });
          } else {
            // this handles the case when the list only has one object and does not return as a list
            var i = json['usePeriod'];
            this.usePeriod.add(FHIRObjectFactory.buildFromJSON('Period', i));
          }          
        }
        this.text = json['text'];
        this.extText = json['_text'] == null ? null : FHIRObjectFactory.buildFromJSON('Element', json['_text']);
        this.linkId = List<String>();
        if (json['linkId'] != null && json['linkId'].length > 0) {
          if( json['linkId'] is List ){
            json['linkId'].forEach((i){
              this.linkId.add(i);
            });
          } else {
            // this handles the case when the list only has one object and does not return as a list
            var i = json['linkId'];
            this.linkId.add(i);
          }          
        }
        this.extLinkId = List<Element>();
        if (json['_linkId'] != null && json['_linkId'].length > 0) {
          if( json['_linkId'] is List ){
            json['_linkId'].forEach((i){
              this.extLinkId.add(FHIRObjectFactory.buildFromJSON('Element', i));
            });
          } else {
            // this handles the case when the list only has one object and does not return as a list
            var i = json['_linkId'];
            this.extLinkId.add(FHIRObjectFactory.buildFromJSON('Element', i));
          }          
        }
        this.answer = List<ContractAnswer>();
        if (json['answer'] != null && json['answer'].length > 0) {
          if( json['answer'] is List ){
            json['answer'].forEach((i){
              this.answer.add(FHIRObjectFactory.buildFromJSON('ContractAnswer', i));
            });
          } else {
            // this handles the case when the list only has one object and does not return as a list
            var i = json['answer'];
            this.answer.add(FHIRObjectFactory.buildFromJSON('ContractAnswer', i));
          }          
        }
        this.securityLabelNumber = List<int>();
        if (json['securityLabelNumber'] != null && json['securityLabelNumber'].length > 0) {
          if( json['securityLabelNumber'] is List ){
            json['securityLabelNumber'].forEach((i){
              this.securityLabelNumber.add(i);
            });
          } else {
            // this handles the case when the list only has one object and does not return as a list
            var i = json['securityLabelNumber'];
            this.securityLabelNumber.add(i);
          }          
        }
        this.extSecurityLabelNumber = List<Element>();
        if (json['_securityLabelNumber'] != null && json['_securityLabelNumber'].length > 0) {
          if( json['_securityLabelNumber'] is List ){
            json['_securityLabelNumber'].forEach((i){
              this.extSecurityLabelNumber.add(FHIRObjectFactory.buildFromJSON('Element', i));
            });
          } else {
            // this handles the case when the list only has one object and does not return as a list
            var i = json['_securityLabelNumber'];
            this.extSecurityLabelNumber.add(FHIRObjectFactory.buildFromJSON('Element', i));
          }          
        }
        this.valuedItem = List<ContractValuedItem>();
        if (json['valuedItem'] != null && json['valuedItem'].length > 0) {
          if( json['valuedItem'] is List ){
            json['valuedItem'].forEach((i){
              this.valuedItem.add(FHIRObjectFactory.buildFromJSON('ContractValuedItem', i));
            });
          } else {
            // this handles the case when the list only has one object and does not return as a list
            var i = json['valuedItem'];
            this.valuedItem.add(FHIRObjectFactory.buildFromJSON('ContractValuedItem', i));
          }          
        }
    }
}
