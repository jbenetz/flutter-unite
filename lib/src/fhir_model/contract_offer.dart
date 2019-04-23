import 'extension.dart';
import 'fhir_object_factory.dart';
import 'identifier.dart';
import 'contract_party.dart';
import 'reference.dart';
import 'codeable_concept.dart';
import 'contract_answer.dart';
import 'element.dart';
/// Legally enforceable, formally recorded unilateral or bilateral directive i.e., a policy or agreement.
class ContractOffer {
    /// Unique id for the element within a resource (for internal references). This may be any string value that does not contain spaces.
    String id;
    /// May be used to represent additional information that is not part of the basic definition of the element. To make the use of extensions safe and manageable, there is a strict set of governance  applied to the definition and use of extensions. Though any implementer can define an extension, there is a set of requirements that SHALL be met as part of the definition of the extension.
    List<Extension> extension;
    /// May be used to represent additional information that is not part of the basic definition of the element and that modifies the understanding of the element in which it is contained and/or the understanding of the containing element's descendants. Usually modifier elements provide negation or qualification. To make the use of extensions safe and manageable, there is a strict set of governance applied to the definition and use of extensions. Though any implementer can define an extension, there is a set of requirements that SHALL be met as part of the definition of the extension. Applications processing a resource are required to check for modifier extensions.
    /// 
    /// Modifier extensions SHALL NOT change the meaning of any elements on Resource or DomainResource (including cannot change the meaning of modifierExtension itself).
    List<Extension> modifierExtension;
    /// Unique identifier for this particular Contract Provision.
    List<Identifier> identifier;
    /// Offer Recipient.
    List<ContractParty> party;
    /// The owner of an asset has the residual control rights over the asset: the right to decide all usages of the asset in any way not inconsistent with a prior contract, custom, or law (Hart, 1995, p. 30).
    Reference topic;
    /// Type of Contract Provision such as specific requirements, purposes for actions, obligations, prohibitions, e.g. life time maximum benefit.
    CodeableConcept type;
    /// Type of choice made by accepting party with respect to an offer made by an offeror/ grantee.
    CodeableConcept decision;
    /// How the decision about a Contract was conveyed.
    List<CodeableConcept> decisionMode;
    /// Response to offer text.
    List<ContractAnswer> answer;
    /// Human readable form of this Contract Offer.
    String text;
    /// Extensions for text
    Element extText;
    /// The id of the clause or question text of the offer in the referenced questionnaire/response.
    List<String> linkId;
    /// Extensions for linkId
    List<Element> extLinkId;
    /// Security labels that protects the offer.
    List<int> securityLabelNumber;
    /// Extensions for securityLabelNumber
    List<Element> extSecurityLabelNumber;
 
    ContractOffer.fromJSON( Map json ){
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
        this.identifier = List<Identifier>();
        if (json['identifier'] != null && json['identifier'].length > 0) {
          if( json['identifier'] is List ){
            json['identifier'].forEach((i){
              this.identifier.add(FHIRObjectFactory.buildFromJSON('Identifier', i));
            });
          } else {
            // this handles the case when the list only has one object and does not return as a list
            var i = json['identifier'];
            this.identifier.add(FHIRObjectFactory.buildFromJSON('Identifier', i));
          }          
        }
        this.party = List<ContractParty>();
        if (json['party'] != null && json['party'].length > 0) {
          if( json['party'] is List ){
            json['party'].forEach((i){
              this.party.add(FHIRObjectFactory.buildFromJSON('ContractParty', i));
            });
          } else {
            // this handles the case when the list only has one object and does not return as a list
            var i = json['party'];
            this.party.add(FHIRObjectFactory.buildFromJSON('ContractParty', i));
          }          
        }
        this.topic = json['topic'] == null ? null : FHIRObjectFactory.buildFromJSON('Reference', json['topic']);
        this.type = json['type'] == null ? null : FHIRObjectFactory.buildFromJSON('CodeableConcept', json['type']);
        this.decision = json['decision'] == null ? null : FHIRObjectFactory.buildFromJSON('CodeableConcept', json['decision']);
        this.decisionMode = List<CodeableConcept>();
        if (json['decisionMode'] != null && json['decisionMode'].length > 0) {
          if( json['decisionMode'] is List ){
            json['decisionMode'].forEach((i){
              this.decisionMode.add(FHIRObjectFactory.buildFromJSON('CodeableConcept', i));
            });
          } else {
            // this handles the case when the list only has one object and does not return as a list
            var i = json['decisionMode'];
            this.decisionMode.add(FHIRObjectFactory.buildFromJSON('CodeableConcept', i));
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
