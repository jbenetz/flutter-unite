import 'extension.dart';
import 'fhir_object_factory.dart';
import 'element.dart';
/// Details and position information for a physical place where services are provided and resources and participants may be stored, found, contained, or accommodated.
class LocationPosition {
    /// Unique id for the element within a resource (for internal references). This may be any string value that does not contain spaces.
    String id;
    /// May be used to represent additional information that is not part of the basic definition of the element. To make the use of extensions safe and manageable, there is a strict set of governance  applied to the definition and use of extensions. Though any implementer can define an extension, there is a set of requirements that SHALL be met as part of the definition of the extension.
    List<Extension> extension;
    /// May be used to represent additional information that is not part of the basic definition of the element and that modifies the understanding of the element in which it is contained and/or the understanding of the containing element's descendants. Usually modifier elements provide negation or qualification. To make the use of extensions safe and manageable, there is a strict set of governance applied to the definition and use of extensions. Though any implementer can define an extension, there is a set of requirements that SHALL be met as part of the definition of the extension. Applications processing a resource are required to check for modifier extensions.
    /// 
    /// Modifier extensions SHALL NOT change the meaning of any elements on Resource or DomainResource (including cannot change the meaning of modifierExtension itself).
    List<Extension> modifierExtension;
    /// Longitude. The value domain and the interpretation are the same as for the text of the longitude element in KML (see notes below).
    double longitude;
    /// Extensions for longitude
    Element extLongitude;
    /// Latitude. The value domain and the interpretation are the same as for the text of the latitude element in KML (see notes below).
    double latitude;
    /// Extensions for latitude
    Element extLatitude;
    /// Altitude. The value domain and the interpretation are the same as for the text of the altitude element in KML (see notes below).
    double altitude;
    /// Extensions for altitude
    Element extAltitude;
 
    LocationPosition.fromJSON( Map json ){
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
        if( json['longitude'] != null && json['longitude'] is int ) {
          this.longitude = json['longitude'].toDouble();
        } else {
          this.longitude = json['longitude'];
        }
    
        this.extLongitude = json['_longitude'] == null ? null : FHIRObjectFactory.buildFromJSON('Element', json['_longitude']);
        if( json['latitude'] != null && json['latitude'] is int ) {
          this.latitude = json['latitude'].toDouble();
        } else {
          this.latitude = json['latitude'];
        }
    
        this.extLatitude = json['_latitude'] == null ? null : FHIRObjectFactory.buildFromJSON('Element', json['_latitude']);
        if( json['altitude'] != null && json['altitude'] is int ) {
          this.altitude = json['altitude'].toDouble();
        } else {
          this.altitude = json['altitude'];
        }
    
        this.extAltitude = json['_altitude'] == null ? null : FHIRObjectFactory.buildFromJSON('Element', json['_altitude']);
    }
}
