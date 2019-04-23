import 'extension.dart';
import 'fhir_object_factory.dart';
import 'reference.dart';
import 'codeable_concept.dart';
import 'element.dart';
/// Describes validation requirements, source(s), status and dates for one or more elements.
class VerificationResultPrimarySource {
    /// Unique id for the element within a resource (for internal references). This may be any string value that does not contain spaces.
    String id;
    /// May be used to represent additional information that is not part of the basic definition of the element. To make the use of extensions safe and manageable, there is a strict set of governance  applied to the definition and use of extensions. Though any implementer can define an extension, there is a set of requirements that SHALL be met as part of the definition of the extension.
    List<Extension> extension;
    /// May be used to represent additional information that is not part of the basic definition of the element and that modifies the understanding of the element in which it is contained and/or the understanding of the containing element's descendants. Usually modifier elements provide negation or qualification. To make the use of extensions safe and manageable, there is a strict set of governance applied to the definition and use of extensions. Though any implementer can define an extension, there is a set of requirements that SHALL be met as part of the definition of the extension. Applications processing a resource are required to check for modifier extensions.
    /// 
    /// Modifier extensions SHALL NOT change the meaning of any elements on Resource or DomainResource (including cannot change the meaning of modifierExtension itself).
    List<Extension> modifierExtension;
    /// Reference to the primary source.
    Reference who;
    /// Type of primary source (License Board; Primary Education; Continuing Education; Postal Service; Relationship owner; Registration Authority; legal source; issuing source; authoritative source).
    List<CodeableConcept> type;
    /// Method for communicating with the primary source (manual; API; Push).
    List<CodeableConcept> communicationMethod;
    /// Status of the validation of the target against the primary source (successful; failed; unknown).
    CodeableConcept validationStatus;
    /// When the target was validated against the primary source.
    DateTime validationDate;
    /// Extensions for validationDate
    Element extValidationDate;
    /// Ability of the primary source to push updates/alerts (yes; no; undetermined).
    CodeableConcept canPushUpdates;
    /// Type of alerts/updates the primary source can send (specific requested changes; any changes; as defined by source).
    List<CodeableConcept> pushTypeAvailable;
 
    VerificationResultPrimarySource.fromJSON( Map json ){
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
        this.who = json['who'] == null ? null : FHIRObjectFactory.buildFromJSON('Reference', json['who']);
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
        this.communicationMethod = List<CodeableConcept>();
        if (json['communicationMethod'] != null && json['communicationMethod'].length > 0) {
          if( json['communicationMethod'] is List ){
            json['communicationMethod'].forEach((i){
              this.communicationMethod.add(FHIRObjectFactory.buildFromJSON('CodeableConcept', i));
            });
          } else {
            // this handles the case when the list only has one object and does not return as a list
            var i = json['communicationMethod'];
            this.communicationMethod.add(FHIRObjectFactory.buildFromJSON('CodeableConcept', i));
          }          
        }
        this.validationStatus = json['validationStatus'] == null ? null : FHIRObjectFactory.buildFromJSON('CodeableConcept', json['validationStatus']);
        if( json['validationDate'] != null ) { this.validationDate = DateTime.parse(json['validationDate']);}
        this.extValidationDate = json['_validationDate'] == null ? null : FHIRObjectFactory.buildFromJSON('Element', json['_validationDate']);
        this.canPushUpdates = json['canPushUpdates'] == null ? null : FHIRObjectFactory.buildFromJSON('CodeableConcept', json['canPushUpdates']);
        this.pushTypeAvailable = List<CodeableConcept>();
        if (json['pushTypeAvailable'] != null && json['pushTypeAvailable'].length > 0) {
          if( json['pushTypeAvailable'] is List ){
            json['pushTypeAvailable'].forEach((i){
              this.pushTypeAvailable.add(FHIRObjectFactory.buildFromJSON('CodeableConcept', i));
            });
          } else {
            // this handles the case when the list only has one object and does not return as a list
            var i = json['pushTypeAvailable'];
            this.pushTypeAvailable.add(FHIRObjectFactory.buildFromJSON('CodeableConcept', i));
          }          
        }
    }
}
