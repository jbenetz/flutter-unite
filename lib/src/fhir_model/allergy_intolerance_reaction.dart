import 'extension.dart';
import 'fhir_object_factory.dart';
import 'codeable_concept.dart';
import 'element.dart';
import 'annotation.dart';
/// Risk of harmful or undesirable, physiological response which is unique to an individual and associated with exposure to a substance.
class AllergyIntoleranceReaction {
    /// Unique id for the element within a resource (for internal references). This may be any string value that does not contain spaces.
    String id;
    /// May be used to represent additional information that is not part of the basic definition of the element. To make the use of extensions safe and manageable, there is a strict set of governance  applied to the definition and use of extensions. Though any implementer can define an extension, there is a set of requirements that SHALL be met as part of the definition of the extension.
    List<Extension> extension;
    /// May be used to represent additional information that is not part of the basic definition of the element and that modifies the understanding of the element in which it is contained and/or the understanding of the containing element's descendants. Usually modifier elements provide negation or qualification. To make the use of extensions safe and manageable, there is a strict set of governance applied to the definition and use of extensions. Though any implementer can define an extension, there is a set of requirements that SHALL be met as part of the definition of the extension. Applications processing a resource are required to check for modifier extensions.
    /// 
    /// Modifier extensions SHALL NOT change the meaning of any elements on Resource or DomainResource (including cannot change the meaning of modifierExtension itself).
    List<Extension> modifierExtension;
    /// Identification of the specific substance (or pharmaceutical product) considered to be responsible for the Adverse Reaction event. Note: the substance for a specific reaction may be different from the substance identified as the cause of the risk, but it must be consistent with it. For instance, it may be a more specific substance (e.g. a brand medication) or a composite product that includes the identified substance. It must be clinically safe to only process the 'code' and ignore the 'reaction.substance'.  If a receiving system is unable to confirm that AllergyIntolerance.reaction.substance falls within the semantic scope of AllergyIntolerance.code, then the receiving system should ignore AllergyIntolerance.reaction.substance.
    CodeableConcept substance;
    /// Clinical symptoms and/or signs that are observed or associated with the adverse reaction event.
    List<CodeableConcept> manifestation;
    /// Text description about the reaction as a whole, including details of the manifestation if required.
    String description;
    /// Extensions for description
    Element extDescription;
    /// Record of the date and/or time of the onset of the Reaction.
    DateTime onset;
    /// Extensions for onset
    Element extOnset;
    /// Clinical assessment of the severity of the reaction event as a whole, potentially considering multiple different manifestations.
    String severity;
    /// Extensions for severity
    Element extSeverity;
    /// Identification of the route by which the subject was exposed to the substance.
    CodeableConcept exposureRoute;
    /// Additional text about the adverse reaction event not captured in other fields.
    List<Annotation> note;
 
    AllergyIntoleranceReaction.fromJSON( Map json ){
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
        this.substance = json['substance'] == null ? null : FHIRObjectFactory.buildFromJSON('CodeableConcept', json['substance']);
        this.manifestation = List<CodeableConcept>();
        if (json['manifestation'] != null && json['manifestation'].length > 0) {
          if( json['manifestation'] is List ){
            json['manifestation'].forEach((i){
              this.manifestation.add(FHIRObjectFactory.buildFromJSON('CodeableConcept', i));
            });
          } else {
            // this handles the case when the list only has one object and does not return as a list
            var i = json['manifestation'];
            this.manifestation.add(FHIRObjectFactory.buildFromJSON('CodeableConcept', i));
          }          
        }
        this.description = json['description'];
        this.extDescription = json['_description'] == null ? null : FHIRObjectFactory.buildFromJSON('Element', json['_description']);
        if( json['onset'] != null ) { this.onset = DateTime.parse(json['onset']);}
        this.extOnset = json['_onset'] == null ? null : FHIRObjectFactory.buildFromJSON('Element', json['_onset']);
        this.severity = json['severity'];
        this.extSeverity = json['_severity'] == null ? null : FHIRObjectFactory.buildFromJSON('Element', json['_severity']);
        this.exposureRoute = json['exposureRoute'] == null ? null : FHIRObjectFactory.buildFromJSON('CodeableConcept', json['exposureRoute']);
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
