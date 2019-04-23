import 'meta.dart';
import 'fhir_object_factory.dart';
import 'element.dart';
import 'narrative.dart';
import 'extension.dart';
import 'identifier.dart';
import 'reference.dart';
import 'codeable_concept.dart';
import 'period.dart';
import 'diagnostic_report_media.dart';
import 'attachment.dart';
/// The findings and interpretation of diagnostic  tests performed on patients, groups of patients, devices, and locations, and/or specimens derived from these. The report includes clinical context such as requesting and provider information, and some mix of atomic results, images, textual and coded interpretations, and formatted representation of diagnostic reports.
class DiagnosticReport {
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
    /// Identifiers assigned to this report by the performer or other systems.
    List<Identifier> identifier;
    /// Details concerning a service requested.
    List<Reference> basedOn;
    /// The status of the diagnostic report.
    String status;
    /// Extensions for status
    Element extStatus;
    /// A code that classifies the clinical discipline, department or diagnostic service that created the report (e.g. cardiology, biochemistry, hematology, MRI). This is used for searching, sorting and display purposes.
    List<CodeableConcept> category;
    /// A code or name that describes this diagnostic report.
    CodeableConcept code;
    /// The subject of the report. Usually, but not always, this is a patient. However, diagnostic services also perform analyses on specimens collected from a variety of other sources.
    Reference subject;
    /// The healthcare event  (e.g. a patient and healthcare provider interaction) which this DiagnosticReport is about.
    Reference encounter;
    /// Extensions for effectiveDateTime
    Element extEffectiveDateTime;
    /// The time or time-period the observed values are related to. When the subject of the report is a patient, this is usually either the time of the procedure or of specimen collection(s), but very often the source of the date/time is not known, only the date/time itself.
    Period effectivePeriod;
    /// The date and time that this version of the report was made available to providers, typically after the report was reviewed and verified.
    DateTime issued;
    /// Extensions for issued
    Element extIssued;
    /// The diagnostic service that is responsible for issuing the report.
    List<Reference> performer;
    /// The practitioner or organization that is responsible for the report's conclusions and interpretations.
    List<Reference> resultsInterpreter;
    /// Details about the specimens on which this diagnostic report is based.
    List<Reference> specimen;
    /// [Observations](observation.html)  that are part of this diagnostic report.
    List<Reference> result;
    /// One or more links to full details of any imaging performed during the diagnostic investigation. Typically, this is imaging performed by DICOM enabled modalities, but this is not required. A fully enabled PACS viewer can use this information to provide views of the source images.
    List<Reference> imagingStudy;
    /// A list of key images associated with this report. The images are generally created during the diagnostic process, and may be directly of the patient, or of treated specimens (i.e. slides of interest).
    List<DiagnosticReportMedia> media;
    /// Concise and clinically contextualized summary conclusion (interpretation/impression) of the diagnostic report.
    String conclusion;
    /// Extensions for conclusion
    Element extConclusion;
    /// One or more codes that represent the summary conclusion (interpretation/impression) of the diagnostic report.
    List<CodeableConcept> conclusionCode;
    /// Rich text representation of the entire result as issued by the diagnostic service. Multiple formats are allowed but they SHALL be semantically equivalent.
    List<Attachment> presentedForm;
 
    DiagnosticReport.fromJSON( Map json ){
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
        this.status = json['status'];
        this.extStatus = json['_status'] == null ? null : FHIRObjectFactory.buildFromJSON('Element', json['_status']);
        this.category = List<CodeableConcept>();
        if (json['category'] != null && json['category'].length > 0) {
          if( json['category'] is List ){
            json['category'].forEach((i){
              this.category.add(FHIRObjectFactory.buildFromJSON('CodeableConcept', i));
            });
          } else {
            // this handles the case when the list only has one object and does not return as a list
            var i = json['category'];
            this.category.add(FHIRObjectFactory.buildFromJSON('CodeableConcept', i));
          }          
        }
        this.code = json['code'] == null ? null : FHIRObjectFactory.buildFromJSON('CodeableConcept', json['code']);
        this.subject = json['subject'] == null ? null : FHIRObjectFactory.buildFromJSON('Reference', json['subject']);
        this.encounter = json['encounter'] == null ? null : FHIRObjectFactory.buildFromJSON('Reference', json['encounter']);
        this.extEffectiveDateTime = json['_effectiveDateTime'] == null ? null : FHIRObjectFactory.buildFromJSON('Element', json['_effectiveDateTime']);
        this.effectivePeriod = json['effectivePeriod'] == null ? null : FHIRObjectFactory.buildFromJSON('Period', json['effectivePeriod']);
        if( json['issued'] != null ) { this.issued = DateTime.parse(json['issued']);}
        this.extIssued = json['_issued'] == null ? null : FHIRObjectFactory.buildFromJSON('Element', json['_issued']);
        this.performer = List<Reference>();
        if (json['performer'] != null && json['performer'].length > 0) {
          if( json['performer'] is List ){
            json['performer'].forEach((i){
              this.performer.add(FHIRObjectFactory.buildFromJSON('Reference', i));
            });
          } else {
            // this handles the case when the list only has one object and does not return as a list
            var i = json['performer'];
            this.performer.add(FHIRObjectFactory.buildFromJSON('Reference', i));
          }          
        }
        this.resultsInterpreter = List<Reference>();
        if (json['resultsInterpreter'] != null && json['resultsInterpreter'].length > 0) {
          if( json['resultsInterpreter'] is List ){
            json['resultsInterpreter'].forEach((i){
              this.resultsInterpreter.add(FHIRObjectFactory.buildFromJSON('Reference', i));
            });
          } else {
            // this handles the case when the list only has one object and does not return as a list
            var i = json['resultsInterpreter'];
            this.resultsInterpreter.add(FHIRObjectFactory.buildFromJSON('Reference', i));
          }          
        }
        this.specimen = List<Reference>();
        if (json['specimen'] != null && json['specimen'].length > 0) {
          if( json['specimen'] is List ){
            json['specimen'].forEach((i){
              this.specimen.add(FHIRObjectFactory.buildFromJSON('Reference', i));
            });
          } else {
            // this handles the case when the list only has one object and does not return as a list
            var i = json['specimen'];
            this.specimen.add(FHIRObjectFactory.buildFromJSON('Reference', i));
          }          
        }
        this.result = List<Reference>();
        if (json['result'] != null && json['result'].length > 0) {
          if( json['result'] is List ){
            json['result'].forEach((i){
              this.result.add(FHIRObjectFactory.buildFromJSON('Reference', i));
            });
          } else {
            // this handles the case when the list only has one object and does not return as a list
            var i = json['result'];
            this.result.add(FHIRObjectFactory.buildFromJSON('Reference', i));
          }          
        }
        this.imagingStudy = List<Reference>();
        if (json['imagingStudy'] != null && json['imagingStudy'].length > 0) {
          if( json['imagingStudy'] is List ){
            json['imagingStudy'].forEach((i){
              this.imagingStudy.add(FHIRObjectFactory.buildFromJSON('Reference', i));
            });
          } else {
            // this handles the case when the list only has one object and does not return as a list
            var i = json['imagingStudy'];
            this.imagingStudy.add(FHIRObjectFactory.buildFromJSON('Reference', i));
          }          
        }
        this.media = List<DiagnosticReportMedia>();
        if (json['media'] != null && json['media'].length > 0) {
          if( json['media'] is List ){
            json['media'].forEach((i){
              this.media.add(FHIRObjectFactory.buildFromJSON('DiagnosticReportMedia', i));
            });
          } else {
            // this handles the case when the list only has one object and does not return as a list
            var i = json['media'];
            this.media.add(FHIRObjectFactory.buildFromJSON('DiagnosticReportMedia', i));
          }          
        }
        this.conclusion = json['conclusion'];
        this.extConclusion = json['_conclusion'] == null ? null : FHIRObjectFactory.buildFromJSON('Element', json['_conclusion']);
        this.conclusionCode = List<CodeableConcept>();
        if (json['conclusionCode'] != null && json['conclusionCode'].length > 0) {
          if( json['conclusionCode'] is List ){
            json['conclusionCode'].forEach((i){
              this.conclusionCode.add(FHIRObjectFactory.buildFromJSON('CodeableConcept', i));
            });
          } else {
            // this handles the case when the list only has one object and does not return as a list
            var i = json['conclusionCode'];
            this.conclusionCode.add(FHIRObjectFactory.buildFromJSON('CodeableConcept', i));
          }          
        }
        this.presentedForm = List<Attachment>();
        if (json['presentedForm'] != null && json['presentedForm'].length > 0) {
          if( json['presentedForm'] is List ){
            json['presentedForm'].forEach((i){
              this.presentedForm.add(FHIRObjectFactory.buildFromJSON('Attachment', i));
            });
          } else {
            // this handles the case when the list only has one object and does not return as a list
            var i = json['presentedForm'];
            this.presentedForm.add(FHIRObjectFactory.buildFromJSON('Attachment', i));
          }          
        }
    }
}
