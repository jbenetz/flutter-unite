import 'extension.dart';
import 'fhir_object_factory.dart';
import 'codeable_concept.dart';
import 'quantity.dart';
import 'range.dart';
import 'element.dart';
import 'ratio.dart';
import 'duration.dart';
/// Describes the intended objective(s) for a patient, group or organization care, for example, weight loss, restoring an activity of daily living, obtaining herd immunity via immunization, meeting a process improvement objective, etc.
class GoalTarget {
    /// Unique id for the element within a resource (for internal references). This may be any string value that does not contain spaces.
    String id;
    /// May be used to represent additional information that is not part of the basic definition of the element. To make the use of extensions safe and manageable, there is a strict set of governance  applied to the definition and use of extensions. Though any implementer can define an extension, there is a set of requirements that SHALL be met as part of the definition of the extension.
    List<Extension> extension;
    /// May be used to represent additional information that is not part of the basic definition of the element and that modifies the understanding of the element in which it is contained and/or the understanding of the containing element's descendants. Usually modifier elements provide negation or qualification. To make the use of extensions safe and manageable, there is a strict set of governance applied to the definition and use of extensions. Though any implementer can define an extension, there is a set of requirements that SHALL be met as part of the definition of the extension. Applications processing a resource are required to check for modifier extensions.
    /// 
    /// Modifier extensions SHALL NOT change the meaning of any elements on Resource or DomainResource (including cannot change the meaning of modifierExtension itself).
    List<Extension> modifierExtension;
    /// The parameter whose value is being tracked, e.g. body weight, blood pressure, or hemoglobin A1c level.
    CodeableConcept measure;
    /// The target value of the focus to be achieved to signify the fulfillment of the goal, e.g. 150 pounds, 7.0%. Either the high or low or both values of the range can be specified. When a low value is missing, it indicates that the goal is achieved at any focus value at or below the high value. Similarly, if the high value is missing, it indicates that the goal is achieved at any focus value at or above the low value.
    Quantity detailQuantity;
    /// The target value of the focus to be achieved to signify the fulfillment of the goal, e.g. 150 pounds, 7.0%. Either the high or low or both values of the range can be specified. When a low value is missing, it indicates that the goal is achieved at any focus value at or below the high value. Similarly, if the high value is missing, it indicates that the goal is achieved at any focus value at or above the low value.
    Range detailRange;
    /// The target value of the focus to be achieved to signify the fulfillment of the goal, e.g. 150 pounds, 7.0%. Either the high or low or both values of the range can be specified. When a low value is missing, it indicates that the goal is achieved at any focus value at or below the high value. Similarly, if the high value is missing, it indicates that the goal is achieved at any focus value at or above the low value.
    CodeableConcept detailCodeableConcept;
    /// Extensions for detailString
    Element extDetailString;
    /// Extensions for detailBoolean
    Element extDetailBoolean;
    /// Extensions for detailInteger
    Element extDetailInteger;
    /// The target value of the focus to be achieved to signify the fulfillment of the goal, e.g. 150 pounds, 7.0%. Either the high or low or both values of the range can be specified. When a low value is missing, it indicates that the goal is achieved at any focus value at or below the high value. Similarly, if the high value is missing, it indicates that the goal is achieved at any focus value at or above the low value.
    Ratio detailRatio;
    /// Extensions for dueDate
    Element extDueDate;
    /// Indicates either the date or the duration after start by which the goal should be met.
    Duration dueDuration;
 
    GoalTarget.fromJSON( Map json ){
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
        this.measure = json['measure'] == null ? null : FHIRObjectFactory.buildFromJSON('CodeableConcept', json['measure']);
        this.detailQuantity = json['detailQuantity'] == null ? null : FHIRObjectFactory.buildFromJSON('Quantity', json['detailQuantity']);
        this.detailRange = json['detailRange'] == null ? null : FHIRObjectFactory.buildFromJSON('Range', json['detailRange']);
        this.detailCodeableConcept = json['detailCodeableConcept'] == null ? null : FHIRObjectFactory.buildFromJSON('CodeableConcept', json['detailCodeableConcept']);
        this.extDetailString = json['_detailString'] == null ? null : FHIRObjectFactory.buildFromJSON('Element', json['_detailString']);
        this.extDetailBoolean = json['_detailBoolean'] == null ? null : FHIRObjectFactory.buildFromJSON('Element', json['_detailBoolean']);
        this.extDetailInteger = json['_detailInteger'] == null ? null : FHIRObjectFactory.buildFromJSON('Element', json['_detailInteger']);
        this.detailRatio = json['detailRatio'] == null ? null : FHIRObjectFactory.buildFromJSON('Ratio', json['detailRatio']);
        this.extDueDate = json['_dueDate'] == null ? null : FHIRObjectFactory.buildFromJSON('Element', json['_dueDate']);
        this.dueDuration = json['dueDuration'] == null ? null : FHIRObjectFactory.buildFromJSON('Duration', json['dueDuration']);
    }
}
