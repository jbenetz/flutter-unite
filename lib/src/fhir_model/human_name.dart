import 'extension.dart';
import 'fhir_object_factory.dart';
import 'element.dart';
import 'period.dart';
/// A human's name with the ability to identify parts and usage.
class HumanName {
    /// Unique id for the element within a resource (for internal references). This may be any string value that does not contain spaces.
    String id;
    /// May be used to represent additional information that is not part of the basic definition of the element. To make the use of extensions safe and manageable, there is a strict set of governance  applied to the definition and use of extensions. Though any implementer can define an extension, there is a set of requirements that SHALL be met as part of the definition of the extension.
    List<Extension> extension;
    /// Identifies the purpose for this name.
    String use;
    /// Extensions for use
    Element extUse;
    /// Specifies the entire name as it should be displayed e.g. on an application UI. This may be provided instead of or as well as the specific parts.
    String text;
    /// Extensions for text
    Element extText;
    /// The part of a name that links to the genealogy. In some cultures (e.g. Eritrea) the family name of a son is the first name of his father.
    String family;
    /// Extensions for family
    Element extFamily;
    /// Given name.
    List<String> given;
    /// Extensions for given
    List<Element> extGiven;
    /// Part of the name that is acquired as a title due to academic, legal, employment or nobility status, etc. and that appears at the start of the name.
    List<String> prefix;
    /// Extensions for prefix
    List<Element> extPrefix;
    /// Part of the name that is acquired as a title due to academic, legal, employment or nobility status, etc. and that appears at the end of the name.
    List<String> suffix;
    /// Extensions for suffix
    List<Element> extSuffix;
    /// Indicates the period of time when this name was valid for the named person.
    Period period;
 
    HumanName.fromJSON( Map json ){
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
        this.text = json['text'];
        this.extText = json['_text'] == null ? null : FHIRObjectFactory.buildFromJSON('Element', json['_text']);
        this.family = json['family'];
        this.extFamily = json['_family'] == null ? null : FHIRObjectFactory.buildFromJSON('Element', json['_family']);
        this.given = List<String>();
        if (json['given'] != null && json['given'].length > 0) {
          if( json['given'] is List ){
            json['given'].forEach((i){
              this.given.add(i);
            });
          } else {
            // this handles the case when the list only has one object and does not return as a list
            var i = json['given'];
            this.given.add(i);
          }          
        }
        this.extGiven = List<Element>();
        if (json['_given'] != null && json['_given'].length > 0) {
          if( json['_given'] is List ){
            json['_given'].forEach((i){
              this.extGiven.add(FHIRObjectFactory.buildFromJSON('Element', i));
            });
          } else {
            // this handles the case when the list only has one object and does not return as a list
            var i = json['_given'];
            this.extGiven.add(FHIRObjectFactory.buildFromJSON('Element', i));
          }          
        }
        this.prefix = List<String>();
        if (json['prefix'] != null && json['prefix'].length > 0) {
          if( json['prefix'] is List ){
            json['prefix'].forEach((i){
              this.prefix.add(i);
            });
          } else {
            // this handles the case when the list only has one object and does not return as a list
            var i = json['prefix'];
            this.prefix.add(i);
          }          
        }
        this.extPrefix = List<Element>();
        if (json['_prefix'] != null && json['_prefix'].length > 0) {
          if( json['_prefix'] is List ){
            json['_prefix'].forEach((i){
              this.extPrefix.add(FHIRObjectFactory.buildFromJSON('Element', i));
            });
          } else {
            // this handles the case when the list only has one object and does not return as a list
            var i = json['_prefix'];
            this.extPrefix.add(FHIRObjectFactory.buildFromJSON('Element', i));
          }          
        }
        this.suffix = List<String>();
        if (json['suffix'] != null && json['suffix'].length > 0) {
          if( json['suffix'] is List ){
            json['suffix'].forEach((i){
              this.suffix.add(i);
            });
          } else {
            // this handles the case when the list only has one object and does not return as a list
            var i = json['suffix'];
            this.suffix.add(i);
          }          
        }
        this.extSuffix = List<Element>();
        if (json['_suffix'] != null && json['_suffix'].length > 0) {
          if( json['_suffix'] is List ){
            json['_suffix'].forEach((i){
              this.extSuffix.add(FHIRObjectFactory.buildFromJSON('Element', i));
            });
          } else {
            // this handles the case when the list only has one object and does not return as a list
            var i = json['_suffix'];
            this.extSuffix.add(FHIRObjectFactory.buildFromJSON('Element', i));
          }          
        }
        this.period = json['period'] == null ? null : FHIRObjectFactory.buildFromJSON('Period', json['period']);
    }
}
