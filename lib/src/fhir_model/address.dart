import 'extension.dart';
import 'fhir_object_factory.dart';
import 'element.dart';
import 'period.dart';
/// An address expressed using postal conventions (as opposed to GPS or other location definition formats).  This data type may be used to convey addresses for use in delivering mail as well as for visiting locations which might not be valid for mail delivery.  There are a variety of postal address formats defined around the world.
class Address {
    /// Unique id for the element within a resource (for internal references). This may be any string value that does not contain spaces.
    String id;
    /// May be used to represent additional information that is not part of the basic definition of the element. To make the use of extensions safe and manageable, there is a strict set of governance  applied to the definition and use of extensions. Though any implementer can define an extension, there is a set of requirements that SHALL be met as part of the definition of the extension.
    List<Extension> extension;
    /// The purpose of this address.
    String use;
    /// Extensions for use
    Element extUse;
    /// Distinguishes between physical addresses (those you can visit) and mailing addresses (e.g. PO Boxes and care-of addresses). Most addresses are both.
    String type;
    /// Extensions for type
    Element extType;
    /// Specifies the entire address as it should be displayed e.g. on a postal label. This may be provided instead of or as well as the specific parts.
    String text;
    /// Extensions for text
    Element extText;
    /// This component contains the house number, apartment number, street name, street direction,  P.O. Box number, delivery hints, and similar address information.
    List<String> line;
    /// Extensions for line
    List<Element> extLine;
    /// The name of the city, town, suburb, village or other community or delivery center.
    String city;
    /// Extensions for city
    Element extCity;
    /// The name of the administrative area (county).
    String district;
    /// Extensions for district
    Element extDistrict;
    /// Sub-unit of a country with limited sovereignty in a federally organized country. A code may be used if codes are in common use (e.g. US 2 letter state codes).
    String state;
    /// Extensions for state
    Element extState;
    /// A postal code designating a region defined by the postal service.
    String postalCode;
    /// Extensions for postalCode
    Element extPostalCode;
    /// Country - a nation as commonly understood or generally accepted.
    String country;
    /// Extensions for country
    Element extCountry;
    /// Time period when address was/is in use.
    Period period;
 
    Address.fromJSON( Map json ){
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
        this.use = json['use'];
        this.extUse = json['_use'] == null ? null : FHIRObjectFactory.buildFromJSON('Element', json['_use']);
        this.type = json['type'];
        this.extType = json['_type'] == null ? null : FHIRObjectFactory.buildFromJSON('Element', json['_type']);
        this.text = json['text'];
        this.extText = json['_text'] == null ? null : FHIRObjectFactory.buildFromJSON('Element', json['_text']);
        this.line = List<String>();
        if (json['line'] != null && json['line'].length > 0) {
          if( json['line'] is List ){
            json['line'].forEach((i){
              this.line.add(i);
            });
          } else {
            // this handles the case when the list only has one object and does not return as a list
            var i = json['line'];
            this.line.add(i);
          }          
        }
        this.extLine = List<Element>();
        if (json['_line'] != null && json['_line'].length > 0) {
          if( json['_line'] is List ){
            json['_line'].forEach((i){
              this.extLine.add(FHIRObjectFactory.buildFromJSON('Element', i));
            });
          } else {
            // this handles the case when the list only has one object and does not return as a list
            var i = json['_line'];
            this.extLine.add(FHIRObjectFactory.buildFromJSON('Element', i));
          }          
        }
        this.city = json['city'];
        this.extCity = json['_city'] == null ? null : FHIRObjectFactory.buildFromJSON('Element', json['_city']);
        this.district = json['district'];
        this.extDistrict = json['_district'] == null ? null : FHIRObjectFactory.buildFromJSON('Element', json['_district']);
        this.state = json['state'];
        this.extState = json['_state'] == null ? null : FHIRObjectFactory.buildFromJSON('Element', json['_state']);
        this.postalCode = json['postalCode'];
        this.extPostalCode = json['_postalCode'] == null ? null : FHIRObjectFactory.buildFromJSON('Element', json['_postalCode']);
        this.country = json['country'];
        this.extCountry = json['_country'] == null ? null : FHIRObjectFactory.buildFromJSON('Element', json['_country']);
        this.period = json['period'] == null ? null : FHIRObjectFactory.buildFromJSON('Period', json['period']);
    }
}
