import 'extension.dart';
import 'fhir_object_factory.dart';
import 'element.dart';
/// A measured amount (or an amount that can potentially be measured). Note that measured amounts include amounts that are not precisely quantified, including amounts involving arbitrary units and floating currencies.
class Count {
    /// Unique id for the element within a resource (for internal references). This may be any string value that does not contain spaces.
    String id;
    /// May be used to represent additional information that is not part of the basic definition of the element. To make the use of extensions safe and manageable, there is a strict set of governance  applied to the definition and use of extensions. Though any implementer can define an extension, there is a set of requirements that SHALL be met as part of the definition of the extension.
    List<Extension> extension;
    /// The value of the measured amount. The value includes an implicit precision in the presentation of the value.
    double value;
    /// Extensions for value
    Element extValue;
    /// How the value should be understood and represented - whether the actual value is greater or less than the stated value due to measurement issues; e.g. if the comparator is "<" , then the real value is < stated value.
    String comparator;
    /// Extensions for comparator
    Element extComparator;
    /// A human-readable form of the unit.
    String unit;
    /// Extensions for unit
    Element extUnit;
    /// The identification of the system that provides the coded form of the unit.
    String system;
    /// Extensions for system
    Element extSystem;
    /// A computer processable form of the unit in some unit representation system.
    String code;
    /// Extensions for code
    Element extCode;
 
    Count.fromJSON( Map json ){
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
        this.comparator = json['comparator'];
        this.extComparator = json['_comparator'] == null ? null : FHIRObjectFactory.buildFromJSON('Element', json['_comparator']);
        this.unit = json['unit'];
        this.extUnit = json['_unit'] == null ? null : FHIRObjectFactory.buildFromJSON('Element', json['_unit']);
        this.system = json['system'];
        this.extSystem = json['_system'] == null ? null : FHIRObjectFactory.buildFromJSON('Element', json['_system']);
        this.code = json['code'];
        this.extCode = json['_code'] == null ? null : FHIRObjectFactory.buildFromJSON('Element', json['_code']);
    }
}
