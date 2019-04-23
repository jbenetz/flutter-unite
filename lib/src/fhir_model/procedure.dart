import 'meta.dart';
import 'fhir_object_factory.dart';
import 'element.dart';
import 'narrative.dart';
import 'extension.dart';
import 'identifier.dart';
import 'reference.dart';
import 'codeable_concept.dart';
import 'period.dart';
import 'age.dart';
import 'range.dart';
import 'procedure_performer.dart';
import 'annotation.dart';
import 'procedure_focal_device.dart';
/// An action that is or was performed on or for a patient. This can be a physical intervention like an operation, or less invasive like long term services, counseling, or hypnotherapy.
class Procedure {
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
    /// Business identifiers assigned to this procedure by the performer or other systems which remain constant as the resource is updated and is propagated from server to server.
    List<Identifier> identifier;
    /// The URL pointing to a FHIR-defined protocol, guideline, order set or other definition that is adhered to in whole or in part by this Procedure.
    List<String> instantiatesCanonical;
    /// The URL pointing to an externally maintained protocol, guideline, order set or other definition that is adhered to in whole or in part by this Procedure.
    List<String> instantiatesUri;
    /// Extensions for instantiatesUri
    List<Element> extInstantiatesUri;
    /// A reference to a resource that contains details of the request for this procedure.
    List<Reference> basedOn;
    /// A larger event of which this particular procedure is a component or step.
    List<Reference> partOf;
    /// A code specifying the state of the procedure. Generally, this will be the in-progress or completed state.
    String status;
    /// Extensions for status
    Element extStatus;
    /// Captures the reason for the current state of the procedure.
    CodeableConcept statusReason;
    /// A code that classifies the procedure for searching, sorting and display purposes (e.g. "Surgical Procedure").
    CodeableConcept category;
    /// The specific procedure that is performed. Use text if the exact nature of the procedure cannot be coded (e.g. "Laparoscopic Appendectomy").
    CodeableConcept code;
    /// The person, animal or group on which the procedure was performed.
    Reference subject;
    /// The Encounter during which this Procedure was created or performed or to which the creation of this record is tightly associated.
    Reference encounter;
    /// Extensions for performedDateTime
    Element extPerformedDateTime;
    /// Estimated or actual date, date-time, period, or age when the procedure was performed.  Allows a period to support complex procedures that span more than one date, and also allows for the length of the procedure to be captured.
    Period performedPeriod;
    /// Extensions for performedString
    Element extPerformedString;
    /// Estimated or actual date, date-time, period, or age when the procedure was performed.  Allows a period to support complex procedures that span more than one date, and also allows for the length of the procedure to be captured.
    Age performedAge;
    /// Estimated or actual date, date-time, period, or age when the procedure was performed.  Allows a period to support complex procedures that span more than one date, and also allows for the length of the procedure to be captured.
    Range performedRange;
    /// Individual who recorded the record and takes responsibility for its content.
    Reference recorder;
    /// Individual who is making the procedure statement.
    Reference asserter;
    /// Limited to "real" people rather than equipment.
    List<ProcedurePerformer> performer;
    /// The location where the procedure actually happened.  E.g. a newborn at home, a tracheostomy at a restaurant.
    Reference location;
    /// The coded reason why the procedure was performed. This may be a coded entity of some type, or may simply be present as text.
    List<CodeableConcept> reasonCode;
    /// The justification of why the procedure was performed.
    List<Reference> reasonReference;
    /// Detailed and structured anatomical location information. Multiple locations are allowed - e.g. multiple punch biopsies of a lesion.
    List<CodeableConcept> bodySite;
    /// The outcome of the procedure - did it resolve the reasons for the procedure being performed?
    CodeableConcept outcome;
    /// This could be a histology result, pathology report, surgical report, etc.
    List<Reference> report;
    /// Any complications that occurred during the procedure, or in the immediate post-performance period. These are generally tracked separately from the notes, which will typically describe the procedure itself rather than any 'post procedure' issues.
    List<CodeableConcept> complication;
    /// Any complications that occurred during the procedure, or in the immediate post-performance period.
    List<Reference> complicationDetail;
    /// If the procedure required specific follow up - e.g. removal of sutures. The follow up may be represented as a simple note or could potentially be more complex, in which case the CarePlan resource can be used.
    List<CodeableConcept> followUp;
    /// Any other notes and comments about the procedure.
    List<Annotation> note;
    /// A device that is implanted, removed or otherwise manipulated (calibration, battery replacement, fitting a prosthesis, attaching a wound-vac, etc.) as a focal portion of the Procedure.
    List<ProcedureFocalDevice> focalDevice;
    /// Identifies medications, devices and any other substance used as part of the procedure.
    List<Reference> usedReference;
    /// Identifies coded items that were used as part of the procedure.
    List<CodeableConcept> usedCode;
 
    Procedure.fromJSON( Map json ){
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
        this.instantiatesCanonical = List<String>();
        if (json['instantiatesCanonical'] != null && json['instantiatesCanonical'].length > 0) {
          if( json['instantiatesCanonical'] is List ){
            json['instantiatesCanonical'].forEach((i){
              this.instantiatesCanonical.add(i);
            });
          } else {
            // this handles the case when the list only has one object and does not return as a list
            var i = json['instantiatesCanonical'];
            this.instantiatesCanonical.add(i);
          }          
        }
        this.instantiatesUri = List<String>();
        if (json['instantiatesUri'] != null && json['instantiatesUri'].length > 0) {
          if( json['instantiatesUri'] is List ){
            json['instantiatesUri'].forEach((i){
              this.instantiatesUri.add(i);
            });
          } else {
            // this handles the case when the list only has one object and does not return as a list
            var i = json['instantiatesUri'];
            this.instantiatesUri.add(i);
          }          
        }
        this.extInstantiatesUri = List<Element>();
        if (json['_instantiatesUri'] != null && json['_instantiatesUri'].length > 0) {
          if( json['_instantiatesUri'] is List ){
            json['_instantiatesUri'].forEach((i){
              this.extInstantiatesUri.add(FHIRObjectFactory.buildFromJSON('Element', i));
            });
          } else {
            // this handles the case when the list only has one object and does not return as a list
            var i = json['_instantiatesUri'];
            this.extInstantiatesUri.add(FHIRObjectFactory.buildFromJSON('Element', i));
          }          
        }
        this.basedOn = List<Reference>();
        if (json['basedOn'] != null && json['basedOn'].length > 0) {
          if( json['basedOn'] is List ){
            json['basedOn'].forEach((i){
              this.basedOn.add(FHIRObjectFactory.buildFromJSON('Reference', i));
            });
          } else {
            // this handles the case when the list only has one object and does not return as a list
            var i = json['basedOn'];
            this.basedOn.add(FHIRObjectFactory.buildFromJSON('Reference', i));
          }          
        }
        this.partOf = List<Reference>();
        if (json['partOf'] != null && json['partOf'].length > 0) {
          if( json['partOf'] is List ){
            json['partOf'].forEach((i){
              this.partOf.add(FHIRObjectFactory.buildFromJSON('Reference', i));
            });
          } else {
            // this handles the case when the list only has one object and does not return as a list
            var i = json['partOf'];
            this.partOf.add(FHIRObjectFactory.buildFromJSON('Reference', i));
          }          
        }
        this.status = json['status'];
        this.extStatus = json['_status'] == null ? null : FHIRObjectFactory.buildFromJSON('Element', json['_status']);
        this.statusReason = json['statusReason'] == null ? null : FHIRObjectFactory.buildFromJSON('CodeableConcept', json['statusReason']);
        this.category = json['category'] == null ? null : FHIRObjectFactory.buildFromJSON('CodeableConcept', json['category']);
        this.code = json['code'] == null ? null : FHIRObjectFactory.buildFromJSON('CodeableConcept', json['code']);
        this.subject = json['subject'] == null ? null : FHIRObjectFactory.buildFromJSON('Reference', json['subject']);
        this.encounter = json['encounter'] == null ? null : FHIRObjectFactory.buildFromJSON('Reference', json['encounter']);
        this.extPerformedDateTime = json['_performedDateTime'] == null ? null : FHIRObjectFactory.buildFromJSON('Element', json['_performedDateTime']);
        this.performedPeriod = json['performedPeriod'] == null ? null : FHIRObjectFactory.buildFromJSON('Period', json['performedPeriod']);
        this.extPerformedString = json['_performedString'] == null ? null : FHIRObjectFactory.buildFromJSON('Element', json['_performedString']);
        this.performedAge = json['performedAge'] == null ? null : FHIRObjectFactory.buildFromJSON('Age', json['performedAge']);
        this.performedRange = json['performedRange'] == null ? null : FHIRObjectFactory.buildFromJSON('Range', json['performedRange']);
        this.recorder = json['recorder'] == null ? null : FHIRObjectFactory.buildFromJSON('Reference', json['recorder']);
        this.asserter = json['asserter'] == null ? null : FHIRObjectFactory.buildFromJSON('Reference', json['asserter']);
        this.performer = List<ProcedurePerformer>();
        if (json['performer'] != null && json['performer'].length > 0) {
          if( json['performer'] is List ){
            json['performer'].forEach((i){
              this.performer.add(FHIRObjectFactory.buildFromJSON('ProcedurePerformer', i));
            });
          } else {
            // this handles the case when the list only has one object and does not return as a list
            var i = json['performer'];
            this.performer.add(FHIRObjectFactory.buildFromJSON('ProcedurePerformer', i));
          }          
        }
        this.location = json['location'] == null ? null : FHIRObjectFactory.buildFromJSON('Reference', json['location']);
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
        this.bodySite = List<CodeableConcept>();
        if (json['bodySite'] != null && json['bodySite'].length > 0) {
          if( json['bodySite'] is List ){
            json['bodySite'].forEach((i){
              this.bodySite.add(FHIRObjectFactory.buildFromJSON('CodeableConcept', i));
            });
          } else {
            // this handles the case when the list only has one object and does not return as a list
            var i = json['bodySite'];
            this.bodySite.add(FHIRObjectFactory.buildFromJSON('CodeableConcept', i));
          }          
        }
        this.outcome = json['outcome'] == null ? null : FHIRObjectFactory.buildFromJSON('CodeableConcept', json['outcome']);
        this.report = List<Reference>();
        if (json['report'] != null && json['report'].length > 0) {
          if( json['report'] is List ){
            json['report'].forEach((i){
              this.report.add(FHIRObjectFactory.buildFromJSON('Reference', i));
            });
          } else {
            // this handles the case when the list only has one object and does not return as a list
            var i = json['report'];
            this.report.add(FHIRObjectFactory.buildFromJSON('Reference', i));
          }          
        }
        this.complication = List<CodeableConcept>();
        if (json['complication'] != null && json['complication'].length > 0) {
          if( json['complication'] is List ){
            json['complication'].forEach((i){
              this.complication.add(FHIRObjectFactory.buildFromJSON('CodeableConcept', i));
            });
          } else {
            // this handles the case when the list only has one object and does not return as a list
            var i = json['complication'];
            this.complication.add(FHIRObjectFactory.buildFromJSON('CodeableConcept', i));
          }          
        }
        this.complicationDetail = List<Reference>();
        if (json['complicationDetail'] != null && json['complicationDetail'].length > 0) {
          if( json['complicationDetail'] is List ){
            json['complicationDetail'].forEach((i){
              this.complicationDetail.add(FHIRObjectFactory.buildFromJSON('Reference', i));
            });
          } else {
            // this handles the case when the list only has one object and does not return as a list
            var i = json['complicationDetail'];
            this.complicationDetail.add(FHIRObjectFactory.buildFromJSON('Reference', i));
          }          
        }
        this.followUp = List<CodeableConcept>();
        if (json['followUp'] != null && json['followUp'].length > 0) {
          if( json['followUp'] is List ){
            json['followUp'].forEach((i){
              this.followUp.add(FHIRObjectFactory.buildFromJSON('CodeableConcept', i));
            });
          } else {
            // this handles the case when the list only has one object and does not return as a list
            var i = json['followUp'];
            this.followUp.add(FHIRObjectFactory.buildFromJSON('CodeableConcept', i));
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
        this.focalDevice = List<ProcedureFocalDevice>();
        if (json['focalDevice'] != null && json['focalDevice'].length > 0) {
          if( json['focalDevice'] is List ){
            json['focalDevice'].forEach((i){
              this.focalDevice.add(FHIRObjectFactory.buildFromJSON('ProcedureFocalDevice', i));
            });
          } else {
            // this handles the case when the list only has one object and does not return as a list
            var i = json['focalDevice'];
            this.focalDevice.add(FHIRObjectFactory.buildFromJSON('ProcedureFocalDevice', i));
          }          
        }
        this.usedReference = List<Reference>();
        if (json['usedReference'] != null && json['usedReference'].length > 0) {
          if( json['usedReference'] is List ){
            json['usedReference'].forEach((i){
              this.usedReference.add(FHIRObjectFactory.buildFromJSON('Reference', i));
            });
          } else {
            // this handles the case when the list only has one object and does not return as a list
            var i = json['usedReference'];
            this.usedReference.add(FHIRObjectFactory.buildFromJSON('Reference', i));
          }          
        }
        this.usedCode = List<CodeableConcept>();
        if (json['usedCode'] != null && json['usedCode'].length > 0) {
          if( json['usedCode'] is List ){
            json['usedCode'].forEach((i){
              this.usedCode.add(FHIRObjectFactory.buildFromJSON('CodeableConcept', i));
            });
          } else {
            // this handles the case when the list only has one object and does not return as a list
            var i = json['usedCode'];
            this.usedCode.add(FHIRObjectFactory.buildFromJSON('CodeableConcept', i));
          }          
        }
    }
}
