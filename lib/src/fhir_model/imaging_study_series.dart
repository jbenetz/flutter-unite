import 'extension.dart';
import 'fhir_object_factory.dart';
import 'element.dart';
import 'coding.dart';
import 'reference.dart';
import 'imaging_study_performer.dart';
import 'imaging_study_instance.dart';
/// Representation of the content produced in a DICOM imaging study. A study comprises a set of series, each of which includes a set of Service-Object Pair Instances (SOP Instances - images or other data) acquired or produced in a common context.  A series is of only one modality (e.g. X-ray, CT, MR, ultrasound), but a study may have multiple series of different modalities.
class ImagingStudySeries {
    /// Unique id for the element within a resource (for internal references). This may be any string value that does not contain spaces.
    String id;
    /// May be used to represent additional information that is not part of the basic definition of the element. To make the use of extensions safe and manageable, there is a strict set of governance  applied to the definition and use of extensions. Though any implementer can define an extension, there is a set of requirements that SHALL be met as part of the definition of the extension.
    List<Extension> extension;
    /// May be used to represent additional information that is not part of the basic definition of the element and that modifies the understanding of the element in which it is contained and/or the understanding of the containing element's descendants. Usually modifier elements provide negation or qualification. To make the use of extensions safe and manageable, there is a strict set of governance applied to the definition and use of extensions. Though any implementer can define an extension, there is a set of requirements that SHALL be met as part of the definition of the extension. Applications processing a resource are required to check for modifier extensions.
    /// 
    /// Modifier extensions SHALL NOT change the meaning of any elements on Resource or DomainResource (including cannot change the meaning of modifierExtension itself).
    List<Extension> modifierExtension;
    /// The DICOM Series Instance UID for the series.
    String uid;
    /// Extensions for uid
    Element extUid;
    /// The numeric identifier of this series in the study.
    int number;
    /// Extensions for number
    Element extNumber;
    /// The modality of this series sequence.
    Coding modality;
    /// A description of the series.
    String description;
    /// Extensions for description
    Element extDescription;
    /// Number of SOP Instances in the Study. The value given may be larger than the number of instance elements this resource contains due to resource availability, security, or other factors. This element should be present if any instance elements are present.
    int numberOfInstances;
    /// Extensions for numberOfInstances
    Element extNumberOfInstances;
    /// The network service providing access (e.g., query, view, or retrieval) for this series. See implementation notes for information about using DICOM endpoints. A series-level endpoint, if present, has precedence over a study-level endpoint with the same Endpoint.connectionType.
    List<Reference> endpoint;
    /// The anatomic structures examined. See DICOM Part 16 Annex L (http://dicom.nema.org/medical/dicom/current/output/chtml/part16/chapter_L.html) for DICOM to SNOMED-CT mappings. The bodySite may indicate the laterality of body part imaged; if so, it shall be consistent with any content of ImagingStudy.series.laterality.
    Coding bodySite;
    /// The laterality of the (possibly paired) anatomic structures examined. E.g., the left knee, both lungs, or unpaired abdomen. If present, shall be consistent with any laterality information indicated in ImagingStudy.series.bodySite.
    Coding laterality;
    /// The specimen imaged, e.g., for whole slide imaging of a biopsy.
    List<Reference> specimen;
    /// The date and time the series was started.
    DateTime started;
    /// Extensions for started
    Element extStarted;
    /// Indicates who or what performed the series and how they were involved.
    List<ImagingStudyPerformer> performer;
    /// A single SOP instance within the series, e.g. an image, or presentation state.
    List<ImagingStudyInstance> instance;
 
    ImagingStudySeries.fromJSON( Map json ){
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
        this.uid = json['uid'];
        this.extUid = json['_uid'] == null ? null : FHIRObjectFactory.buildFromJSON('Element', json['_uid']);
        this.number = json['number'];
        this.extNumber = json['_number'] == null ? null : FHIRObjectFactory.buildFromJSON('Element', json['_number']);
        this.modality = json['modality'] == null ? null : FHIRObjectFactory.buildFromJSON('Coding', json['modality']);
        this.description = json['description'];
        this.extDescription = json['_description'] == null ? null : FHIRObjectFactory.buildFromJSON('Element', json['_description']);
        this.numberOfInstances = json['numberOfInstances'];
        this.extNumberOfInstances = json['_numberOfInstances'] == null ? null : FHIRObjectFactory.buildFromJSON('Element', json['_numberOfInstances']);
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
        this.bodySite = json['bodySite'] == null ? null : FHIRObjectFactory.buildFromJSON('Coding', json['bodySite']);
        this.laterality = json['laterality'] == null ? null : FHIRObjectFactory.buildFromJSON('Coding', json['laterality']);
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
        if( json['started'] != null ) { this.started = DateTime.parse(json['started']);}
        this.extStarted = json['_started'] == null ? null : FHIRObjectFactory.buildFromJSON('Element', json['_started']);
        this.performer = List<ImagingStudyPerformer>();
        if (json['performer'] != null && json['performer'].length > 0) {
          if( json['performer'] is List ){
            json['performer'].forEach((i){
              this.performer.add(FHIRObjectFactory.buildFromJSON('ImagingStudyPerformer', i));
            });
          } else {
            // this handles the case when the list only has one object and does not return as a list
            var i = json['performer'];
            this.performer.add(FHIRObjectFactory.buildFromJSON('ImagingStudyPerformer', i));
          }          
        }
        this.instance = List<ImagingStudyInstance>();
        if (json['instance'] != null && json['instance'].length > 0) {
          if( json['instance'] is List ){
            json['instance'].forEach((i){
              this.instance.add(FHIRObjectFactory.buildFromJSON('ImagingStudyInstance', i));
            });
          } else {
            // this handles the case when the list only has one object and does not return as a list
            var i = json['instance'];
            this.instance.add(FHIRObjectFactory.buildFromJSON('ImagingStudyInstance', i));
          }          
        }
    }
}
