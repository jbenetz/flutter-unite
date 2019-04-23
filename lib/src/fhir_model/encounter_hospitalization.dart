import 'extension.dart';
import 'fhir_object_factory.dart';
import 'identifier.dart';
import 'reference.dart';
import 'codeable_concept.dart';
/// An interaction between a patient and healthcare provider(s) for the purpose of providing healthcare service(s) or assessing the health status of a patient.
class EncounterHospitalization {
    /// Unique id for the element within a resource (for internal references). This may be any string value that does not contain spaces.
    String id;
    /// May be used to represent additional information that is not part of the basic definition of the element. To make the use of extensions safe and manageable, there is a strict set of governance  applied to the definition and use of extensions. Though any implementer can define an extension, there is a set of requirements that SHALL be met as part of the definition of the extension.
    List<Extension> extension;
    /// May be used to represent additional information that is not part of the basic definition of the element and that modifies the understanding of the element in which it is contained and/or the understanding of the containing element's descendants. Usually modifier elements provide negation or qualification. To make the use of extensions safe and manageable, there is a strict set of governance applied to the definition and use of extensions. Though any implementer can define an extension, there is a set of requirements that SHALL be met as part of the definition of the extension. Applications processing a resource are required to check for modifier extensions.
    /// 
    /// Modifier extensions SHALL NOT change the meaning of any elements on Resource or DomainResource (including cannot change the meaning of modifierExtension itself).
    List<Extension> modifierExtension;
    /// Pre-admission identifier.
    Identifier preAdmissionIdentifier;
    /// The location/organization from which the patient came before admission.
    Reference origin;
    /// From where patient was admitted (physician referral, transfer).
    CodeableConcept admitSource;
    /// Whether this hospitalization is a readmission and why if known.
    CodeableConcept reAdmission;
    /// Diet preferences reported by the patient.
    List<CodeableConcept> dietPreference;
    /// Special courtesies (VIP, board member).
    List<CodeableConcept> specialCourtesy;
    /// Any special requests that have been made for this hospitalization encounter, such as the provision of specific equipment or other things.
    List<CodeableConcept> specialArrangement;
    /// Location/organization to which the patient is discharged.
    Reference destination;
    /// Category or kind of location after discharge.
    CodeableConcept dischargeDisposition;
 
    EncounterHospitalization.fromJSON( Map json ){
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
        this.preAdmissionIdentifier = json['preAdmissionIdentifier'] == null ? null : FHIRObjectFactory.buildFromJSON('Identifier', json['preAdmissionIdentifier']);
        this.origin = json['origin'] == null ? null : FHIRObjectFactory.buildFromJSON('Reference', json['origin']);
        this.admitSource = json['admitSource'] == null ? null : FHIRObjectFactory.buildFromJSON('CodeableConcept', json['admitSource']);
        this.reAdmission = json['reAdmission'] == null ? null : FHIRObjectFactory.buildFromJSON('CodeableConcept', json['reAdmission']);
        this.dietPreference = List<CodeableConcept>();
        if (json['dietPreference'] != null && json['dietPreference'].length > 0) {
          if( json['dietPreference'] is List ){
            json['dietPreference'].forEach((i){
              this.dietPreference.add(FHIRObjectFactory.buildFromJSON('CodeableConcept', i));
            });
          } else {
            // this handles the case when the list only has one object and does not return as a list
            var i = json['dietPreference'];
            this.dietPreference.add(FHIRObjectFactory.buildFromJSON('CodeableConcept', i));
          }          
        }
        this.specialCourtesy = List<CodeableConcept>();
        if (json['specialCourtesy'] != null && json['specialCourtesy'].length > 0) {
          if( json['specialCourtesy'] is List ){
            json['specialCourtesy'].forEach((i){
              this.specialCourtesy.add(FHIRObjectFactory.buildFromJSON('CodeableConcept', i));
            });
          } else {
            // this handles the case when the list only has one object and does not return as a list
            var i = json['specialCourtesy'];
            this.specialCourtesy.add(FHIRObjectFactory.buildFromJSON('CodeableConcept', i));
          }          
        }
        this.specialArrangement = List<CodeableConcept>();
        if (json['specialArrangement'] != null && json['specialArrangement'].length > 0) {
          if( json['specialArrangement'] is List ){
            json['specialArrangement'].forEach((i){
              this.specialArrangement.add(FHIRObjectFactory.buildFromJSON('CodeableConcept', i));
            });
          } else {
            // this handles the case when the list only has one object and does not return as a list
            var i = json['specialArrangement'];
            this.specialArrangement.add(FHIRObjectFactory.buildFromJSON('CodeableConcept', i));
          }          
        }
        this.destination = json['destination'] == null ? null : FHIRObjectFactory.buildFromJSON('Reference', json['destination']);
        this.dischargeDisposition = json['dischargeDisposition'] == null ? null : FHIRObjectFactory.buildFromJSON('CodeableConcept', json['dischargeDisposition']);
    }
}
