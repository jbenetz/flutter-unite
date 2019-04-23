import 'extension.dart';
import 'fhir_object_factory.dart';
import 'element.dart';
import 'codeable_concept.dart';
import 'contract_subject.dart';
import 'reference.dart';
import 'period.dart';
import 'timing.dart';
import 'annotation.dart';
/// Legally enforceable, formally recorded unilateral or bilateral directive i.e., a policy or agreement.
class ContractAction {
    /// Unique id for the element within a resource (for internal references). This may be any string value that does not contain spaces.
    String id;
    /// May be used to represent additional information that is not part of the basic definition of the element. To make the use of extensions safe and manageable, there is a strict set of governance  applied to the definition and use of extensions. Though any implementer can define an extension, there is a set of requirements that SHALL be met as part of the definition of the extension.
    List<Extension> extension;
    /// May be used to represent additional information that is not part of the basic definition of the element and that modifies the understanding of the element in which it is contained and/or the understanding of the containing element's descendants. Usually modifier elements provide negation or qualification. To make the use of extensions safe and manageable, there is a strict set of governance applied to the definition and use of extensions. Though any implementer can define an extension, there is a set of requirements that SHALL be met as part of the definition of the extension. Applications processing a resource are required to check for modifier extensions.
    /// 
    /// Modifier extensions SHALL NOT change the meaning of any elements on Resource or DomainResource (including cannot change the meaning of modifierExtension itself).
    List<Extension> modifierExtension;
    /// True if the term prohibits the  action.
    bool doNotPerform;
    /// Extensions for doNotPerform
    Element extDoNotPerform;
    /// Activity or service obligation to be done or not done, performed or not performed, effectuated or not by this Contract term.
    CodeableConcept type;
    /// Entity of the action.
    List<ContractSubject> subject;
    /// Reason or purpose for the action stipulated by this Contract Provision.
    CodeableConcept intent;
    /// Id [identifier??] of the clause or question text related to this action in the referenced form or QuestionnaireResponse.
    List<String> linkId;
    /// Extensions for linkId
    List<Element> extLinkId;
    /// Current state of the term action.
    CodeableConcept status;
    /// Encounter or Episode with primary association to specified term activity.
    Reference context;
    /// Id [identifier??] of the clause or question text related to the requester of this action in the referenced form or QuestionnaireResponse.
    List<String> contextLinkId;
    /// Extensions for contextLinkId
    List<Element> extContextLinkId;
    /// Extensions for occurrenceDateTime
    Element extOccurrenceDateTime;
    /// When action happens.
    Period occurrencePeriod;
    /// When action happens.
    Timing occurrenceTiming;
    /// Who or what initiated the action and has responsibility for its activation.
    List<Reference> requester;
    /// Id [identifier??] of the clause or question text related to the requester of this action in the referenced form or QuestionnaireResponse.
    List<String> requesterLinkId;
    /// Extensions for requesterLinkId
    List<Element> extRequesterLinkId;
    /// The type of individual that is desired or required to perform or not perform the action.
    List<CodeableConcept> performerType;
    /// The type of role or competency of an individual desired or required to perform or not perform the action.
    CodeableConcept performerRole;
    /// Indicates who or what is being asked to perform (or not perform) the ction.
    Reference performer;
    /// Id [identifier??] of the clause or question text related to the reason type or reference of this  action in the referenced form or QuestionnaireResponse.
    List<String> performerLinkId;
    /// Extensions for performerLinkId
    List<Element> extPerformerLinkId;
    /// Rationale for the action to be performed or not performed. Describes why the action is permitted or prohibited.
    List<CodeableConcept> reasonCode;
    /// Indicates another resource whose existence justifies permitting or not permitting this action.
    List<Reference> reasonReference;
    /// Describes why the action is to be performed or not performed in textual form.
    List<String> reason;
    /// Extensions for reason
    List<Element> extReason;
    /// Id [identifier??] of the clause or question text related to the reason type or reference of this  action in the referenced form or QuestionnaireResponse.
    List<String> reasonLinkId;
    /// Extensions for reasonLinkId
    List<Element> extReasonLinkId;
    /// Comments made about the term action made by the requester, performer, subject or other participants.
    List<Annotation> note;
    /// Security labels that protects the action.
    List<int> securityLabelNumber;
    /// Extensions for securityLabelNumber
    List<Element> extSecurityLabelNumber;
 
    ContractAction.fromJSON( Map json ){
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
        this.doNotPerform = json['doNotPerform'];
        this.extDoNotPerform = json['_doNotPerform'] == null ? null : FHIRObjectFactory.buildFromJSON('Element', json['_doNotPerform']);
        this.type = json['type'] == null ? null : FHIRObjectFactory.buildFromJSON('CodeableConcept', json['type']);
        this.subject = List<ContractSubject>();
        if (json['subject'] != null && json['subject'].length > 0) {
          if( json['subject'] is List ){
            json['subject'].forEach((i){
              this.subject.add(FHIRObjectFactory.buildFromJSON('ContractSubject', i));
            });
          } else {
            // this handles the case when the list only has one object and does not return as a list
            var i = json['subject'];
            this.subject.add(FHIRObjectFactory.buildFromJSON('ContractSubject', i));
          }          
        }
        this.intent = json['intent'] == null ? null : FHIRObjectFactory.buildFromJSON('CodeableConcept', json['intent']);
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
        this.status = json['status'] == null ? null : FHIRObjectFactory.buildFromJSON('CodeableConcept', json['status']);
        this.context = json['context'] == null ? null : FHIRObjectFactory.buildFromJSON('Reference', json['context']);
        this.contextLinkId = List<String>();
        if (json['contextLinkId'] != null && json['contextLinkId'].length > 0) {
          if( json['contextLinkId'] is List ){
            json['contextLinkId'].forEach((i){
              this.contextLinkId.add(i);
            });
          } else {
            // this handles the case when the list only has one object and does not return as a list
            var i = json['contextLinkId'];
            this.contextLinkId.add(i);
          }          
        }
        this.extContextLinkId = List<Element>();
        if (json['_contextLinkId'] != null && json['_contextLinkId'].length > 0) {
          if( json['_contextLinkId'] is List ){
            json['_contextLinkId'].forEach((i){
              this.extContextLinkId.add(FHIRObjectFactory.buildFromJSON('Element', i));
            });
          } else {
            // this handles the case when the list only has one object and does not return as a list
            var i = json['_contextLinkId'];
            this.extContextLinkId.add(FHIRObjectFactory.buildFromJSON('Element', i));
          }          
        }
        this.extOccurrenceDateTime = json['_occurrenceDateTime'] == null ? null : FHIRObjectFactory.buildFromJSON('Element', json['_occurrenceDateTime']);
        this.occurrencePeriod = json['occurrencePeriod'] == null ? null : FHIRObjectFactory.buildFromJSON('Period', json['occurrencePeriod']);
        this.occurrenceTiming = json['occurrenceTiming'] == null ? null : FHIRObjectFactory.buildFromJSON('Timing', json['occurrenceTiming']);
        this.requester = List<Reference>();
        if (json['requester'] != null && json['requester'].length > 0) {
          if( json['requester'] is List ){
            json['requester'].forEach((i){
              this.requester.add(FHIRObjectFactory.buildFromJSON('Reference', i));
            });
          } else {
            // this handles the case when the list only has one object and does not return as a list
            var i = json['requester'];
            this.requester.add(FHIRObjectFactory.buildFromJSON('Reference', i));
          }          
        }
        this.requesterLinkId = List<String>();
        if (json['requesterLinkId'] != null && json['requesterLinkId'].length > 0) {
          if( json['requesterLinkId'] is List ){
            json['requesterLinkId'].forEach((i){
              this.requesterLinkId.add(i);
            });
          } else {
            // this handles the case when the list only has one object and does not return as a list
            var i = json['requesterLinkId'];
            this.requesterLinkId.add(i);
          }          
        }
        this.extRequesterLinkId = List<Element>();
        if (json['_requesterLinkId'] != null && json['_requesterLinkId'].length > 0) {
          if( json['_requesterLinkId'] is List ){
            json['_requesterLinkId'].forEach((i){
              this.extRequesterLinkId.add(FHIRObjectFactory.buildFromJSON('Element', i));
            });
          } else {
            // this handles the case when the list only has one object and does not return as a list
            var i = json['_requesterLinkId'];
            this.extRequesterLinkId.add(FHIRObjectFactory.buildFromJSON('Element', i));
          }          
        }
        this.performerType = List<CodeableConcept>();
        if (json['performerType'] != null && json['performerType'].length > 0) {
          if( json['performerType'] is List ){
            json['performerType'].forEach((i){
              this.performerType.add(FHIRObjectFactory.buildFromJSON('CodeableConcept', i));
            });
          } else {
            // this handles the case when the list only has one object and does not return as a list
            var i = json['performerType'];
            this.performerType.add(FHIRObjectFactory.buildFromJSON('CodeableConcept', i));
          }          
        }
        this.performerRole = json['performerRole'] == null ? null : FHIRObjectFactory.buildFromJSON('CodeableConcept', json['performerRole']);
        this.performer = json['performer'] == null ? null : FHIRObjectFactory.buildFromJSON('Reference', json['performer']);
        this.performerLinkId = List<String>();
        if (json['performerLinkId'] != null && json['performerLinkId'].length > 0) {
          if( json['performerLinkId'] is List ){
            json['performerLinkId'].forEach((i){
              this.performerLinkId.add(i);
            });
          } else {
            // this handles the case when the list only has one object and does not return as a list
            var i = json['performerLinkId'];
            this.performerLinkId.add(i);
          }          
        }
        this.extPerformerLinkId = List<Element>();
        if (json['_performerLinkId'] != null && json['_performerLinkId'].length > 0) {
          if( json['_performerLinkId'] is List ){
            json['_performerLinkId'].forEach((i){
              this.extPerformerLinkId.add(FHIRObjectFactory.buildFromJSON('Element', i));
            });
          } else {
            // this handles the case when the list only has one object and does not return as a list
            var i = json['_performerLinkId'];
            this.extPerformerLinkId.add(FHIRObjectFactory.buildFromJSON('Element', i));
          }          
        }
        this.reasonCode = List<CodeableConcept>();
        if (json['reasonCode'] != null && json['reasonCode'].length > 0) {
          if( json['reasonCode'] is List ){
            json['reasonCode'].forEach((i){
              this.reasonCode.add(FHIRObjectFactory.buildFromJSON('CodeableConcept', i));
            });
          } else {
            // this handles the case when the list only has one object and does not return as a list
            var i = json['reasonCode'];
            this.reasonCode.add(FHIRObjectFactory.buildFromJSON('CodeableConcept', i));
          }          
        }
        this.reasonReference = List<Reference>();
        if (json['reasonReference'] != null && json['reasonReference'].length > 0) {
          if( json['reasonReference'] is List ){
            json['reasonReference'].forEach((i){
              this.reasonReference.add(FHIRObjectFactory.buildFromJSON('Reference', i));
            });
          } else {
            // this handles the case when the list only has one object and does not return as a list
            var i = json['reasonReference'];
            this.reasonReference.add(FHIRObjectFactory.buildFromJSON('Reference', i));
          }          
        }
        this.reason = List<String>();
        if (json['reason'] != null && json['reason'].length > 0) {
          if( json['reason'] is List ){
            json['reason'].forEach((i){
              this.reason.add(i);
            });
          } else {
            // this handles the case when the list only has one object and does not return as a list
            var i = json['reason'];
            this.reason.add(i);
          }          
        }
        this.extReason = List<Element>();
        if (json['_reason'] != null && json['_reason'].length > 0) {
          if( json['_reason'] is List ){
            json['_reason'].forEach((i){
              this.extReason.add(FHIRObjectFactory.buildFromJSON('Element', i));
            });
          } else {
            // this handles the case when the list only has one object and does not return as a list
            var i = json['_reason'];
            this.extReason.add(FHIRObjectFactory.buildFromJSON('Element', i));
          }          
        }
        this.reasonLinkId = List<String>();
        if (json['reasonLinkId'] != null && json['reasonLinkId'].length > 0) {
          if( json['reasonLinkId'] is List ){
            json['reasonLinkId'].forEach((i){
              this.reasonLinkId.add(i);
            });
          } else {
            // this handles the case when the list only has one object and does not return as a list
            var i = json['reasonLinkId'];
            this.reasonLinkId.add(i);
          }          
        }
        this.extReasonLinkId = List<Element>();
        if (json['_reasonLinkId'] != null && json['_reasonLinkId'].length > 0) {
          if( json['_reasonLinkId'] is List ){
            json['_reasonLinkId'].forEach((i){
              this.extReasonLinkId.add(FHIRObjectFactory.buildFromJSON('Element', i));
            });
          } else {
            // this handles the case when the list only has one object and does not return as a list
            var i = json['_reasonLinkId'];
            this.extReasonLinkId.add(FHIRObjectFactory.buildFromJSON('Element', i));
          }          
        }
        this.note = List<Annotation>();
        if (json['note'] != null && json['note'].length > 0) {
          if( json['note'] is List ){
            json['note'].forEach((i){
              this.note.add(FHIRObjectFactory.buildFromJSON('Annotation', i));
            });
          } else {
            // this handles the case when the list only has one object and does not return as a list
            var i = json['note'];
            this.note.add(FHIRObjectFactory.buildFromJSON('Annotation', i));
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
    }
}
