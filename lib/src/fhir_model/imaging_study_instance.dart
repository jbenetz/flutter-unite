import 'extension.dart';
import 'fhir_object_factory.dart';
import 'element.dart';
import 'coding.dart';
/// Representation of the content produced in a DICOM imaging study. A study comprises a set of series, each of which includes a set of Service-Object Pair Instances (SOP Instances - images or other data) acquired or produced in a common context.  A series is of only one modality (e.g. X-ray, CT, MR, ultrasound), but a study may have multiple series of different modalities.
class ImagingStudyInstance {
    /// Unique id for the element within a resource (for internal references). This may be any string value that does not contain spaces.
    String id;
    /// May be used to represent additional information that is not part of the basic definition of the element. To make the use of extensions safe and manageable, there is a strict set of governance  applied to the definition and use of extensions. Though any implementer can define an extension, there is a set of requirements that SHALL be met as part of the definition of the extension.
    List<Extension> extension;
    /// May be used to represent additional information that is not part of the basic definition of the element and that modifies the understanding of the element in which it is contained and/or the understanding of the containing element's descendants. Usually modifier elements provide negation or qualification. To make the use of extensions safe and manageable, there is a strict set of governance applied to the definition and use of extensions. Though any implementer can define an extension, there is a set of requirements that SHALL be met as part of the definition of the extension. Applications processing a resource are required to check for modifier extensions.
    /// 
    /// Modifier extensions SHALL NOT change the meaning of any elements on Resource or DomainResource (including cannot change the meaning of modifierExtension itself).
    List<Extension> modifierExtension;
    /// The DICOM SOP Instance UID for this image or other DICOM content.
    String uid;
    /// Extensions for uid
    Element extUid;
    /// DICOM instance  type.
    Coding sopClass;
    /// The number of instance in the series.
    int number;
    /// Extensions for number
    Element extNumber;
    /// The description of the instance.
    String title;
    /// Extensions for title
    Element extTitle;
 
    ImagingStudyInstance.fromJSON( Map json ){
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
        this.sopClass = json['sopClass'] == null ? null : FHIRObjectFactory.buildFromJSON('Coding', json['sopClass']);
        this.number = json['number'];
        this.extNumber = json['_number'] == null ? null : FHIRObjectFactory.buildFromJSON('Element', json['_number']);
        this.title = json['title'];
        this.extTitle = json['_title'] == null ? null : FHIRObjectFactory.buildFromJSON('Element', json['_title']);
    }
}
