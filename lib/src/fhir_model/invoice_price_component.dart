import 'extension.dart';
import 'fhir_object_factory.dart';
import 'element.dart';
import 'codeable_concept.dart';
import 'money.dart';
/// Invoice containing collected ChargeItems from an Account with calculated individual and total price for Billing purpose.
class InvoicePriceComponent {
    /// Unique id for the element within a resource (for internal references). This may be any string value that does not contain spaces.
    String id;
    /// May be used to represent additional information that is not part of the basic definition of the element. To make the use of extensions safe and manageable, there is a strict set of governance  applied to the definition and use of extensions. Though any implementer can define an extension, there is a set of requirements that SHALL be met as part of the definition of the extension.
    List<Extension> extension;
    /// May be used to represent additional information that is not part of the basic definition of the element and that modifies the understanding of the element in which it is contained and/or the understanding of the containing element's descendants. Usually modifier elements provide negation or qualification. To make the use of extensions safe and manageable, there is a strict set of governance applied to the definition and use of extensions. Though any implementer can define an extension, there is a set of requirements that SHALL be met as part of the definition of the extension. Applications processing a resource are required to check for modifier extensions.
    /// 
    /// Modifier extensions SHALL NOT change the meaning of any elements on Resource or DomainResource (including cannot change the meaning of modifierExtension itself).
    List<Extension> modifierExtension;
    /// This code identifies the type of the component.
    String type;
    /// Extensions for type
    Element extType;
    /// A code that identifies the component. Codes may be used to differentiate between kinds of taxes, surcharges, discounts etc.
    CodeableConcept code;
    /// The factor that has been applied on the base price for calculating this component.
    double factor;
    /// Extensions for factor
    Element extFactor;
    /// The amount calculated for this component.
    Money amount;
 
    InvoicePriceComponent.fromJSON( Map json ){
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
        this.type = json['type'];
        this.extType = json['_type'] == null ? null : FHIRObjectFactory.buildFromJSON('Element', json['_type']);
        this.code = json['code'] == null ? null : FHIRObjectFactory.buildFromJSON('CodeableConcept', json['code']);
        if( json['factor'] != null && json['factor'] is int ) {
          this.factor = json['factor'].toDouble();
        } else {
          this.factor = json['factor'];
        }
    
        this.extFactor = json['_factor'] == null ? null : FHIRObjectFactory.buildFromJSON('Element', json['_factor']);
        this.amount = json['amount'] == null ? null : FHIRObjectFactory.buildFromJSON('Money', json['amount']);
    }
}
