import 'extension.dart';
import 'fhir_object_factory.dart';
import 'element.dart';
import 'codeable_concept.dart';
import 'reference.dart';
/// Indicates that a medication product is to be or has been dispensed for a named person/patient.  This includes a description of the medication product (supply) provided and the instructions for administering the medication.  The medication dispense is the result of a pharmacy system responding to a medication order.
class MedicationDispenseSubstitution {
    /// Unique id for the element within a resource (for internal references). This may be any string value that does not contain spaces.
    String id;
    /// May be used to represent additional information that is not part of the basic definition of the element. To make the use of extensions safe and manageable, there is a strict set of governance  applied to the definition and use of extensions. Though any implementer can define an extension, there is a set of requirements that SHALL be met as part of the definition of the extension.
    List<Extension> extension;
    /// May be used to represent additional information that is not part of the basic definition of the element and that modifies the understanding of the element in which it is contained and/or the understanding of the containing element's descendants. Usually modifier elements provide negation or qualification. To make the use of extensions safe and manageable, there is a strict set of governance applied to the definition and use of extensions. Though any implementer can define an extension, there is a set of requirements that SHALL be met as part of the definition of the extension. Applications processing a resource are required to check for modifier extensions.
    /// 
    /// Modifier extensions SHALL NOT change the meaning of any elements on Resource or DomainResource (including cannot change the meaning of modifierExtension itself).
    List<Extension> modifierExtension;
    /// True if the dispenser dispensed a different drug or product from what was prescribed.
    bool wasSubstituted;
    /// Extensions for wasSubstituted
    Element extWasSubstituted;
    /// A code signifying whether a different drug was dispensed from what was prescribed.
    CodeableConcept type;
    /// Indicates the reason for the substitution (or lack of substitution) from what was prescribed.
    List<CodeableConcept> reason;
    /// The person or organization that has primary responsibility for the substitution.
    List<Reference> responsibleParty;
 
    MedicationDispenseSubstitution.fromJSON( Map json ){
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
        this.wasSubstituted = json['wasSubstituted'];
        this.extWasSubstituted = json['_wasSubstituted'] == null ? null : FHIRObjectFactory.buildFromJSON('Element', json['_wasSubstituted']);
        this.type = json['type'] == null ? null : FHIRObjectFactory.buildFromJSON('CodeableConcept', json['type']);
        this.reason = List<CodeableConcept>();
        if (json['reason'] != null && json['reason'].length > 0) {
          if( json['reason'] is List ){
            json['reason'].forEach((i){
              this.reason.add(FHIRObjectFactory.buildFromJSON('CodeableConcept', i));
            });
          } else {
            // this handles the case when the list only has one object and does not return as a list
            var i = json['reason'];
            this.reason.add(FHIRObjectFactory.buildFromJSON('CodeableConcept', i));
          }          
        }
        this.responsibleParty = List<Reference>();
        if (json['responsibleParty'] != null && json['responsibleParty'].length > 0) {
          if( json['responsibleParty'] is List ){
            json['responsibleParty'].forEach((i){
              this.responsibleParty.add(FHIRObjectFactory.buildFromJSON('Reference', i));
            });
          } else {
            // this handles the case when the list only has one object and does not return as a list
            var i = json['responsibleParty'];
            this.responsibleParty.add(FHIRObjectFactory.buildFromJSON('Reference', i));
          }          
        }
    }
}
