import 'extension.dart';
import 'fhir_object_factory.dart';
import 'element.dart';
import 'medicinal_product_name_part.dart';
import 'medicinal_product_country_language.dart';
/// Detailed definition of a medicinal product, typically for uses other than direct patient care (e.g. regulatory use).
class MedicinalProductName {
    /// Unique id for the element within a resource (for internal references). This may be any string value that does not contain spaces.
    String id;
    /// May be used to represent additional information that is not part of the basic definition of the element. To make the use of extensions safe and manageable, there is a strict set of governance  applied to the definition and use of extensions. Though any implementer can define an extension, there is a set of requirements that SHALL be met as part of the definition of the extension.
    List<Extension> extension;
    /// May be used to represent additional information that is not part of the basic definition of the element and that modifies the understanding of the element in which it is contained and/or the understanding of the containing element's descendants. Usually modifier elements provide negation or qualification. To make the use of extensions safe and manageable, there is a strict set of governance applied to the definition and use of extensions. Though any implementer can define an extension, there is a set of requirements that SHALL be met as part of the definition of the extension. Applications processing a resource are required to check for modifier extensions.
    /// 
    /// Modifier extensions SHALL NOT change the meaning of any elements on Resource or DomainResource (including cannot change the meaning of modifierExtension itself).
    List<Extension> modifierExtension;
    /// The full product name.
    String productName;
    /// Extensions for productName
    Element extProductName;
    /// Coding words or phrases of the name.
    List<MedicinalProductNamePart> namePart;
    /// Country where the name applies.
    List<MedicinalProductCountryLanguage> countryLanguage;
 
    MedicinalProductName.fromJSON( Map json ){
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
        this.productName = json['productName'];
        this.extProductName = json['_productName'] == null ? null : FHIRObjectFactory.buildFromJSON('Element', json['_productName']);
        this.namePart = List<MedicinalProductNamePart>();
        if (json['namePart'] != null && json['namePart'].length > 0) {
          if( json['namePart'] is List ){
            json['namePart'].forEach((i){
              this.namePart.add(FHIRObjectFactory.buildFromJSON('MedicinalProductNamePart', i));
            });
          } else {
            // this handles the case when the list only has one object and does not return as a list
            var i = json['namePart'];
            this.namePart.add(FHIRObjectFactory.buildFromJSON('MedicinalProductNamePart', i));
          }          
        }
        this.countryLanguage = List<MedicinalProductCountryLanguage>();
        if (json['countryLanguage'] != null && json['countryLanguage'].length > 0) {
          if( json['countryLanguage'] is List ){
            json['countryLanguage'].forEach((i){
              this.countryLanguage.add(FHIRObjectFactory.buildFromJSON('MedicinalProductCountryLanguage', i));
            });
          } else {
            // this handles the case when the list only has one object and does not return as a list
            var i = json['countryLanguage'];
            this.countryLanguage.add(FHIRObjectFactory.buildFromJSON('MedicinalProductCountryLanguage', i));
          }          
        }
    }
}
