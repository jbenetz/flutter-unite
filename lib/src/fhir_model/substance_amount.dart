import 'extension.dart';
import 'fhir_object_factory.dart';
import 'quantity.dart';
import 'range.dart';
import 'element.dart';
import 'codeable_concept.dart';
import 'substance_amount_reference_range.dart';
/// Chemical substances are a single substance type whose primary defining element is the molecular structure. Chemical substances shall be defined on the basis of their complete covalent molecular structure; the presence of a salt (counter-ion) and/or solvates (water, alcohols) is also captured. Purity, grade, physical form or particle size are not taken into account in the definition of a chemical substance or in the assignment of a Substance ID.
class SubstanceAmount {
    /// Unique id for the element within a resource (for internal references). This may be any string value that does not contain spaces.
    String id;
    /// May be used to represent additional information that is not part of the basic definition of the element. To make the use of extensions safe and manageable, there is a strict set of governance  applied to the definition and use of extensions. Though any implementer can define an extension, there is a set of requirements that SHALL be met as part of the definition of the extension.
    List<Extension> extension;
    /// May be used to represent additional information that is not part of the basic definition of the element and that modifies the understanding of the element in which it is contained and/or the understanding of the containing element's descendants. Usually modifier elements provide negation or qualification. To make the use of extensions safe and manageable, there is a strict set of governance applied to the definition and use of extensions. Though any implementer can define an extension, there is a set of requirements that SHALL be met as part of the definition of the extension. Applications processing a resource are required to check for modifier extensions.
    /// 
    /// Modifier extensions SHALL NOT change the meaning of any elements on Resource or DomainResource (including cannot change the meaning of modifierExtension itself).
    List<Extension> modifierExtension;
    /// Used to capture quantitative values for a variety of elements. If only limits are given, the arithmetic mean would be the average. If only a single definite value for a given element is given, it would be captured in this field.
    Quantity amountQuantity;
    /// Used to capture quantitative values for a variety of elements. If only limits are given, the arithmetic mean would be the average. If only a single definite value for a given element is given, it would be captured in this field.
    Range amountRange;
    /// Extensions for amountString
    Element extAmountString;
    /// Most elements that require a quantitative value will also have a field called amount type. Amount type should always be specified because the actual value of the amount is often dependent on it. EXAMPLE: In capturing the actual relative amounts of substances or molecular fragments it is essential to indicate whether the amount refers to a mole ratio or weight ratio. For any given element an effort should be made to use same the amount type for all related definitional elements.
    CodeableConcept amountType;
    /// A textual comment on a numeric value.
    String amountText;
    /// Extensions for amountText
    Element extAmountText;
    /// Reference range of possible or expected values.
    SubstanceAmountReferenceRange referenceRange;
 
    SubstanceAmount.fromJSON( Map json ){
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
        this.amountQuantity = json['amountQuantity'] == null ? null : FHIRObjectFactory.buildFromJSON('Quantity', json['amountQuantity']);
        this.amountRange = json['amountRange'] == null ? null : FHIRObjectFactory.buildFromJSON('Range', json['amountRange']);
        this.extAmountString = json['_amountString'] == null ? null : FHIRObjectFactory.buildFromJSON('Element', json['_amountString']);
        this.amountType = json['amountType'] == null ? null : FHIRObjectFactory.buildFromJSON('CodeableConcept', json['amountType']);
        this.amountText = json['amountText'];
        this.extAmountText = json['_amountText'] == null ? null : FHIRObjectFactory.buildFromJSON('Element', json['_amountText']);
        this.referenceRange = json['referenceRange'] == null ? null : FHIRObjectFactory.buildFromJSON('SubstanceAmountReferenceRange', json['referenceRange']);
    }
}
