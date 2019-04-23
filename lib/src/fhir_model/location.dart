import 'meta.dart';
import 'fhir_object_factory.dart';
import 'element.dart';
import 'narrative.dart';
import 'extension.dart';
import 'identifier.dart';
import 'coding.dart';
import 'codeable_concept.dart';
import 'contact_point.dart';
import 'address.dart';
import 'location_position.dart';
import 'reference.dart';
import 'location_hours_of_operation.dart';
/// Details and position information for a physical place where services are provided and resources and participants may be stored, found, contained, or accommodated.
class Location {
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
    /// Unique code or number identifying the location to its users.
    List<Identifier> identifier;
    /// The status property covers the general availability of the resource, not the current value which may be covered by the operationStatus, or by a schedule/slots if they are configured for the location.
    String status;
    /// Extensions for status
    Element extStatus;
    /// The operational status covers operation values most relevant to beds (but can also apply to rooms/units/chairs/etc. such as an isolation unit/dialysis chair). This typically covers concepts such as contamination, housekeeping, and other activities like maintenance.
    Coding operationalStatus;
    /// Name of the location as used by humans. Does not need to be unique.
    String name;
    /// Extensions for name
    Element extName;
    /// A list of alternate names that the location is known as, or was known as, in the past.
    List<String> alias;
    /// Extensions for alias
    List<Element> extAlias;
    /// Description of the Location, which helps in finding or referencing the place.
    String description;
    /// Extensions for description
    Element extDescription;
    /// Indicates whether a resource instance represents a specific location or a class of locations.
    String mode;
    /// Extensions for mode
    Element extMode;
    /// Indicates the type of function performed at the location.
    List<CodeableConcept> type;
    /// The contact details of communication devices available at the location. This can include phone numbers, fax numbers, mobile numbers, email addresses and web sites.
    List<ContactPoint> telecom;
    /// Physical location.
    Address address;
    /// Physical form of the location, e.g. building, room, vehicle, road.
    CodeableConcept physicalType;
    /// The absolute geographic location of the Location, expressed using the WGS84 datum (This is the same co-ordinate system used in KML).
    LocationPosition position;
    /// The organization responsible for the provisioning and upkeep of the location.
    Reference managingOrganization;
    /// Another Location of which this Location is physically a part of.
    Reference partOf;
    /// What days/times during a week is this location usually open.
    List<LocationHoursOfOperation> hoursOfOperation;
    /// A description of when the locations opening ours are different to normal, e.g. public holiday availability. Succinctly describing all possible exceptions to normal site availability as detailed in the opening hours Times.
    String availabilityExceptions;
    /// Extensions for availabilityExceptions
    Element extAvailabilityExceptions;
    /// Technical endpoints providing access to services operated for the location.
    List<Reference> endpoint;
 
    Location.fromJSON( Map json ){
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
        this.operationalStatus = json['operationalStatus'] == null ? null : FHIRObjectFactory.buildFromJSON('Coding', json['operationalStatus']);
        this.name = json['name'];
        this.extName = json['_name'] == null ? null : FHIRObjectFactory.buildFromJSON('Element', json['_name']);
        this.alias = List<String>();
        if (json['alias'] != null && json['alias'].length > 0) {
          if( json['alias'] is List ){
            json['alias'].forEach((i){
              this.alias.add(i);
            });
          } else {
            // this handles the case when the list only has one object and does not return as a list
            var i = json['alias'];
            this.alias.add(i);
          }          
        }
        this.extAlias = List<Element>();
        if (json['_alias'] != null && json['_alias'].length > 0) {
          if( json['_alias'] is List ){
            json['_alias'].forEach((i){
              this.extAlias.add(FHIRObjectFactory.buildFromJSON('Element', i));
            });
          } else {
            // this handles the case when the list only has one object and does not return as a list
            var i = json['_alias'];
            this.extAlias.add(FHIRObjectFactory.buildFromJSON('Element', i));
          }          
        }
        this.description = json['description'];
        this.extDescription = json['_description'] == null ? null : FHIRObjectFactory.buildFromJSON('Element', json['_description']);
        this.mode = json['mode'];
        this.extMode = json['_mode'] == null ? null : FHIRObjectFactory.buildFromJSON('Element', json['_mode']);
        this.type = List<CodeableConcept>();
        if (json['type'] != null && json['type'].length > 0) {
          if( json['type'] is List ){
            json['type'].forEach((i){
              this.type.add(FHIRObjectFactory.buildFromJSON('CodeableConcept', i));
            });
          } else {
            // this handles the case when the list only has one object and does not return as a list
            var i = json['type'];
            this.type.add(FHIRObjectFactory.buildFromJSON('CodeableConcept', i));
          }          
        }
        this.telecom = List<ContactPoint>();
        if (json['telecom'] != null && json['telecom'].length > 0) {
          if( json['telecom'] is List ){
            json['telecom'].forEach((i){
              this.telecom.add(FHIRObjectFactory.buildFromJSON('ContactPoint', i));
            });
          } else {
            // this handles the case when the list only has one object and does not return as a list
            var i = json['telecom'];
            this.telecom.add(FHIRObjectFactory.buildFromJSON('ContactPoint', i));
          }          
        }
        this.address = json['address'] == null ? null : FHIRObjectFactory.buildFromJSON('Address', json['address']);
        this.physicalType = json['physicalType'] == null ? null : FHIRObjectFactory.buildFromJSON('CodeableConcept', json['physicalType']);
        this.position = json['position'] == null ? null : FHIRObjectFactory.buildFromJSON('LocationPosition', json['position']);
        this.managingOrganization = json['managingOrganization'] == null ? null : FHIRObjectFactory.buildFromJSON('Reference', json['managingOrganization']);
        this.partOf = json['partOf'] == null ? null : FHIRObjectFactory.buildFromJSON('Reference', json['partOf']);
        this.hoursOfOperation = List<LocationHoursOfOperation>();
        if (json['hoursOfOperation'] != null && json['hoursOfOperation'].length > 0) {
          if( json['hoursOfOperation'] is List ){
            json['hoursOfOperation'].forEach((i){
              this.hoursOfOperation.add(FHIRObjectFactory.buildFromJSON('LocationHoursOfOperation', i));
            });
          } else {
            // this handles the case when the list only has one object and does not return as a list
            var i = json['hoursOfOperation'];
            this.hoursOfOperation.add(FHIRObjectFactory.buildFromJSON('LocationHoursOfOperation', i));
          }          
        }
        this.availabilityExceptions = json['availabilityExceptions'];
        this.extAvailabilityExceptions = json['_availabilityExceptions'] == null ? null : FHIRObjectFactory.buildFromJSON('Element', json['_availabilityExceptions']);
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
    }
}
