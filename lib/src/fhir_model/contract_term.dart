import 'extension.dart';
import 'fhir_object_factory.dart';
import 'identifier.dart';
import 'element.dart';
import 'period.dart';
import 'codeable_concept.dart';
import 'reference.dart';
import 'contract_security_label.dart';
import 'contract_offer.dart';
import 'contract_asset.dart';
import 'contract_action.dart';

/// Legally enforceable, formally recorded unilateral or bilateral directive i.e., a policy or agreement.
class ContractTerm {
  /// Unique id for the element within a resource (for internal references). This may be any string value that does not contain spaces.
  String id;

  /// May be used to represent additional information that is not part of the basic definition of the element. To make the use of extensions safe and manageable, there is a strict set of governance  applied to the definition and use of extensions. Though any implementer can define an extension, there is a set of requirements that SHALL be met as part of the definition of the extension.
  List<Extension> extension;

  /// May be used to represent additional information that is not part of the basic definition of the element and that modifies the understanding of the element in which it is contained and/or the understanding of the containing element's descendants. Usually modifier elements provide negation or qualification. To make the use of extensions safe and manageable, there is a strict set of governance applied to the definition and use of extensions. Though any implementer can define an extension, there is a set of requirements that SHALL be met as part of the definition of the extension. Applications processing a resource are required to check for modifier extensions.
  ///
  /// Modifier extensions SHALL NOT change the meaning of any elements on Resource or DomainResource (including cannot change the meaning of modifierExtension itself).
  List<Extension> modifierExtension;

  /// Unique identifier for this particular Contract Provision.
  Identifier identifier;

  /// When this Contract Provision was issued.
  DateTime issued;

  /// Extensions for issued
  Element extIssued;

  /// Relevant time or time-period when this Contract Provision is applicable.
  Period applies;

  /// The entity that the term applies to.
  CodeableConcept topicCodeableConcept;

  /// The entity that the term applies to.
  Reference topicReference;

  /// A legal clause or condition contained within a contract that requires one or both parties to perform a particular requirement by some specified time or prevents one or both parties from performing a particular requirement by some specified time.
  CodeableConcept type;

  /// A specialized legal clause or condition based on overarching contract type.
  CodeableConcept subType;

  /// Statement of a provision in a policy or a contract.
  String text;

  /// Extensions for text
  Element extText;

  /// Security labels that protect the handling of information about the term and its elements, which may be specifically identified..
  List<ContractSecurityLabel> securityLabel;

  /// The matter of concern in the context of this provision of the agrement.
  ContractOffer offer;

  /// Contract Term Asset List.
  List<ContractAsset> asset;

  /// An actor taking a role in an activity for which it can be assigned some degree of responsibility for the activity taking place.
  List<ContractAction> action;

  /// Nested group of Contract Provisions.
  List<ContractTerm> group;

  ContractTerm.fromJSON(Map json) {
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
    this.identifier = json['identifier'] == null
        ? null
        : FHIRObjectFactory.buildFromJSON('Identifier', json['identifier']);
    if (json['issued'] != null) {
      this.issued = DateTime.parse(json['issued']);
    }
    this.extIssued = json['_issued'] == null
        ? null
        : FHIRObjectFactory.buildFromJSON('Element', json['_issued']);
    this.applies = json['applies'] == null
        ? null
        : FHIRObjectFactory.buildFromJSON('Period', json['applies']);
    this.topicCodeableConcept = json['topicCodeableConcept'] == null
        ? null
        : FHIRObjectFactory.buildFromJSON(
            'CodeableConcept', json['topicCodeableConcept']);
    this.topicReference = json['topicReference'] == null
        ? null
        : FHIRObjectFactory.buildFromJSON('Reference', json['topicReference']);
    this.type = json['type'] == null
        ? null
        : FHIRObjectFactory.buildFromJSON('CodeableConcept', json['type']);
    this.subType = json['subType'] == null
        ? null
        : FHIRObjectFactory.buildFromJSON('CodeableConcept', json['subType']);
    this.text = json['text'];
    this.extText = json['_text'] == null
        ? null
        : FHIRObjectFactory.buildFromJSON('Element', json['_text']);
    this.securityLabel = List<ContractSecurityLabel>();
    if (json['securityLabel'] != null && json['securityLabel'].length > 0) {
      if (json['securityLabel'] is List) {
        json['securityLabel'].forEach((i) {
          this
              .securityLabel
              .add(FHIRObjectFactory.buildFromJSON('ContractSecurityLabel', i));
        });
      } else {
        // this handles the case when the list only has one object and does not return as a list
        var i = json['securityLabel'];
        this
            .securityLabel
            .add(FHIRObjectFactory.buildFromJSON('ContractSecurityLabel', i));
      }
    }
    this.offer = json['offer'] == null
        ? null
        : FHIRObjectFactory.buildFromJSON('ContractOffer', json['offer']);
    this.asset = List<ContractAsset>();
    if (json['asset'] != null && json['asset'].length > 0) {
      if (json['asset'] is List) {
        json['asset'].forEach((i) {
          this.asset.add(FHIRObjectFactory.buildFromJSON('ContractAsset', i));
        });
      } else {
        // this handles the case when the list only has one object and does not return as a list
        var i = json['asset'];
        this.asset.add(FHIRObjectFactory.buildFromJSON('ContractAsset', i));
      }
    }
    this.action = List<ContractAction>();
    if (json['action'] != null && json['action'].length > 0) {
      if (json['action'] is List) {
        json['action'].forEach((i) {
          this.action.add(FHIRObjectFactory.buildFromJSON('ContractAction', i));
        });
      } else {
        // this handles the case when the list only has one object and does not return as a list
        var i = json['action'];
        this.action.add(FHIRObjectFactory.buildFromJSON('ContractAction', i));
      }
    }
    this.group = List<ContractTerm>();
    if (json['group'] != null && json['group'].length > 0) {
      if (json['group'] is List) {
        json['group'].forEach((i) {
          this.group.add(FHIRObjectFactory.buildFromJSON('ContractTerm', i));
        });
      } else {
        // this handles the case when the list only has one object and does not return as a list
        var i = json['group'];
        this.group.add(FHIRObjectFactory.buildFromJSON('ContractTerm', i));
      }
    }
  }
}
