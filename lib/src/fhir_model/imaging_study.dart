import 'meta.dart';
import 'fhir_object_factory.dart';
import 'element.dart';
import 'narrative.dart';
import 'extension.dart';
import 'identifier.dart';
import 'coding.dart';
import 'reference.dart';
import 'codeable_concept.dart';
import 'annotation.dart';
import 'imaging_study_series.dart';
/// Representation of the content produced in a DICOM imaging study. A study comprises a set of series, each of which includes a set of Service-Object Pair Instances (SOP Instances - images or other data) acquired or produced in a common context.  A series is of only one modality (e.g. X-ray, CT, MR, ultrasound), but a study may have multiple series of different modalities.
class ImagingStudy {
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
    /// Identifiers for the ImagingStudy such as DICOM Study Instance UID, and Accession Number.
    List<Identifier> identifier;
    /// The current state of the ImagingStudy.
    String status;
    /// Extensions for status
    Element extStatus;
    /// A list of all the series.modality values that are actual acquisition modalities, i.e. those in the DICOM Context Group 29 (value set OID 1.2.840.10008.6.1.19).
    List<Coding> modality;
    /// The subject, typically a patient, of the imaging study.
    Reference subject;
    /// The healthcare event (e.g. a patient and healthcare provider interaction) during which this ImagingStudy is made.
    Reference encounter;
    /// Date and time the study started.
    DateTime started;
    /// Extensions for started
    Element extStarted;
    /// A list of the diagnostic requests that resulted in this imaging study being performed.
    List<Reference> basedOn;
    /// The requesting/referring physician.
    Reference referrer;
    /// Who read the study and interpreted the images or other content.
    List<Reference> interpreter;
    /// The network service providing access (e.g., query, view, or retrieval) for the study. See implementation notes for information about using DICOM endpoints. A study-level endpoint applies to each series in the study, unless overridden by a series-level endpoint with the same Endpoint.connectionType.
    List<Reference> endpoint;
    /// Number of Series in the Study. This value given may be larger than the number of series elements this Resource contains due to resource availability, security, or other factors. This element should be present if any series elements are present.
    int numberOfSeries;
    /// Extensions for numberOfSeries
    Element extNumberOfSeries;
    /// Number of SOP Instances in Study. This value given may be larger than the number of instance elements this resource contains due to resource availability, security, or other factors. This element should be present if any instance elements are present.
    int numberOfInstances;
    /// Extensions for numberOfInstances
    Element extNumberOfInstances;
    /// The procedure which this ImagingStudy was part of.
    Reference procedureReference;
    /// The code for the performed procedure type.
    List<CodeableConcept> procedureCode;
    /// The principal physical location where the ImagingStudy was performed.
    Reference location;
    /// Description of clinical condition indicating why the ImagingStudy was requested.
    List<CodeableConcept> reasonCode;
    /// Indicates another resource whose existence justifies this Study.
    List<Reference> reasonReference;
    /// Per the recommended DICOM mapping, this element is derived from the Study Description attribute (0008,1030). Observations or findings about the imaging study should be recorded in another resource, e.g. Observation, and not in this element.
    List<Annotation> note;
    /// The Imaging Manager description of the study. Institution-generated description or classification of the Study (component) performed.
    String description;
    /// Extensions for description
    Element extDescription;
    /// Each study has one or more series of images or other content.
    List<ImagingStudySeries> series;
 
    ImagingStudy.fromJSON( Map json ){
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
        this.status = json['status'];
        this.extStatus = json['_status'] == null ? null : FHIRObjectFactory.buildFromJSON('Element', json['_status']);
        this.modality = List<Coding>();
        if (json['modality'] != null && json['modality'].length > 0) {
          if( json['modality'] is List ){
            json['modality'].forEach((i){
              this.modality.add(FHIRObjectFactory.buildFromJSON('Coding', i));
            });
          } else {
            // this handles the case when the list only has one object and does not return as a list
            var i = json['modality'];
            this.modality.add(FHIRObjectFactory.buildFromJSON('Coding', i));
          }          
        }
        this.subject = json['subject'] == null ? null : FHIRObjectFactory.buildFromJSON('Reference', json['subject']);
        this.encounter = json['encounter'] == null ? null : FHIRObjectFactory.buildFromJSON('Reference', json['encounter']);
        if( json['started'] != null ) { this.started = DateTime.parse(json['started']);}
        this.extStarted = json['_started'] == null ? null : FHIRObjectFactory.buildFromJSON('Element', json['_started']);
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
        this.referrer = json['referrer'] == null ? null : FHIRObjectFactory.buildFromJSON('Reference', json['referrer']);
        this.interpreter = List<Reference>();
        if (json['interpreter'] != null && json['interpreter'].length > 0) {
          if( json['interpreter'] is List ){
            json['interpreter'].forEach((i){
              this.interpreter.add(FHIRObjectFactory.buildFromJSON('Reference', i));
            });
          } else {
            // this handles the case when the list only has one object and does not return as a list
            var i = json['interpreter'];
            this.interpreter.add(FHIRObjectFactory.buildFromJSON('Reference', i));
          }          
        }
        this.endpoint = List<Reference>();
        if (json['endpoint'] != null && json['endpoint'].length > 0) {
          if( json['endpoint'] is List ){
            json['endpoint'].forEach((i){
              this.endpoint.add(FHIRObjectFactory.buildFromJSON('Reference', i));
            });
          } else {
            // this handles the case when the list only has one object and does not return as a list
            var i = json['endpoint'];
            this.endpoint.add(FHIRObjectFactory.buildFromJSON('Reference', i));
          }          
        }
        this.numberOfSeries = json['numberOfSeries'];
        this.extNumberOfSeries = json['_numberOfSeries'] == null ? null : FHIRObjectFactory.buildFromJSON('Element', json['_numberOfSeries']);
        this.numberOfInstances = json['numberOfInstances'];
        this.extNumberOfInstances = json['_numberOfInstances'] == null ? null : FHIRObjectFactory.buildFromJSON('Element', json['_numberOfInstances']);
        this.procedureReference = json['procedureReference'] == null ? null : FHIRObjectFactory.buildFromJSON('Reference', json['procedureReference']);
        this.procedureCode = List<CodeableConcept>();
        if (json['procedureCode'] != null && json['procedureCode'].length > 0) {
          if( json['procedureCode'] is List ){
            json['procedureCode'].forEach((i){
              this.procedureCode.add(FHIRObjectFactory.buildFromJSON('CodeableConcept', i));
            });
          } else {
            // this handles the case when the list only has one object and does not return as a list
            var i = json['procedureCode'];
            this.procedureCode.add(FHIRObjectFactory.buildFromJSON('CodeableConcept', i));
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
        this.description = json['description'];
        this.extDescription = json['_description'] == null ? null : FHIRObjectFactory.buildFromJSON('Element', json['_description']);
        this.series = List<ImagingStudySeries>();
        if (json['series'] != null && json['series'].length > 0) {
          if( json['series'] is List ){
            json['series'].forEach((i){
              this.series.add(FHIRObjectFactory.buildFromJSON('ImagingStudySeries', i));
            });
          } else {
            // this handles the case when the list only has one object and does not return as a list
            var i = json['series'];
            this.series.add(FHIRObjectFactory.buildFromJSON('ImagingStudySeries', i));
          }          
        }
    }
}
