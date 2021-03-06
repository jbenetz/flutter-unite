import 'meta.dart';
import 'fhir_object_factory.dart';
import 'element.dart';
import 'narrative.dart';
import 'extension.dart';
import 'reference.dart';
import 'codeable_concept.dart';
import 'timing.dart';
import 'verification_result_primary_source.dart';
import 'verification_result_attestation.dart';
import 'verification_result_validator.dart';
/// Describes validation requirements, source(s), status and dates for one or more elements.
class VerificationResult {
    /// The logical id of the resource, as used in the URL for the resource. Once assigned, this value never changes.
    String id;
    /// The metadata about the resource. This is content that is maintained by the infrastructure. Changes to the content might not always be associated with version changes to the resource.
    Meta meta;
    /// A reference to a set of rules that were followed when the resource was constructed, and which must be understood when processing the content. Often, this is a reference to an implementation guide that defines the special rules along with other profiles etc.
    String implicitRules;
    /// Extensions for implicitRules
    Element extImplicitRules;
    /// The base language in which the resource is written.
    String language;
    /// Extensions for language
    Element extLanguage;
    /// A human-readable narrative that contains a summary of the resource and can be used to represent the content of the resource to a human. The narrative need not encode all the structured data, but is required to contain sufficient detail to make it "clinically safe" for a human to just read the narrative. Resource definitions may define what content should be represented in the narrative to ensure clinical safety.
    Narrative text;
    /// May be used to represent additional information that is not part of the basic definition of the resource. To make the use of extensions safe and manageable, there is a strict set of governance  applied to the definition and use of extensions. Though any implementer can define an extension, there is a set of requirements that SHALL be met as part of the definition of the extension.
    List<Extension> extension;
    /// May be used to represent additional information that is not part of the basic definition of the resource and that modifies the understanding of the element that contains it and/or the understanding of the containing element's descendants. Usually modifier elements provide negation or qualification. To make the use of extensions safe and manageable, there is a strict set of governance applied to the definition and use of extensions. Though any implementer is allowed to define an extension, there is a set of requirements that SHALL be met as part of the definition of the extension. Applications processing a resource are required to check for modifier extensions.
    /// 
    /// Modifier extensions SHALL NOT change the meaning of any elements on Resource or DomainResource (including cannot change the meaning of modifierExtension itself).
    List<Extension> modifierExtension;
    /// A resource that was validated.
    List<Reference> target;
    /// The fhirpath location(s) within the resource that was validated.
    List<String> targetLocation;
    /// Extensions for targetLocation
    List<Element> extTargetLocation;
    /// The frequency with which the target must be validated (none; initial; periodic).
    CodeableConcept need;
    /// The validation status of the target (attested; validated; in process; requires revalidation; validation failed; revalidation failed).
    String status;
    /// Extensions for status
    Element extStatus;
    /// When the validation status was updated.
    DateTime statusDate;
    /// Extensions for statusDate
    Element extStatusDate;
    /// What the target is validated against (nothing; primary source; multiple sources).
    CodeableConcept validationType;
    /// The primary process by which the target is validated (edit check; value set; primary source; multiple sources; standalone; in context).
    List<CodeableConcept> validationProcess;
    /// Frequency of revalidation.
    Timing frequency;
    /// The date/time validation was last completed (including failed validations).
    DateTime lastPerformed;
    /// Extensions for lastPerformed
    Element extLastPerformed;
    /// The date when target is next validated, if appropriate.
    DateTime nextScheduled;
    /// Extensions for nextScheduled
    Element extNextScheduled;
    /// The result if validation fails (fatal; warning; record only; none).
    CodeableConcept failureAction;
    /// Information about the primary source(s) involved in validation.
    List<VerificationResultPrimarySource> primarySource;
    /// Information about the entity attesting to information.
    VerificationResultAttestation attestation;
    /// Information about the entity validating information.
    List<VerificationResultValidator> validator;
 
    VerificationResult.fromJSON( Map json ){
        this.id = json['id'];
        this.meta = json['meta'] == null ? null : FHIRObjectFactory.buildFromJSON('Meta', json['meta']);
        this.implicitRules = json['implicitRules'];
        this.extImplicitRules = json['_implicitRules'] == null ? null : FHIRObjectFactory.buildFromJSON('Element', json['_implicitRules']);
        this.language = json['language'];
        this.extLanguage = json['_language'] == null ? null : FHIRObjectFactory.buildFromJSON('Element', json['_language']);
        this.text = json['text'] == null ? null : FHIRObjectFactory.buildFromJSON('Narrative', json['text']);
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
        this.target = List<Reference>();
        if (json['target'] != null && json['target'].length > 0) {
          if( json['target'] is List ){
            json['target'].forEach((i){
              this.target.add(FHIRObjectFactory.buildFromJSON('Reference', i));
            });
          } else {
            // this handles the case when the list only has one object and does not return as a list
            var i = json['target'];
            this.target.add(FHIRObjectFactory.buildFromJSON('Reference', i));
          }          
        }
        this.targetLocation = List<String>();
        if (json['targetLocation'] != null && json['targetLocation'].length > 0) {
          if( json['targetLocation'] is List ){
            json['targetLocation'].forEach((i){
              this.targetLocation.add(i);
            });
          } else {
            // this handles the case when the list only has one object and does not return as a list
            var i = json['targetLocation'];
            this.targetLocation.add(i);
          }          
        }
        this.extTargetLocation = List<Element>();
        if (json['_targetLocation'] != null && json['_targetLocation'].length > 0) {
          if( json['_targetLocation'] is List ){
            json['_targetLocation'].forEach((i){
              this.extTargetLocation.add(FHIRObjectFactory.buildFromJSON('Element', i));
            });
          } else {
            // this handles the case when the list only has one object and does not return as a list
            var i = json['_targetLocation'];
            this.extTargetLocation.add(FHIRObjectFactory.buildFromJSON('Element', i));
          }          
        }
        this.need = json['need'] == null ? null : FHIRObjectFactory.buildFromJSON('CodeableConcept', json['need']);
        this.status = json['status'];
        this.extStatus = json['_status'] == null ? null : FHIRObjectFactory.buildFromJSON('Element', json['_status']);
        if( json['statusDate'] != null ) { this.statusDate = DateTime.parse(json['statusDate']);}
        this.extStatusDate = json['_statusDate'] == null ? null : FHIRObjectFactory.buildFromJSON('Element', json['_statusDate']);
        this.validationType = json['validationType'] == null ? null : FHIRObjectFactory.buildFromJSON('CodeableConcept', json['validationType']);
        this.validationProcess = List<CodeableConcept>();
        if (json['validationProcess'] != null && json['validationProcess'].length > 0) {
          if( json['validationProcess'] is List ){
            json['validationProcess'].forEach((i){
              this.validationProcess.add(FHIRObjectFactory.buildFromJSON('CodeableConcept', i));
            });
          } else {
            // this handles the case when the list only has one object and does not return as a list
            var i = json['validationProcess'];
            this.validationProcess.add(FHIRObjectFactory.buildFromJSON('CodeableConcept', i));
          }          
        }
        this.frequency = json['frequency'] == null ? null : FHIRObjectFactory.buildFromJSON('Timing', json['frequency']);
        if( json['lastPerformed'] != null ) { this.lastPerformed = DateTime.parse(json['lastPerformed']);}
        this.extLastPerformed = json['_lastPerformed'] == null ? null : FHIRObjectFactory.buildFromJSON('Element', json['_lastPerformed']);
        if( json['nextScheduled'] != null ) { this.nextScheduled = DateTime.parse(json['nextScheduled']);}
        this.extNextScheduled = json['_nextScheduled'] == null ? null : FHIRObjectFactory.buildFromJSON('Element', json['_nextScheduled']);
        this.failureAction = json['failureAction'] == null ? null : FHIRObjectFactory.buildFromJSON('CodeableConcept', json['failureAction']);
        this.primarySource = List<VerificationResultPrimarySource>();
        if (json['primarySource'] != null && json['primarySource'].length > 0) {
          if( json['primarySource'] is List ){
            json['primarySource'].forEach((i){
              this.primarySource.add(FHIRObjectFactory.buildFromJSON('VerificationResultPrimarySource', i));
            });
          } else {
            // this handles the case when the list only has one object and does not return as a list
            var i = json['primarySource'];
            this.primarySource.add(FHIRObjectFactory.buildFromJSON('VerificationResultPrimarySource', i));
          }          
        }
        this.attestation = json['attestation'] == null ? null : FHIRObjectFactory.buildFromJSON('VerificationResultAttestation', json['attestation']);
        this.validator = List<VerificationResultValidator>();
        if (json['validator'] != null && json['validator'].length > 0) {
          if( json['validator'] is List ){
            json['validator'].forEach((i){
              this.validator.add(FHIRObjectFactory.buildFromJSON('VerificationResultValidator', i));
            });
          } else {
            // this handles the case when the list only has one object and does not return as a list
            var i = json['validator'];
            this.validator.add(FHIRObjectFactory.buildFromJSON('VerificationResultValidator', i));
          }          
        }
    }
}
