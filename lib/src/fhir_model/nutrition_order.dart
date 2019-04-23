import 'meta.dart';
import 'fhir_object_factory.dart';
import 'element.dart';
import 'narrative.dart';
import 'extension.dart';
import 'identifier.dart';
import 'reference.dart';
import 'codeable_concept.dart';
import 'nutrition_order_oral_diet.dart';
import 'nutrition_order_supplement.dart';
import 'nutrition_order_enteral_formula.dart';
import 'annotation.dart';
/// A request to supply a diet, formula feeding (enteral) or oral nutritional supplement to a patient/resident.
class NutritionOrder {
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
    /// Identifiers assigned to this order by the order sender or by the order receiver.
    List<Identifier> identifier;
    /// The URL pointing to a FHIR-defined protocol, guideline, orderset or other definition that is adhered to in whole or in part by this NutritionOrder.
    List<String> instantiatesCanonical;
    /// The URL pointing to an externally maintained protocol, guideline, orderset or other definition that is adhered to in whole or in part by this NutritionOrder.
    List<String> instantiatesUri;
    /// Extensions for instantiatesUri
    List<Element> extInstantiatesUri;
    /// The URL pointing to a protocol, guideline, orderset or other definition that is adhered to in whole or in part by this NutritionOrder.
    List<String> instantiates;
    /// Extensions for instantiates
    List<Element> extInstantiates;
    /// The workflow status of the nutrition order/request.
    String status;
    /// Extensions for status
    Element extStatus;
    /// Indicates the level of authority/intentionality associated with the NutrionOrder and where the request fits into the workflow chain.
    String intent;
    /// Extensions for intent
    Element extIntent;
    /// The person (patient) who needs the nutrition order for an oral diet, nutritional supplement and/or enteral or formula feeding.
    Reference patient;
    /// An encounter that provides additional information about the healthcare context in which this request is made.
    Reference encounter;
    /// The date and time that this nutrition order was requested.
    DateTime dateTime;
    /// Extensions for dateTime
    Element extDateTime;
    /// The practitioner that holds legal responsibility for ordering the diet, nutritional supplement, or formula feedings.
    Reference orderer;
    /// A link to a record of allergies or intolerances  which should be included in the nutrition order.
    List<Reference> allergyIntolerance;
    /// This modifier is used to convey order-specific modifiers about the type of food that should be given. These can be derived from patient allergies, intolerances, or preferences such as Halal, Vegan or Kosher. This modifier applies to the entire nutrition order inclusive of the oral diet, nutritional supplements and enteral formula feedings.
    List<CodeableConcept> foodPreferenceModifier;
    /// This modifier is used to convey Order-specific modifier about the type of oral food or oral fluids that should not be given. These can be derived from patient allergies, intolerances, or preferences such as No Red Meat, No Soy or No Wheat or  Gluten-Free.  While it should not be necessary to repeat allergy or intolerance information captured in the referenced AllergyIntolerance resource in the excludeFoodModifier, this element may be used to convey additional specificity related to foods that should be eliminated from the patient’s diet for any reason.  This modifier applies to the entire nutrition order inclusive of the oral diet, nutritional supplements and enteral formula feedings.
    List<CodeableConcept> excludeFoodModifier;
    /// Diet given orally in contrast to enteral (tube) feeding.
    NutritionOrderOralDiet oralDiet;
    /// Oral nutritional products given in order to add further nutritional value to the patient's diet.
    List<NutritionOrderSupplement> supplement;
    /// Feeding provided through the gastrointestinal tract via a tube, catheter, or stoma that delivers nutrition distal to the oral cavity.
    NutritionOrderEnteralFormula enteralFormula;
    /// Comments made about the {{title}} by the requester, performer, subject or other participants.
    List<Annotation> note;
 
    NutritionOrder.fromJSON( Map json ){
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
        this.instantiatesCanonical = List<String>();
        if (json['instantiatesCanonical'] != null && json['instantiatesCanonical'].length > 0) {
          if( json['instantiatesCanonical'] is List ){
            json['instantiatesCanonical'].forEach((i){
              this.instantiatesCanonical.add(i);
            });
          } else {
            // this handles the case when the list only has one object and does not return as a list
            var i = json['instantiatesCanonical'];
            this.instantiatesCanonical.add(i);
          }          
        }
        this.instantiatesUri = List<String>();
        if (json['instantiatesUri'] != null && json['instantiatesUri'].length > 0) {
          if( json['instantiatesUri'] is List ){
            json['instantiatesUri'].forEach((i){
              this.instantiatesUri.add(i);
            });
          } else {
            // this handles the case when the list only has one object and does not return as a list
            var i = json['instantiatesUri'];
            this.instantiatesUri.add(i);
          }          
        }
        this.extInstantiatesUri = List<Element>();
        if (json['_instantiatesUri'] != null && json['_instantiatesUri'].length > 0) {
          if( json['_instantiatesUri'] is List ){
            json['_instantiatesUri'].forEach((i){
              this.extInstantiatesUri.add(FHIRObjectFactory.buildFromJSON('Element', i));
            });
          } else {
            // this handles the case when the list only has one object and does not return as a list
            var i = json['_instantiatesUri'];
            this.extInstantiatesUri.add(FHIRObjectFactory.buildFromJSON('Element', i));
          }          
        }
        this.instantiates = List<String>();
        if (json['instantiates'] != null && json['instantiates'].length > 0) {
          if( json['instantiates'] is List ){
            json['instantiates'].forEach((i){
              this.instantiates.add(i);
            });
          } else {
            // this handles the case when the list only has one object and does not return as a list
            var i = json['instantiates'];
            this.instantiates.add(i);
          }          
        }
        this.extInstantiates = List<Element>();
        if (json['_instantiates'] != null && json['_instantiates'].length > 0) {
          if( json['_instantiates'] is List ){
            json['_instantiates'].forEach((i){
              this.extInstantiates.add(FHIRObjectFactory.buildFromJSON('Element', i));
            });
          } else {
            // this handles the case when the list only has one object and does not return as a list
            var i = json['_instantiates'];
            this.extInstantiates.add(FHIRObjectFactory.buildFromJSON('Element', i));
          }          
        }
        this.status = json['status'];
        this.extStatus = json['_status'] == null ? null : FHIRObjectFactory.buildFromJSON('Element', json['_status']);
        this.intent = json['intent'];
        this.extIntent = json['_intent'] == null ? null : FHIRObjectFactory.buildFromJSON('Element', json['_intent']);
        this.patient = json['patient'] == null ? null : FHIRObjectFactory.buildFromJSON('Reference', json['patient']);
        this.encounter = json['encounter'] == null ? null : FHIRObjectFactory.buildFromJSON('Reference', json['encounter']);
        if( json['dateTime'] != null ) { this.dateTime = DateTime.parse(json['dateTime']);}
        this.extDateTime = json['_dateTime'] == null ? null : FHIRObjectFactory.buildFromJSON('Element', json['_dateTime']);
        this.orderer = json['orderer'] == null ? null : FHIRObjectFactory.buildFromJSON('Reference', json['orderer']);
        this.allergyIntolerance = List<Reference>();
        if (json['allergyIntolerance'] != null && json['allergyIntolerance'].length > 0) {
          if( json['allergyIntolerance'] is List ){
            json['allergyIntolerance'].forEach((i){
              this.allergyIntolerance.add(FHIRObjectFactory.buildFromJSON('Reference', i));
            });
          } else {
            // this handles the case when the list only has one object and does not return as a list
            var i = json['allergyIntolerance'];
            this.allergyIntolerance.add(FHIRObjectFactory.buildFromJSON('Reference', i));
          }          
        }
        this.foodPreferenceModifier = List<CodeableConcept>();
        if (json['foodPreferenceModifier'] != null && json['foodPreferenceModifier'].length > 0) {
          if( json['foodPreferenceModifier'] is List ){
            json['foodPreferenceModifier'].forEach((i){
              this.foodPreferenceModifier.add(FHIRObjectFactory.buildFromJSON('CodeableConcept', i));
            });
          } else {
            // this handles the case when the list only has one object and does not return as a list
            var i = json['foodPreferenceModifier'];
            this.foodPreferenceModifier.add(FHIRObjectFactory.buildFromJSON('CodeableConcept', i));
          }          
        }
        this.excludeFoodModifier = List<CodeableConcept>();
        if (json['excludeFoodModifier'] != null && json['excludeFoodModifier'].length > 0) {
          if( json['excludeFoodModifier'] is List ){
            json['excludeFoodModifier'].forEach((i){
              this.excludeFoodModifier.add(FHIRObjectFactory.buildFromJSON('CodeableConcept', i));
            });
          } else {
            // this handles the case when the list only has one object and does not return as a list
            var i = json['excludeFoodModifier'];
            this.excludeFoodModifier.add(FHIRObjectFactory.buildFromJSON('CodeableConcept', i));
          }          
        }
        this.oralDiet = json['oralDiet'] == null ? null : FHIRObjectFactory.buildFromJSON('NutritionOrderOralDiet', json['oralDiet']);
        this.supplement = List<NutritionOrderSupplement>();
        if (json['supplement'] != null && json['supplement'].length > 0) {
          if( json['supplement'] is List ){
            json['supplement'].forEach((i){
              this.supplement.add(FHIRObjectFactory.buildFromJSON('NutritionOrderSupplement', i));
            });
          } else {
            // this handles the case when the list only has one object and does not return as a list
            var i = json['supplement'];
            this.supplement.add(FHIRObjectFactory.buildFromJSON('NutritionOrderSupplement', i));
          }          
        }
        this.enteralFormula = json['enteralFormula'] == null ? null : FHIRObjectFactory.buildFromJSON('NutritionOrderEnteralFormula', json['enteralFormula']);
        this.note = List<Annotation>();
        if (json['note'] != null && json['note'].length > 0) {
          if( json['note'] is List ){
            json['note'].forEach((i){
              this.note.add(FHIRObjectFactory.buildFromJSON('Annotation', i));
            });
          } else {
            // this handles the case when the list only has one object and does not return as a list
            var i = json['note'];
            this.note.add(FHIRObjectFactory.buildFromJSON('Annotation', i));
          }          
        }
    }
}
