import 'meta.dart';
import 'fhir_object_factory.dart';
import 'element.dart';
import 'narrative.dart';
import 'extension.dart';
import 'identifier.dart';
import 'codeable_concept.dart';
import 'reference.dart';
import 'medicinal_product_pharmaceutical_characteristics.dart';
import 'medicinal_product_pharmaceutical_route_of_administration.dart';
/// A pharmaceutical product described in terms of its composition and dose form.
class MedicinalProductPharmaceutical {
    /// The logical id of the resource, as used in the URL for the resource. Once assigned, this value never changes.
    String id;
    /// The metadata about the resource. This is content that is maintained by the infrastructure. Changes to the content might not always be associated with version changes to the resource.
    Meta meta;
    /// A reference to a set of rules that were followed when the resource was constructed, and which must be understood when processing the content. Often, this is a reference to an implementation guide that defines the special rules along with other profiles etc.
    String implicitRules;
    /// Extensions for implicitRules
    Element extImplicitRules;
    /// The base language in which the resource is written.
    String language;
    /// Extensions for language
    Element extLanguage;
    /// A human-readable narrative that contains a summary of the resource and can be used to represent the content of the resource to a human. The narrative need not encode all the structured data, but is required to contain sufficient detail to make it "clinically safe" for a human to just read the narrative. Resource definitions may define what content should be represented in the narrative to ensure clinical safety.
    Narrative text;
    /// May be used to represent additional information that is not part of the basic definition of the resource. To make the use of extensions safe and manageable, there is a strict set of governance  applied to the definition and use of extensions. Though any implementer can define an extension, there is a set of requirements that SHALL be met as part of the definition of the extension.
    List<Extension> extension;
    /// May be used to represent additional information that is not part of the basic definition of the resource and that modifies the understanding of the element that contains it and/or the understanding of the containing element's descendants. Usually modifier elements provide negation or qualification. To make the use of extensions safe and manageable, there is a strict set of governance applied to the definition and use of extensions. Though any implementer is allowed to define an extension, there is a set of requirements that SHALL be met as part of the definition of the extension. Applications processing a resource are required to check for modifier extensions.
    /// 
    /// Modifier extensions SHALL NOT change the meaning of any elements on Resource or DomainResource (including cannot change the meaning of modifierExtension itself).
    List<Extension> modifierExtension;
    /// An identifier for the pharmaceutical medicinal product.
    List<Identifier> identifier;
    /// The administrable dose form, after necessary reconstitution.
    CodeableConcept administrableDoseForm;
    /// Todo.
    CodeableConcept unitOfPresentation;
    /// Ingredient.
    List<Reference> ingredient;
    /// Accompanying device.
    List<Reference> device;
    /// Characteristics e.g. a products onset of action.
    List<MedicinalProductPharmaceuticalCharacteristics> characteristics;
    /// The path by which the pharmaceutical product is taken into or makes contact with the body.
    List<MedicinalProductPharmaceuticalRouteOfAdministration> routeOfAdministration;
 
    MedicinalProductPharmaceutical.fromJSON( Map json ){
        this.id = json['id'];
        this.meta = json['meta'] == null ? null : FHIRObjectFactory.buildFromJSON('Meta', json['meta']);
        this.implicitRules = json['implicitRules'];
        this.extImplicitRules = json['_implicitRules'] == null ? null : FHIRObjectFactory.buildFromJSON('Element', json['_implicitRules']);
        this.language = json['language'];
        this.extLanguage = json['_language'] == null ? null : FHIRObjectFactory.buildFromJSON('Element', json['_language']);
        this.text = json['text'] == null ? null : FHIRObjectFactory.buildFromJSON('Narrative', json['text']);
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
        this.identifier = List<Identifier>();
        if (json['identifier'] != null && json['identifier'].length > 0) {
          if( json['identifier'] is List ){
            json['identifier'].forEach((i){
              this.identifier.add(FHIRObjectFactory.buildFromJSON('Identifier', i));
            });
          } else {
            // this handles the case when the list only has one object and does not return as a list
            var i = json['identifier'];
            this.identifier.add(FHIRObjectFactory.buildFromJSON('Identifier', i));
          }          
        }
        this.administrableDoseForm = json['administrableDoseForm'] == null ? null : FHIRObjectFactory.buildFromJSON('CodeableConcept', json['administrableDoseForm']);
        this.unitOfPresentation = json['unitOfPresentation'] == null ? null : FHIRObjectFactory.buildFromJSON('CodeableConcept', json['unitOfPresentation']);
        this.ingredient = List<Reference>();
        if (json['ingredient'] != null && json['ingredient'].length > 0) {
          if( json['ingredient'] is List ){
            json['ingredient'].forEach((i){
              this.ingredient.add(FHIRObjectFactory.buildFromJSON('Reference', i));
            });
          } else {
            // this handles the case when the list only has one object and does not return as a list
            var i = json['ingredient'];
            this.ingredient.add(FHIRObjectFactory.buildFromJSON('Reference', i));
          }          
        }
        this.device = List<Reference>();
        if (json['device'] != null && json['device'].length > 0) {
          if( json['device'] is List ){
            json['device'].forEach((i){
              this.device.add(FHIRObjectFactory.buildFromJSON('Reference', i));
            });
          } else {
            // this handles the case when the list only has one object and does not return as a list
            var i = json['device'];
            this.device.add(FHIRObjectFactory.buildFromJSON('Reference', i));
          }          
        }
        this.characteristics = List<MedicinalProductPharmaceuticalCharacteristics>();
        if (json['characteristics'] != null && json['characteristics'].length > 0) {
          if( json['characteristics'] is List ){
            json['characteristics'].forEach((i){
              this.characteristics.add(FHIRObjectFactory.buildFromJSON('MedicinalProductPharmaceuticalCharacteristics', i));
            });
          } else {
            // this handles the case when the list only has one object and does not return as a list
            var i = json['characteristics'];
            this.characteristics.add(FHIRObjectFactory.buildFromJSON('MedicinalProductPharmaceuticalCharacteristics', i));
          }          
        }
        this.routeOfAdministration = List<MedicinalProductPharmaceuticalRouteOfAdministration>();
        if (json['routeOfAdministration'] != null && json['routeOfAdministration'].length > 0) {
          if( json['routeOfAdministration'] is List ){
            json['routeOfAdministration'].forEach((i){
              this.routeOfAdministration.add(FHIRObjectFactory.buildFromJSON('MedicinalProductPharmaceuticalRouteOfAdministration', i));
            });
          } else {
            // this handles the case when the list only has one object and does not return as a list
            var i = json['routeOfAdministration'];
            this.routeOfAdministration.add(FHIRObjectFactory.buildFromJSON('MedicinalProductPharmaceuticalRouteOfAdministration', i));
          }          
        }
    }
}
