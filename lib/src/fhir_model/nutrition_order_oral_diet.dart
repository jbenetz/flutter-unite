import 'extension.dart';
import 'fhir_object_factory.dart';
import 'codeable_concept.dart';
import 'timing.dart';
import 'nutrition_order_nutrient.dart';
import 'nutrition_order_texture.dart';
import 'element.dart';
/// A request to supply a diet, formula feeding (enteral) or oral nutritional supplement to a patient/resident.
class NutritionOrderOralDiet {
    /// Unique id for the element within a resource (for internal references). This may be any string value that does not contain spaces.
    String id;
    /// May be used to represent additional information that is not part of the basic definition of the element. To make the use of extensions safe and manageable, there is a strict set of governance  applied to the definition and use of extensions. Though any implementer can define an extension, there is a set of requirements that SHALL be met as part of the definition of the extension.
    List<Extension> extension;
    /// May be used to represent additional information that is not part of the basic definition of the element and that modifies the understanding of the element in which it is contained and/or the understanding of the containing element's descendants. Usually modifier elements provide negation or qualification. To make the use of extensions safe and manageable, there is a strict set of governance applied to the definition and use of extensions. Though any implementer can define an extension, there is a set of requirements that SHALL be met as part of the definition of the extension. Applications processing a resource are required to check for modifier extensions.
    /// 
    /// Modifier extensions SHALL NOT change the meaning of any elements on Resource or DomainResource (including cannot change the meaning of modifierExtension itself).
    List<Extension> modifierExtension;
    /// The kind of diet or dietary restriction such as fiber restricted diet or diabetic diet.
    List<CodeableConcept> type;
    /// The time period and frequency at which the diet should be given.  The diet should be given for the combination of all schedules if more than one schedule is present.
    List<Timing> schedule;
    /// Class that defines the quantity and type of nutrient modifications (for example carbohydrate, fiber or sodium) required for the oral diet.
    List<NutritionOrderNutrient> nutrient;
    /// Class that describes any texture modifications required for the patient to safely consume various types of solid foods.
    List<NutritionOrderTexture> texture;
    /// The required consistency (e.g. honey-thick, nectar-thick, thin, thickened.) of liquids or fluids served to the patient.
    List<CodeableConcept> fluidConsistencyType;
    /// Free text or additional instructions or information pertaining to the oral diet.
    String instruction;
    /// Extensions for instruction
    Element extInstruction;
 
    NutritionOrderOralDiet.fromJSON( Map json ){
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
        this.type = List<CodeableConcept>();
        if (json['type'] != null && json['type'].length > 0) {
          if( json['type'] is List ){
            json['type'].forEach((i){
              this.type.add(FHIRObjectFactory.buildFromJSON('CodeableConcept', i));
            });
          } else {
            // this handles the case when the list only has one object and does not return as a list
            var i = json['type'];
            this.type.add(FHIRObjectFactory.buildFromJSON('CodeableConcept', i));
          }          
        }
        this.schedule = List<Timing>();
        if (json['schedule'] != null && json['schedule'].length > 0) {
          if( json['schedule'] is List ){
            json['schedule'].forEach((i){
              this.schedule.add(FHIRObjectFactory.buildFromJSON('Timing', i));
            });
          } else {
            // this handles the case when the list only has one object and does not return as a list
            var i = json['schedule'];
            this.schedule.add(FHIRObjectFactory.buildFromJSON('Timing', i));
          }          
        }
        this.nutrient = List<NutritionOrderNutrient>();
        if (json['nutrient'] != null && json['nutrient'].length > 0) {
          if( json['nutrient'] is List ){
            json['nutrient'].forEach((i){
              this.nutrient.add(FHIRObjectFactory.buildFromJSON('NutritionOrderNutrient', i));
            });
          } else {
            // this handles the case when the list only has one object and does not return as a list
            var i = json['nutrient'];
            this.nutrient.add(FHIRObjectFactory.buildFromJSON('NutritionOrderNutrient', i));
          }          
        }
        this.texture = List<NutritionOrderTexture>();
        if (json['texture'] != null && json['texture'].length > 0) {
          if( json['texture'] is List ){
            json['texture'].forEach((i){
              this.texture.add(FHIRObjectFactory.buildFromJSON('NutritionOrderTexture', i));
            });
          } else {
            // this handles the case when the list only has one object and does not return as a list
            var i = json['texture'];
            this.texture.add(FHIRObjectFactory.buildFromJSON('NutritionOrderTexture', i));
          }          
        }
        this.fluidConsistencyType = List<CodeableConcept>();
        if (json['fluidConsistencyType'] != null && json['fluidConsistencyType'].length > 0) {
          if( json['fluidConsistencyType'] is List ){
            json['fluidConsistencyType'].forEach((i){
              this.fluidConsistencyType.add(FHIRObjectFactory.buildFromJSON('CodeableConcept', i));
            });
          } else {
            // this handles the case when the list only has one object and does not return as a list
            var i = json['fluidConsistencyType'];
            this.fluidConsistencyType.add(FHIRObjectFactory.buildFromJSON('CodeableConcept', i));
          }          
        }
        this.instruction = json['instruction'];
        this.extInstruction = json['_instruction'] == null ? null : FHIRObjectFactory.buildFromJSON('Element', json['_instruction']);
    }
}
