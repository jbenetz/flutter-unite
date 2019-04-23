import 'meta.dart';
import 'fhir_object_factory.dart';
import 'element.dart';
import 'narrative.dart';
import 'extension.dart';
import 'identifier.dart';
import 'reference.dart';
import 'codeable_concept.dart';
import 'period.dart';
import 'attachment.dart';
import 'annotation.dart';
/// A photo, video, or audio recording acquired or used in healthcare. The actual content may be inline or provided by direct reference.
class Media {
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
    /// Identifiers associated with the image - these may include identifiers for the image itself, identifiers for the context of its collection (e.g. series ids) and context ids such as accession numbers or other workflow identifiers.
    List<Identifier> identifier;
    /// A procedure that is fulfilled in whole or in part by the creation of this media.
    List<Reference> basedOn;
    /// A larger event of which this particular event is a component or step.
    List<Reference> partOf;
    /// The current state of the {{title}}.
    String status;
    /// Extensions for status
    Element extStatus;
    /// A code that classifies whether the media is an image, video or audio recording or some other media category.
    CodeableConcept type;
    /// Details of the type of the media - usually, how it was acquired (what type of device). If images sourced from a DICOM system, are wrapped in a Media resource, then this is the modality.
    CodeableConcept modality;
    /// The name of the imaging view e.g. Lateral or Antero-posterior (AP).
    CodeableConcept view;
    /// Who/What this Media is a record of.
    Reference subject;
    /// The encounter that establishes the context for this media.
    Reference encounter;
    /// Extensions for createdDateTime
    Element extCreatedDateTime;
    /// The date and time(s) at which the media was collected.
    Period createdPeriod;
    /// The date and time this version of the media was made available to providers, typically after having been reviewed.
    DateTime issued;
    /// Extensions for issued
    Element extIssued;
    /// The person who administered the collection of the image.
    Reference operator;
    /// Describes why the event occurred in coded or textual form.
    List<CodeableConcept> reasonCode;
    /// Indicates the site on the subject's body where the observation was made (i.e. the target site).
    CodeableConcept bodySite;
    /// The name of the device / manufacturer of the device  that was used to make the recording.
    String deviceName;
    /// Extensions for deviceName
    Element extDeviceName;
    /// The device used to collect the media.
    Reference device;
    /// Height of the image in pixels (photo/video).
    int height;
    /// Extensions for height
    Element extHeight;
    /// Width of the image in pixels (photo/video).
    int width;
    /// Extensions for width
    Element extWidth;
    /// The number of frames in a photo. This is used with a multi-page fax, or an imaging acquisition context that takes multiple slices in a single image, or an animated gif. If there is more than one frame, this SHALL have a value in order to alert interface software that a multi-frame capable rendering widget is required.
    int frames;
    /// Extensions for frames
    Element extFrames;
    /// The duration of the recording in seconds - for audio and video.
    double duration;
    /// Extensions for duration
    Element extDuration;
    /// The actual content of the media - inline or by direct reference to the media source file.
    Attachment content;
    /// Comments made about the media by the performer, subject or other participants.
    List<Annotation> note;
 
    Media.fromJSON( Map json ){
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
        this.type = json['type'] == null ? null : FHIRObjectFactory.buildFromJSON('CodeableConcept', json['type']);
        this.modality = json['modality'] == null ? null : FHIRObjectFactory.buildFromJSON('CodeableConcept', json['modality']);
        this.view = json['view'] == null ? null : FHIRObjectFactory.buildFromJSON('CodeableConcept', json['view']);
        this.subject = json['subject'] == null ? null : FHIRObjectFactory.buildFromJSON('Reference', json['subject']);
        this.encounter = json['encounter'] == null ? null : FHIRObjectFactory.buildFromJSON('Reference', json['encounter']);
        this.extCreatedDateTime = json['_createdDateTime'] == null ? null : FHIRObjectFactory.buildFromJSON('Element', json['_createdDateTime']);
        this.createdPeriod = json['createdPeriod'] == null ? null : FHIRObjectFactory.buildFromJSON('Period', json['createdPeriod']);
        if( json['issued'] != null ) { this.issued = DateTime.parse(json['issued']);}
        this.extIssued = json['_issued'] == null ? null : FHIRObjectFactory.buildFromJSON('Element', json['_issued']);
        this.operator = json['operator'] == null ? null : FHIRObjectFactory.buildFromJSON('Reference', json['operator']);
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
        this.bodySite = json['bodySite'] == null ? null : FHIRObjectFactory.buildFromJSON('CodeableConcept', json['bodySite']);
        this.deviceName = json['deviceName'];
        this.extDeviceName = json['_deviceName'] == null ? null : FHIRObjectFactory.buildFromJSON('Element', json['_deviceName']);
        this.device = json['device'] == null ? null : FHIRObjectFactory.buildFromJSON('Reference', json['device']);
        this.height = json['height'];
        this.extHeight = json['_height'] == null ? null : FHIRObjectFactory.buildFromJSON('Element', json['_height']);
        this.width = json['width'];
        this.extWidth = json['_width'] == null ? null : FHIRObjectFactory.buildFromJSON('Element', json['_width']);
        this.frames = json['frames'];
        this.extFrames = json['_frames'] == null ? null : FHIRObjectFactory.buildFromJSON('Element', json['_frames']);
        if( json['duration'] != null && json['duration'] is int ) {
          this.duration = json['duration'].toDouble();
        } else {
          this.duration = json['duration'];
        }
    
        this.extDuration = json['_duration'] == null ? null : FHIRObjectFactory.buildFromJSON('Element', json['_duration']);
        this.content = json['content'] == null ? null : FHIRObjectFactory.buildFromJSON('Attachment', json['content']);
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
    }
}
