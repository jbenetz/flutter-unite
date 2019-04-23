import 'meta.dart';
import 'fhir_object_factory.dart';
import 'element.dart';
import 'narrative.dart';
import 'extension.dart';
import 'identifier.dart';
import 'device_definition_udi_device_identifier.dart';
import 'reference.dart';
import 'device_definition_device_name.dart';
import 'codeable_concept.dart';
import 'device_definition_specialization.dart';
import 'product_shelf_life.dart';
import 'prod_characteristic.dart';
import 'device_definition_capability.dart';
import 'device_definition_property.dart';
import 'contact_point.dart';
import 'annotation.dart';
import 'quantity.dart';
import 'device_definition_material.dart';
/// The characteristics, operational status and capabilities of a medical-related component of a medical device.
class DeviceDefinition {
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
    /// Unique instance identifiers assigned to a device by the software, manufacturers, other organizations or owners. For example: handle ID.
    List<Identifier> identifier;
    /// Unique device identifier (UDI) assigned to device label or package.  Note that the Device may include multiple udiCarriers as it either may include just the udiCarrier for the jurisdiction it is sold, or for multiple jurisdictions it could have been sold.
    List<DeviceDefinitionUdiDeviceIdentifier> udiDeviceIdentifier;
    /// Extensions for manufacturerString
    Element extManufacturerString;
    /// A name of the manufacturer.
    Reference manufacturerReference;
    /// A name given to the device to identify it.
    List<DeviceDefinitionDeviceName> deviceName;
    /// The model number for the device.
    String modelNumber;
    /// Extensions for modelNumber
    Element extModelNumber;
    /// What kind of device or device system this is.
    CodeableConcept type;
    /// The capabilities supported on a  device, the standards to which the device conforms for a particular purpose, and used for the communication.
    List<DeviceDefinitionSpecialization> specialization;
    /// The available versions of the device, e.g., software versions.
    List<String> version;
    /// Extensions for version
    List<Element> extVersion;
    /// Safety characteristics of the device.
    List<CodeableConcept> safety;
    /// Shelf Life and storage information.
    List<ProductShelfLife> shelfLifeStorage;
    /// Dimensions, color etc.
    ProdCharacteristic physicalCharacteristics;
    /// Language code for the human-readable text strings produced by the device (all supported).
    List<CodeableConcept> languageCode;
    /// Device capabilities.
    List<DeviceDefinitionCapability> capability;
    /// The actual configuration settings of a device as it actually operates, e.g., regulation status, time properties.
    List<DeviceDefinitionProperty> property;
    /// An organization that is responsible for the provision and ongoing maintenance of the device.
    Reference owner;
    /// Contact details for an organization or a particular human that is responsible for the device.
    List<ContactPoint> contact;
    /// A network address on which the device may be contacted directly.
    String url;
    /// Extensions for url
    Element extUrl;
    /// Access to on-line information about the device.
    String onlineInformation;
    /// Extensions for onlineInformation
    Element extOnlineInformation;
    /// Descriptive information, usage information or implantation information that is not captured in an existing element.
    List<Annotation> note;
    /// The quantity of the device present in the packaging (e.g. the number of devices present in a pack, or the number of devices in the same package of the medicinal product).
    Quantity quantity;
    /// The parent device it can be part of.
    Reference parentDevice;
    /// A substance used to create the material(s) of which the device is made.
    List<DeviceDefinitionMaterial> material;
 
    DeviceDefinition.fromJSON( Map json ){
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
        this.udiDeviceIdentifier = List<DeviceDefinitionUdiDeviceIdentifier>();
        if (json['udiDeviceIdentifier'] != null && json['udiDeviceIdentifier'].length > 0) {
          if( json['udiDeviceIdentifier'] is List ){
            json['udiDeviceIdentifier'].forEach((i){
              this.udiDeviceIdentifier.add(FHIRObjectFactory.buildFromJSON('DeviceDefinitionUdiDeviceIdentifier', i));
            });
          } else {
            // this handles the case when the list only has one object and does not return as a list
            var i = json['udiDeviceIdentifier'];
            this.udiDeviceIdentifier.add(FHIRObjectFactory.buildFromJSON('DeviceDefinitionUdiDeviceIdentifier', i));
          }          
        }
        this.extManufacturerString = json['_manufacturerString'] == null ? null : FHIRObjectFactory.buildFromJSON('Element', json['_manufacturerString']);
        this.manufacturerReference = json['manufacturerReference'] == null ? null : FHIRObjectFactory.buildFromJSON('Reference', json['manufacturerReference']);
        this.deviceName = List<DeviceDefinitionDeviceName>();
        if (json['deviceName'] != null && json['deviceName'].length > 0) {
          if( json['deviceName'] is List ){
            json['deviceName'].forEach((i){
              this.deviceName.add(FHIRObjectFactory.buildFromJSON('DeviceDefinitionDeviceName', i));
            });
          } else {
            // this handles the case when the list only has one object and does not return as a list
            var i = json['deviceName'];
            this.deviceName.add(FHIRObjectFactory.buildFromJSON('DeviceDefinitionDeviceName', i));
          }          
        }
        this.modelNumber = json['modelNumber'];
        this.extModelNumber = json['_modelNumber'] == null ? null : FHIRObjectFactory.buildFromJSON('Element', json['_modelNumber']);
        this.type = json['type'] == null ? null : FHIRObjectFactory.buildFromJSON('CodeableConcept', json['type']);
        this.specialization = List<DeviceDefinitionSpecialization>();
        if (json['specialization'] != null && json['specialization'].length > 0) {
          if( json['specialization'] is List ){
            json['specialization'].forEach((i){
              this.specialization.add(FHIRObjectFactory.buildFromJSON('DeviceDefinitionSpecialization', i));
            });
          } else {
            // this handles the case when the list only has one object and does not return as a list
            var i = json['specialization'];
            this.specialization.add(FHIRObjectFactory.buildFromJSON('DeviceDefinitionSpecialization', i));
          }          
        }
        this.version = List<String>();
        if (json['version'] != null && json['version'].length > 0) {
          if( json['version'] is List ){
            json['version'].forEach((i){
              this.version.add(i);
            });
          } else {
            // this handles the case when the list only has one object and does not return as a list
            var i = json['version'];
            this.version.add(i);
          }          
        }
        this.extVersion = List<Element>();
        if (json['_version'] != null && json['_version'].length > 0) {
          if( json['_version'] is List ){
            json['_version'].forEach((i){
              this.extVersion.add(FHIRObjectFactory.buildFromJSON('Element', i));
            });
          } else {
            // this handles the case when the list only has one object and does not return as a list
            var i = json['_version'];
            this.extVersion.add(FHIRObjectFactory.buildFromJSON('Element', i));
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
        this.shelfLifeStorage = List<ProductShelfLife>();
        if (json['shelfLifeStorage'] != null && json['shelfLifeStorage'].length > 0) {
          if( json['shelfLifeStorage'] is List ){
            json['shelfLifeStorage'].forEach((i){
              this.shelfLifeStorage.add(FHIRObjectFactory.buildFromJSON('ProductShelfLife', i));
            });
          } else {
            // this handles the case when the list only has one object and does not return as a list
            var i = json['shelfLifeStorage'];
            this.shelfLifeStorage.add(FHIRObjectFactory.buildFromJSON('ProductShelfLife', i));
          }          
        }
        this.physicalCharacteristics = json['physicalCharacteristics'] == null ? null : FHIRObjectFactory.buildFromJSON('ProdCharacteristic', json['physicalCharacteristics']);
        this.languageCode = List<CodeableConcept>();
        if (json['languageCode'] != null && json['languageCode'].length > 0) {
          if( json['languageCode'] is List ){
            json['languageCode'].forEach((i){
              this.languageCode.add(FHIRObjectFactory.buildFromJSON('CodeableConcept', i));
            });
          } else {
            // this handles the case when the list only has one object and does not return as a list
            var i = json['languageCode'];
            this.languageCode.add(FHIRObjectFactory.buildFromJSON('CodeableConcept', i));
          }          
        }
        this.capability = List<DeviceDefinitionCapability>();
        if (json['capability'] != null && json['capability'].length > 0) {
          if( json['capability'] is List ){
            json['capability'].forEach((i){
              this.capability.add(FHIRObjectFactory.buildFromJSON('DeviceDefinitionCapability', i));
            });
          } else {
            // this handles the case when the list only has one object and does not return as a list
            var i = json['capability'];
            this.capability.add(FHIRObjectFactory.buildFromJSON('DeviceDefinitionCapability', i));
          }          
        }
        this.property = List<DeviceDefinitionProperty>();
        if (json['property'] != null && json['property'].length > 0) {
          if( json['property'] is List ){
            json['property'].forEach((i){
              this.property.add(FHIRObjectFactory.buildFromJSON('DeviceDefinitionProperty', i));
            });
          } else {
            // this handles the case when the list only has one object and does not return as a list
            var i = json['property'];
            this.property.add(FHIRObjectFactory.buildFromJSON('DeviceDefinitionProperty', i));
          }          
        }
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
        this.url = json['url'];
        this.extUrl = json['_url'] == null ? null : FHIRObjectFactory.buildFromJSON('Element', json['_url']);
        this.onlineInformation = json['onlineInformation'];
        this.extOnlineInformation = json['_onlineInformation'] == null ? null : FHIRObjectFactory.buildFromJSON('Element', json['_onlineInformation']);
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
        this.quantity = json['quantity'] == null ? null : FHIRObjectFactory.buildFromJSON('Quantity', json['quantity']);
        this.parentDevice = json['parentDevice'] == null ? null : FHIRObjectFactory.buildFromJSON('Reference', json['parentDevice']);
        this.material = List<DeviceDefinitionMaterial>();
        if (json['material'] != null && json['material'].length > 0) {
          if( json['material'] is List ){
            json['material'].forEach((i){
              this.material.add(FHIRObjectFactory.buildFromJSON('DeviceDefinitionMaterial', i));
            });
          } else {
            // this handles the case when the list only has one object and does not return as a list
            var i = json['material'];
            this.material.add(FHIRObjectFactory.buildFromJSON('DeviceDefinitionMaterial', i));
          }          
        }
    }
}
