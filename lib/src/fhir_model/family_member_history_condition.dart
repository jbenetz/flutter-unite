import 'extension.dart';
import 'fhir_object_factory.dart';
import 'codeable_concept.dart';
import 'element.dart';
import 'age.dart';
import 'range.dart';
import 'period.dart';
import 'annotation.dart';
/// Significant health conditions for a person related to the patient relevant in the context of care for the patient.
class FamilyMemberHistoryCondition {
    /// Unique id for the element within a resource (for internal references). This may be any string value that does not contain spaces.
    String id;
    /// May be used to represent additional information that is not part of the basic definition of the element. To make the use of extensions safe and manageable, there is a strict set of governance  applied to the definition and use of extensions. Though any implementer can define an extension, there is a set of requirements that SHALL be met as part of the definition of the extension.
    List<Extension> extension;
    /// May be used to represent additional information that is not part of the basic definition of the element and that modifies the understanding of the element in which it is contained and/or the understanding of the containing element's descendants. Usually modifier elements provide negation or qualification. To make the use of extensions safe and manageable, there is a strict set of governance applied to the definition and use of extensions. Though any implementer can define an extension, there is a set of requirements that SHALL be met as part of the definition of the extension. Applications processing a resource are required to check for modifier extensions.
    /// 
    /// Modifier extensions SHALL NOT change the meaning of any elements on Resource or DomainResource (including cannot change the meaning of modifierExtension itself).
    List<Extension> modifierExtension;
    /// The actual condition specified. Could be a coded condition (like MI or Diabetes) or a less specific string like 'cancer' depending on how much is known about the condition and the capabilities of the creating system.
    CodeableConcept code;
    /// Indicates what happened following the condition.  If the condition resulted in death, deceased date is captured on the relation.
    CodeableConcept outcome;
    /// This condition contributed to the cause of death of the related person. If contributedToDeath is not populated, then it is unknown.
    bool contributedToDeath;
    /// Extensions for contributedToDeath
    Element extContributedToDeath;
    /// Either the age of onset, range of approximate age or descriptive string can be recorded.  For conditions with multiple occurrences, this describes the first known occurrence.
    Age onsetAge;
    /// Either the age of onset, range of approximate age or descriptive string can be recorded.  For conditions with multiple occurrences, this describes the first known occurrence.
    Range onsetRange;
    /// Either the age of onset, range of approximate age or descriptive string can be recorded.  For conditions with multiple occurrences, this describes the first known occurrence.
    Period onsetPeriod;
    /// Extensions for onsetString
    Element extOnsetString;
    /// An area where general notes can be placed about this specific condition.
    List<Annotation> note;
 
    FamilyMemberHistoryCondition.fromJSON( Map json ){
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
        this.code = json['code'] == null ? null : FHIRObjectFactory.buildFromJSON('CodeableConcept', json['code']);
        this.outcome = json['outcome'] == null ? null : FHIRObjectFactory.buildFromJSON('CodeableConcept', json['outcome']);
        this.contributedToDeath = json['contributedToDeath'];
        this.extContributedToDeath = json['_contributedToDeath'] == null ? null : FHIRObjectFactory.buildFromJSON('Element', json['_contributedToDeath']);
        this.onsetAge = json['onsetAge'] == null ? null : FHIRObjectFactory.buildFromJSON('Age', json['onsetAge']);
        this.onsetRange = json['onsetRange'] == null ? null : FHIRObjectFactory.buildFromJSON('Range', json['onsetRange']);
        this.onsetPeriod = json['onsetPeriod'] == null ? null : FHIRObjectFactory.buildFromJSON('Period', json['onsetPeriod']);
        this.extOnsetString = json['_onsetString'] == null ? null : FHIRObjectFactory.buildFromJSON('Element', json['_onsetString']);
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
