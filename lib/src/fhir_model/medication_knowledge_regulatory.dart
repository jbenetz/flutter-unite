import 'extension.dart';
import 'fhir_object_factory.dart';
import 'reference.dart';
import 'medication_knowledge_substitution.dart';
import 'medication_knowledge_schedule.dart';
import 'medication_knowledge_max_dispense.dart';
/// Information about a medication that is used to support knowledge.
class MedicationKnowledgeRegulatory {
    /// Unique id for the element within a resource (for internal references). This may be any string value that does not contain spaces.
    String id;
    /// May be used to represent additional information that is not part of the basic definition of the element. To make the use of extensions safe and manageable, there is a strict set of governance  applied to the definition and use of extensions. Though any implementer can define an extension, there is a set of requirements that SHALL be met as part of the definition of the extension.
    List<Extension> extension;
    /// May be used to represent additional information that is not part of the basic definition of the element and that modifies the understanding of the element in which it is contained and/or the understanding of the containing element's descendants. Usually modifier elements provide negation or qualification. To make the use of extensions safe and manageable, there is a strict set of governance applied to the definition and use of extensions. Though any implementer can define an extension, there is a set of requirements that SHALL be met as part of the definition of the extension. Applications processing a resource are required to check for modifier extensions.
    /// 
    /// Modifier extensions SHALL NOT change the meaning of any elements on Resource or DomainResource (including cannot change the meaning of modifierExtension itself).
    List<Extension> modifierExtension;
    /// The authority that is specifying the regulations.
    Reference regulatoryAuthority;
    /// Specifies if changes are allowed when dispensing a medication from a regulatory perspective.
    List<MedicationKnowledgeSubstitution> substitution;
    /// Specifies the schedule of a medication in jurisdiction.
    List<MedicationKnowledgeSchedule> schedule;
    /// The maximum number of units of the medication that can be dispensed in a period.
    MedicationKnowledgeMaxDispense maxDispense;
 
    MedicationKnowledgeRegulatory.fromJSON( Map json ){
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
        this.regulatoryAuthority = json['regulatoryAuthority'] == null ? null : FHIRObjectFactory.buildFromJSON('Reference', json['regulatoryAuthority']);
        this.substitution = List<MedicationKnowledgeSubstitution>();
        if (json['substitution'] != null && json['substitution'].length > 0) {
          if( json['substitution'] is List ){
            json['substitution'].forEach((i){
              this.substitution.add(FHIRObjectFactory.buildFromJSON('MedicationKnowledgeSubstitution', i));
            });
          } else {
            // this handles the case when the list only has one object and does not return as a list
            var i = json['substitution'];
            this.substitution.add(FHIRObjectFactory.buildFromJSON('MedicationKnowledgeSubstitution', i));
          }          
        }
        this.schedule = List<MedicationKnowledgeSchedule>();
        if (json['schedule'] != null && json['schedule'].length > 0) {
          if( json['schedule'] is List ){
            json['schedule'].forEach((i){
              this.schedule.add(FHIRObjectFactory.buildFromJSON('MedicationKnowledgeSchedule', i));
            });
          } else {
            // this handles the case when the list only has one object and does not return as a list
            var i = json['schedule'];
            this.schedule.add(FHIRObjectFactory.buildFromJSON('MedicationKnowledgeSchedule', i));
          }          
        }
        this.maxDispense = json['maxDispense'] == null ? null : FHIRObjectFactory.buildFromJSON('MedicationKnowledgeMaxDispense', json['maxDispense']);
    }
}
