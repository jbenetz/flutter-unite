import 'extension.dart';
import 'fhir_object_factory.dart';
import 'element.dart';
/// An amount of economic utility in some recognized currency.
class Money {
    /// Unique id for the element within a resource (for internal references). This may be any string value that does not contain spaces.
    String id;
    /// May be used to represent additional information that is not part of the basic definition of the element. To make the use of extensions safe and manageable, there is a strict set of governance  applied to the definition and use of extensions. Though any implementer can define an extension, there is a set of requirements that SHALL be met as part of the definition of the extension.
    List<Extension> extension;
    /// Numerical value (with implicit precision).
    double value;
    /// Extensions for value
    Element extValue;
    /// ISO 4217 Currency Code.
    String currency;
    /// Extensions for currency
    Element extCurrency;
 
    Money.fromJSON( Map json ){
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
        if( json['value'] != null && json['value'] is int ) {
          this.value = json['value'].toDouble();
        } else {
          this.value = json['value'];
        }
    
        this.extValue = json['_value'] == null ? null : FHIRObjectFactory.buildFromJSON('Element', json['_value']);
        this.currency = json['currency'];
        this.extCurrency = json['_currency'] == null ? null : FHIRObjectFactory.buildFromJSON('Element', json['_currency']);
    }
}
