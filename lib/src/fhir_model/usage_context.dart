import 'extension.dart';
import 'fhir_object_factory.dart';
import 'coding.dart';
import 'codeable_concept.dart';
import 'quantity.dart';
import 'range.dart';
import 'reference.dart';
/// Specifies clinical/business/etc. metadata that can be used to retrieve, index and/or categorize an artifact. This metadata can either be specific to the applicable population (e.g., age category, DRG) or the specific context of care (e.g., venue, care setting, provider of care).
class UsageContext {
    /// Unique id for the element within a resource (for internal references). This may be any string value that does not contain spaces.
    String id;
    /// May be used to represent additional information that is not part of the basic definition of the element. To make the use of extensions safe and manageable, there is a strict set of governance  applied to the definition and use of extensions. Though any implementer can define an extension, there is a set of requirements that SHALL be met as part of the definition of the extension.
    List<Extension> extension;
    /// A code that identifies the type of context being specified by this usage context.
    Coding code;
    /// A value that defines the context specified in this context of use. The interpretation of the value is defined by the code.
    CodeableConcept valueCodeableConcept;
    /// A value that defines the context specified in this context of use. The interpretation of the value is defined by the code.
    Quantity valueQuantity;
    /// A value that defines the context specified in this context of use. The interpretation of the value is defined by the code.
    Range valueRange;
    /// A value that defines the context specified in this context of use. The interpretation of the value is defined by the code.
    Reference valueReference;
 
    UsageContext.fromJSON( Map json ){
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
        this.code = json['code'] == null ? null : FHIRObjectFactory.buildFromJSON('Coding', json['code']);
        this.valueCodeableConcept = json['valueCodeableConcept'] == null ? null : FHIRObjectFactory.buildFromJSON('CodeableConcept', json['valueCodeableConcept']);
        this.valueQuantity = json['valueQuantity'] == null ? null : FHIRObjectFactory.buildFromJSON('Quantity', json['valueQuantity']);
        this.valueRange = json['valueRange'] == null ? null : FHIRObjectFactory.buildFromJSON('Range', json['valueRange']);
        this.valueReference = json['valueReference'] == null ? null : FHIRObjectFactory.buildFromJSON('Reference', json['valueReference']);
    }
}
