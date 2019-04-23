import 'extension.dart';
import 'fhir_object_factory.dart';
import 'element.dart';
/// A type of a manufactured item that is used in the provision of healthcare without being substantially changed through that activity. The device may be a medical or non-medical device.
class DeviceUdiCarrier {
    /// Unique id for the element within a resource (for internal references). This may be any string value that does not contain spaces.
    String id;
    /// May be used to represent additional information that is not part of the basic definition of the element. To make the use of extensions safe and manageable, there is a strict set of governance  applied to the definition and use of extensions. Though any implementer can define an extension, there is a set of requirements that SHALL be met as part of the definition of the extension.
    List<Extension> extension;
    /// May be used to represent additional information that is not part of the basic definition of the element and that modifies the understanding of the element in which it is contained and/or the understanding of the containing element's descendants. Usually modifier elements provide negation or qualification. To make the use of extensions safe and manageable, there is a strict set of governance applied to the definition and use of extensions. Though any implementer can define an extension, there is a set of requirements that SHALL be met as part of the definition of the extension. Applications processing a resource are required to check for modifier extensions.
    /// 
    /// Modifier extensions SHALL NOT change the meaning of any elements on Resource or DomainResource (including cannot change the meaning of modifierExtension itself).
    List<Extension> modifierExtension;
    /// The device identifier (DI) is a mandatory, fixed portion of a UDI that identifies the labeler and the specific version or model of a device.
    String deviceIdentifier;
    /// Extensions for deviceIdentifier
    Element extDeviceIdentifier;
    /// Organization that is charged with issuing UDIs for devices.  For example, the US FDA issuers include :
    /// 1) GS1: 
    /// http://hl7.org/fhir/NamingSystem/gs1-di, 
    /// 2) HIBCC:
    /// http://hl7.org/fhir/NamingSystem/hibcc-dI, 
    /// 3) ICCBBA for blood containers:
    /// http://hl7.org/fhir/NamingSystem/iccbba-blood-di, 
    /// 4) ICCBA for other devices:
    /// http://hl7.org/fhir/NamingSystem/iccbba-other-di.
    String issuer;
    /// Extensions for issuer
    Element extIssuer;
    /// The identity of the authoritative source for UDI generation within a  jurisdiction.  All UDIs are globally unique within a single namespace with the appropriate repository uri as the system.  For example,  UDIs of devices managed in the U.S. by the FDA, the value is  http://hl7.org/fhir/NamingSystem/fda-udi.
    String jurisdiction;
    /// Extensions for jurisdiction
    Element extJurisdiction;
    /// The full UDI carrier of the Automatic Identification and Data Capture (AIDC) technology representation of the barcode string as printed on the packaging of the device - e.g., a barcode or RFID.   Because of limitations on character sets in XML and the need to round-trip JSON data through XML, AIDC Formats *SHALL* be base64 encoded.
    String carrierAIDC;
    /// Extensions for carrierAIDC
    Element extCarrierAIDC;
    /// The full UDI carrier as the human readable form (HRF) representation of the barcode string as printed on the packaging of the device.
    String carrierHRF;
    /// Extensions for carrierHRF
    Element extCarrierHRF;
    /// A coded entry to indicate how the data was entered.
    String entryType;
    /// Extensions for entryType
    Element extEntryType;
 
    DeviceUdiCarrier.fromJSON( Map json ){
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
        this.deviceIdentifier = json['deviceIdentifier'];
        this.extDeviceIdentifier = json['_deviceIdentifier'] == null ? null : FHIRObjectFactory.buildFromJSON('Element', json['_deviceIdentifier']);
        this.issuer = json['issuer'];
        this.extIssuer = json['_issuer'] == null ? null : FHIRObjectFactory.buildFromJSON('Element', json['_issuer']);
        this.jurisdiction = json['jurisdiction'];
        this.extJurisdiction = json['_jurisdiction'] == null ? null : FHIRObjectFactory.buildFromJSON('Element', json['_jurisdiction']);
        this.carrierAIDC = json['carrierAIDC'];
        this.extCarrierAIDC = json['_carrierAIDC'] == null ? null : FHIRObjectFactory.buildFromJSON('Element', json['_carrierAIDC']);
        this.carrierHRF = json['carrierHRF'];
        this.extCarrierHRF = json['_carrierHRF'] == null ? null : FHIRObjectFactory.buildFromJSON('Element', json['_carrierHRF']);
        this.entryType = json['entryType'];
        this.extEntryType = json['_entryType'] == null ? null : FHIRObjectFactory.buildFromJSON('Element', json['_entryType']);
    }
}
