import 'extension.dart';
import 'fhir_object_factory.dart';
import 'reference.dart';
import 'codeable_concept.dart';
import 'element.dart';
import 'quantity.dart';
import 'range.dart';
import 'ratio.dart';
/// The detailed description of a substance, typically at a level beyond what is used for prescribing.
class SubstanceSpecificationRelationship {
    /// Unique id for the element within a resource (for internal references). This may be any string value that does not contain spaces.
    String id;
    /// May be used to represent additional information that is not part of the basic definition of the element. To make the use of extensions safe and manageable, there is a strict set of governance  applied to the definition and use of extensions. Though any implementer can define an extension, there is a set of requirements that SHALL be met as part of the definition of the extension.
    List<Extension> extension;
    /// May be used to represent additional information that is not part of the basic definition of the element and that modifies the understanding of the element in which it is contained and/or the understanding of the containing element's descendants. Usually modifier elements provide negation or qualification. To make the use of extensions safe and manageable, there is a strict set of governance applied to the definition and use of extensions. Though any implementer can define an extension, there is a set of requirements that SHALL be met as part of the definition of the extension. Applications processing a resource are required to check for modifier extensions.
    /// 
    /// Modifier extensions SHALL NOT change the meaning of any elements on Resource or DomainResource (including cannot change the meaning of modifierExtension itself).
    List<Extension> modifierExtension;
    /// A pointer to another substance, as a resource or just a representational code.
    Reference substanceReference;
    /// A pointer to another substance, as a resource or just a representational code.
    CodeableConcept substanceCodeableConcept;
    /// For example "salt to parent", "active moiety", "starting material".
    CodeableConcept relationship;
    /// For example where an enzyme strongly bonds with a particular substance, this is a defining relationship for that enzyme, out of several possible substance relationships.
    bool isDefining;
    /// Extensions for isDefining
    Element extIsDefining;
    /// A numeric factor for the relationship, for instance to express that the salt of a substance has some percentage of the active substance in relation to some other.
    Quantity amountQuantity;
    /// A numeric factor for the relationship, for instance to express that the salt of a substance has some percentage of the active substance in relation to some other.
    Range amountRange;
    /// A numeric factor for the relationship, for instance to express that the salt of a substance has some percentage of the active substance in relation to some other.
    Ratio amountRatio;
    /// Extensions for amountString
    Element extAmountString;
    /// For use when the numeric.
    Ratio amountRatioLowLimit;
    /// An operator for the amount, for example "average", "approximately", "less than".
    CodeableConcept amountType;
    /// Supporting literature.
    List<Reference> source;
 
    SubstanceSpecificationRelationship.fromJSON( Map json ){
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
        this.substanceReference = json['substanceReference'] == null ? null : FHIRObjectFactory.buildFromJSON('Reference', json['substanceReference']);
        this.substanceCodeableConcept = json['substanceCodeableConcept'] == null ? null : FHIRObjectFactory.buildFromJSON('CodeableConcept', json['substanceCodeableConcept']);
        this.relationship = json['relationship'] == null ? null : FHIRObjectFactory.buildFromJSON('CodeableConcept', json['relationship']);
        this.isDefining = json['isDefining'];
        this.extIsDefining = json['_isDefining'] == null ? null : FHIRObjectFactory.buildFromJSON('Element', json['_isDefining']);
        this.amountQuantity = json['amountQuantity'] == null ? null : FHIRObjectFactory.buildFromJSON('Quantity', json['amountQuantity']);
        this.amountRange = json['amountRange'] == null ? null : FHIRObjectFactory.buildFromJSON('Range', json['amountRange']);
        this.amountRatio = json['amountRatio'] == null ? null : FHIRObjectFactory.buildFromJSON('Ratio', json['amountRatio']);
        this.extAmountString = json['_amountString'] == null ? null : FHIRObjectFactory.buildFromJSON('Element', json['_amountString']);
        this.amountRatioLowLimit = json['amountRatioLowLimit'] == null ? null : FHIRObjectFactory.buildFromJSON('Ratio', json['amountRatioLowLimit']);
        this.amountType = json['amountType'] == null ? null : FHIRObjectFactory.buildFromJSON('CodeableConcept', json['amountType']);
        this.source = List<Reference>();
        if (json['source'] != null && json['source'].length > 0) {
          if( json['source'] is List ){
            json['source'].forEach((i){
              this.source.add(FHIRObjectFactory.buildFromJSON('Reference', i));
            });
          } else {
            // this handles the case when the list only has one object and does not return as a list
            var i = json['source'];
            this.source.add(FHIRObjectFactory.buildFromJSON('Reference', i));
          }          
        }
    }
}
