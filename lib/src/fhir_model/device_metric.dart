import 'meta.dart';
import 'fhir_object_factory.dart';
import 'element.dart';
import 'narrative.dart';
import 'extension.dart';
import 'identifier.dart';
import 'codeable_concept.dart';
import 'reference.dart';
import 'timing.dart';
import 'device_metric_calibration.dart';
/// Describes a measurement, calculation or setting capability of a medical device.
class DeviceMetric {
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
    /// Unique instance identifiers assigned to a device by the device or gateway software, manufacturers, other organizations or owners. For example: handle ID.
    List<Identifier> identifier;
    /// Describes the type of the metric. For example: Heart Rate, PEEP Setting, etc.
    CodeableConcept type;
    /// Describes the unit that an observed value determined for this metric will have. For example: Percent, Seconds, etc.
    CodeableConcept unit;
    /// Describes the link to the  Device that this DeviceMetric belongs to and that contains administrative device information such as manufacturer, serial number, etc.
    Reference source;
    /// Describes the link to the  Device that this DeviceMetric belongs to and that provide information about the location of this DeviceMetric in the containment structure of the parent Device. An example would be a Device that represents a Channel. This reference can be used by a client application to distinguish DeviceMetrics that have the same type, but should be interpreted based on their containment location.
    Reference parent;
    /// Indicates current operational state of the device. For example: On, Off, Standby, etc.
    String operationalStatus;
    /// Extensions for operationalStatus
    Element extOperationalStatus;
    /// Describes the color representation for the metric. This is often used to aid clinicians to track and identify parameter types by color. In practice, consider a Patient Monitor that has ECG/HR and Pleth for example; the parameters are displayed in different characteristic colors, such as HR-blue, BP-green, and PR and SpO2- magenta.
    String color;
    /// Extensions for color
    Element extColor;
    /// Indicates the category of the observation generation process. A DeviceMetric can be for example a setting, measurement, or calculation.
    String category;
    /// Extensions for category
    Element extCategory;
    /// Describes the measurement repetition time. This is not necessarily the same as the update period. The measurement repetition time can range from milliseconds up to hours. An example for a measurement repetition time in the range of milliseconds is the sampling rate of an ECG. An example for a measurement repetition time in the range of hours is a NIBP that is triggered automatically every hour. The update period may be different than the measurement repetition time, if the device does not update the published observed value with the same frequency as it was measured.
    Timing measurementPeriod;
    /// Describes the calibrations that have been performed or that are required to be performed.
    List<DeviceMetricCalibration> calibration;
 
    DeviceMetric.fromJSON( Map json ){
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
        this.type = json['type'] == null ? null : FHIRObjectFactory.buildFromJSON('CodeableConcept', json['type']);
        this.unit = json['unit'] == null ? null : FHIRObjectFactory.buildFromJSON('CodeableConcept', json['unit']);
        this.source = json['source'] == null ? null : FHIRObjectFactory.buildFromJSON('Reference', json['source']);
        this.parent = json['parent'] == null ? null : FHIRObjectFactory.buildFromJSON('Reference', json['parent']);
        this.operationalStatus = json['operationalStatus'];
        this.extOperationalStatus = json['_operationalStatus'] == null ? null : FHIRObjectFactory.buildFromJSON('Element', json['_operationalStatus']);
        this.color = json['color'];
        this.extColor = json['_color'] == null ? null : FHIRObjectFactory.buildFromJSON('Element', json['_color']);
        this.category = json['category'];
        this.extCategory = json['_category'] == null ? null : FHIRObjectFactory.buildFromJSON('Element', json['_category']);
        this.measurementPeriod = json['measurementPeriod'] == null ? null : FHIRObjectFactory.buildFromJSON('Timing', json['measurementPeriod']);
        this.calibration = List<DeviceMetricCalibration>();
        if (json['calibration'] != null && json['calibration'].length > 0) {
          if( json['calibration'] is List ){
            json['calibration'].forEach((i){
              this.calibration.add(FHIRObjectFactory.buildFromJSON('DeviceMetricCalibration', i));
            });
          } else {
            // this handles the case when the list only has one object and does not return as a list
            var i = json['calibration'];
            this.calibration.add(FHIRObjectFactory.buildFromJSON('DeviceMetricCalibration', i));
          }          
        }
    }
}
