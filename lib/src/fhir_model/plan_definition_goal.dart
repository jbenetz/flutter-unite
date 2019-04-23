import 'extension.dart';
import 'fhir_object_factory.dart';
import 'codeable_concept.dart';
import 'related_artifact.dart';
import 'plan_definition_target.dart';
/// This resource allows for the definition of various types of plans as a sharable, consumable, and executable artifact. The resource is general enough to support the description of a broad range of clinical artifacts such as clinical decision support rules, order sets and protocols.
class PlanDefinitionGoal {
    /// Unique id for the element within a resource (for internal references). This may be any string value that does not contain spaces.
    String id;
    /// May be used to represent additional information that is not part of the basic definition of the element. To make the use of extensions safe and manageable, there is a strict set of governance  applied to the definition and use of extensions. Though any implementer can define an extension, there is a set of requirements that SHALL be met as part of the definition of the extension.
    List<Extension> extension;
    /// May be used to represent additional information that is not part of the basic definition of the element and that modifies the understanding of the element in which it is contained and/or the understanding of the containing element's descendants. Usually modifier elements provide negation or qualification. To make the use of extensions safe and manageable, there is a strict set of governance applied to the definition and use of extensions. Though any implementer can define an extension, there is a set of requirements that SHALL be met as part of the definition of the extension. Applications processing a resource are required to check for modifier extensions.
    /// 
    /// Modifier extensions SHALL NOT change the meaning of any elements on Resource or DomainResource (including cannot change the meaning of modifierExtension itself).
    List<Extension> modifierExtension;
    /// Indicates a category the goal falls within.
    CodeableConcept category;
    /// Human-readable and/or coded description of a specific desired objective of care, such as "control blood pressure" or "negotiate an obstacle course" or "dance with child at wedding".
    CodeableConcept description;
    /// Identifies the expected level of importance associated with reaching/sustaining the defined goal.
    CodeableConcept priority;
    /// The event after which the goal should begin being pursued.
    CodeableConcept start;
    /// Identifies problems, conditions, issues, or concerns the goal is intended to address.
    List<CodeableConcept> addresses;
    /// Didactic or other informational resources associated with the goal that provide further supporting information about the goal. Information resources can include inline text commentary and links to web resources.
    List<RelatedArtifact> documentation;
    /// Indicates what should be done and within what timeframe.
    List<PlanDefinitionTarget> target;
 
    PlanDefinitionGoal.fromJSON( Map json ){
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
        this.category = json['category'] == null ? null : FHIRObjectFactory.buildFromJSON('CodeableConcept', json['category']);
        this.description = json['description'] == null ? null : FHIRObjectFactory.buildFromJSON('CodeableConcept', json['description']);
        this.priority = json['priority'] == null ? null : FHIRObjectFactory.buildFromJSON('CodeableConcept', json['priority']);
        this.start = json['start'] == null ? null : FHIRObjectFactory.buildFromJSON('CodeableConcept', json['start']);
        this.addresses = List<CodeableConcept>();
        if (json['addresses'] != null && json['addresses'].length > 0) {
          if( json['addresses'] is List ){
            json['addresses'].forEach((i){
              this.addresses.add(FHIRObjectFactory.buildFromJSON('CodeableConcept', i));
            });
          } else {
            // this handles the case when the list only has one object and does not return as a list
            var i = json['addresses'];
            this.addresses.add(FHIRObjectFactory.buildFromJSON('CodeableConcept', i));
          }          
        }
        this.documentation = List<RelatedArtifact>();
        if (json['documentation'] != null && json['documentation'].length > 0) {
          if( json['documentation'] is List ){
            json['documentation'].forEach((i){
              this.documentation.add(FHIRObjectFactory.buildFromJSON('RelatedArtifact', i));
            });
          } else {
            // this handles the case when the list only has one object and does not return as a list
            var i = json['documentation'];
            this.documentation.add(FHIRObjectFactory.buildFromJSON('RelatedArtifact', i));
          }          
        }
        this.target = List<PlanDefinitionTarget>();
        if (json['target'] != null && json['target'].length > 0) {
          if( json['target'] is List ){
            json['target'].forEach((i){
              this.target.add(FHIRObjectFactory.buildFromJSON('PlanDefinitionTarget', i));
            });
          } else {
            // this handles the case when the list only has one object and does not return as a list
            var i = json['target'];
            this.target.add(FHIRObjectFactory.buildFromJSON('PlanDefinitionTarget', i));
          }          
        }
    }
}
