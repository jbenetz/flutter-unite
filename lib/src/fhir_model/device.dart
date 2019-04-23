import 'meta.dart';
import 'fhir_object_factory.dart';
import 'element.dart';
import 'narrative.dart';
import 'extension.dart';
import 'identifier.dart';
import 'reference.dart';
import 'device_udi_carrier.dart';
import 'codeable_concept.dart';
import 'device_device_name.dart';
import 'device_specialization.dart';
import 'device_version.dart';
import 'device_property.dart';
import 'contact_point.dart';
import 'annotation.dart';
/// A type of a manufactured item that is used in the provision of healthcare without being substantially changed through that activity. The device may be a medical or non-medical device.
class Device {
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
    /// Unique instance identifiers assigned to a device by manufacturers other organizations or owners.
    List<Identifier> identifier;
    /// The reference to the definition for the device.
    Reference definition;
    /// Unique device identifier (UDI) assigned to device label or package.  Note that the Device may include multiple udiCarriers as it either may include just the udiCarrier for the jurisdiction it is sold, or for multiple jurisdictions it could have been sold.
    List<DeviceUdiCarrier> udiCarrier;
    /// Status of the Device availability.
    String status;
    /// Extensions for status
    Element extStatus;
    /// Reason for the dtatus of the Device availability.
    List<CodeableConcept> statusReason;
    /// The distinct identification string as required by regulation for a human cell, tissue, or cellular and tissue-based product.
    String distinctIdentifier;
    /// Extensions for distinctIdentifier
    Element extDistinctIdentifier;
    /// A name of the manufacturer.
    String manufacturer;
    /// Extensions for manufacturer
    Element extManufacturer;
    /// The date and time when the device was manufactured.
    DateTime manufactureDate;
    /// Extensions for manufactureDate
    Element extManufactureDate;
    /// The date and time beyond which this device is no longer valid or should not be used (if applicable).
    DateTime expirationDate;
    /// Extensions for expirationDate
    Element extExpirationDate;
    /// Lot number assigned by the manufacturer.
    String lotNumber;
    /// Extensions for lotNumber
    Element extLotNumber;
    /// The serial number assigned by the organization when the device was manufactured.
    String serialNumber;
    /// Extensions for serialNumber
    Element extSerialNumber;
    /// This represents the manufacturer's name of the device as provided by the device, from a UDI label, or by a person describing the Device.  This typically would be used when a person provides the name(s) or when the device represents one of the names available from DeviceDefinition.
    List<DeviceDeviceName> deviceName;
    /// The model number for the device.
    String modelNumber;
    /// Extensions for modelNumber
    Element extModelNumber;
    /// The part number of the device.
    String partNumber;
    /// Extensions for partNumber
    Element extPartNumber;
    /// The kind or type of device.
    CodeableConcept type;
    /// The capabilities supported on a  device, the standards to which the device conforms for a particular purpose, and used for the communication.
    List<DeviceSpecialization> specialization;
    /// The actual design of the device or software version running on the device.
    List<DeviceVersion> version;
    /// The actual configuration settings of a device as it actually operates, e.g., regulation status, time properties.
    List<DeviceProperty> property;
    /// Patient information, If the device is affixed to a person.
    Reference patient;
    /// An organization that is responsible for the provision and ongoing maintenance of the device.
    Reference owner;
    /// Contact details for an organization or a particular human that is responsible for the device.
    List<ContactPoint> contact;
    /// The place where the device can be found.
    Reference location;
    /// A network address on which the device may be contacted directly.
    String url;
    /// Extensions for url
    Element extUrl;
    /// Descriptive information, usage information or implantation information that is not captured in an existing element.
    List<Annotation> note;
    /// Provides additional safety characteristics about a medical device.  For example devices containing latex.
    List<CodeableConcept> safety;
    /// The parent device.
    Reference parent;
 
    Device.fromJSON( Map json ){
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
        this.definition = json['definition'] == null ? null : FHIRObjectFactory.buildFromJSON('Reference', json['definition']);
        this.udiCarrier = List<DeviceUdiCarrier>();
        if (json['udiCarrier'] != null && json['udiCarrier'].length > 0) {
          if( json['udiCarrier'] is List ){
            json['udiCarrier'].forEach((i){
              this.udiCarrier.add(FHIRObjectFactory.buildFromJSON('DeviceUdiCarrier', i));
            });
          } else {
            // this handles the case when the list only has one object and does not return as a list
            var i = json['udiCarrier'];
            this.udiCarrier.add(FHIRObjectFactory.buildFromJSON('DeviceUdiCarrier', i));
          }          
        }
        this.status = json['status'];
        this.extStatus = json['_status'] == null ? null : FHIRObjectFactory.buildFromJSON('Element', json['_status']);
        this.statusReason = List<CodeableConcept>();
        if (json['statusReason'] != null && json['statusReason'].length > 0) {
          if( json['statusReason'] is List ){
            json['statusReason'].forEach((i){
              this.statusReason.add(FHIRObjectFactory.buildFromJSON('CodeableConcept', i));
            });
          } else {
            // this handles the case when the list only has one object and does not return as a list
            var i = json['statusReason'];
            this.statusReason.add(FHIRObjectFactory.buildFromJSON('CodeableConcept', i));
          }          
        }
        this.distinctIdentifier = json['distinctIdentifier'];
        this.extDistinctIdentifier = json['_distinctIdentifier'] == null ? null : FHIRObjectFactory.buildFromJSON('Element', json['_distinctIdentifier']);
        this.manufacturer = json['manufacturer'];
        this.extManufacturer = json['_manufacturer'] == null ? null : FHIRObjectFactory.buildFromJSON('Element', json['_manufacturer']);
        if( json['manufactureDate'] != null ) { this.manufactureDate = DateTime.parse(json['manufactureDate']);}
        this.extManufactureDate = json['_manufactureDate'] == null ? null : FHIRObjectFactory.buildFromJSON('Element', json['_manufactureDate']);
        if( json['expirationDate'] != null ) { this.expirationDate = DateTime.parse(json['expirationDate']);}
        this.extExpirationDate = json['_expirationDate'] == null ? null : FHIRObjectFactory.buildFromJSON('Element', json['_expirationDate']);
        this.lotNumber = json['lotNumber'];
        this.extLotNumber = json['_lotNumber'] == null ? null : FHIRObjectFactory.buildFromJSON('Element', json['_lotNumber']);
        this.serialNumber = json['serialNumber'];
        this.extSerialNumber = json['_serialNumber'] == null ? null : FHIRObjectFactory.buildFromJSON('Element', json['_serialNumber']);
        this.deviceName = List<DeviceDeviceName>();
        if (json['deviceName'] != null && json['deviceName'].length > 0) {
          if( json['deviceName'] is List ){
            json['deviceName'].forEach((i){
              this.deviceName.add(FHIRObjectFactory.buildFromJSON('DeviceDeviceName', i));
            });
          } else {
            // this handles the case when the list only has one object and does not return as a list
            var i = json['deviceName'];
            this.deviceName.add(FHIRObjectFactory.buildFromJSON('DeviceDeviceName', i));
          }          
        }
        this.modelNumber = json['modelNumber'];
        this.extModelNumber = json['_modelNumber'] == null ? null : FHIRObjectFactory.buildFromJSON('Element', json['_modelNumber']);
        this.partNumber = json['partNumber'];
        this.extPartNumber = json['_partNumber'] == null ? null : FHIRObjectFactory.buildFromJSON('Element', json['_partNumber']);
        this.type = json['type'] == null ? null : FHIRObjectFactory.buildFromJSON('CodeableConcept', json['type']);
        this.specialization = List<DeviceSpecialization>();
        if (json['specialization'] != null && json['specialization'].length > 0) {
          if( json['specialization'] is List ){
            json['specialization'].forEach((i){
              this.specialization.add(FHIRObjectFactory.buildFromJSON('DeviceSpecialization', i));
            });
          } else {
            // this handles the case when the list only has one object and does not return as a list
            var i = json['specialization'];
            this.specialization.add(FHIRObjectFactory.buildFromJSON('DeviceSpecialization', i));
          }          
        }
        this.version = List<DeviceVersion>();
        if (json['version'] != null && json['version'].length > 0) {
          if( json['version'] is List ){
            json['version'].forEach((i){
              this.version.add(FHIRObjectFactory.buildFromJSON('DeviceVersion', i));
            });
          } else {
            // this handles the case when the list only has one object and does not return as a list
            var i = json['version'];
            this.version.add(FHIRObjectFactory.buildFromJSON('DeviceVersion', i));
          }          
        }
        this.property = List<DeviceProperty>();
        if (json['property'] != null && json['property'].length > 0) {
          if( json['property'] is List ){
            json['property'].forEach((i){
              this.property.add(FHIRObjectFactory.buildFromJSON('DeviceProperty', i));
            });
          } else {
            // this handles the case when the list only has one object and does not return as a list
            var i = json['property'];
            this.property.add(FHIRObjectFactory.buildFromJSON('DeviceProperty', i));
          }          
        }
        this.patient = json['patient'] == null ? null : FHIRObjectFactory.buildFromJSON('Reference', json['patient']);
        this.owner = json['owner'] == null ? null : FHIRObjectFactory.buildFromJSON('Reference', json['owner']);
        this.contact = List<ContactPoint>();
        if (json['contact'] != null && json['contact'].length > 0) {
          if( json['contact'] is List ){
            json['contact'].forEach((i){
              this.contact.add(FHIRObjectFactory.buildFromJSON('ContactPoint', i));
            });
          } else {
            // this handles the case when the list only has one object and does not return as a list
            var i = json['contact'];
            this.contact.add(FHIRObjectFactory.buildFromJSON('ContactPoint', i));
          }          
        }
        this.location = json['location'] == null ? null : FHIRObjectFactory.buildFromJSON('Reference', json['location']);
        this.url = json['url'];
        this.extUrl = json['_url'] == null ? null : FHIRObjectFactory.buildFromJSON('Element', json['_url']);
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
        this.safety = List<CodeableConcept>();
        if (json['safety'] != null && json['safety'].length > 0) {
          if( json['safety'] is List ){
            json['safety'].forEach((i){
              this.safety.add(FHIRObjectFactory.buildFromJSON('CodeableConcept', i));
            });
          } else {
            // this handles the case when the list only has one object and does not return as a list
            var i = json['safety'];
            this.safety.add(FHIRObjectFactory.buildFromJSON('CodeableConcept', i));
          }          
        }
        this.parent = json['parent'] == null ? null : FHIRObjectFactory.buildFromJSON('Reference', json['parent']);
    }
}
