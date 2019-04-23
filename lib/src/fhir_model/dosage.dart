import 'extension.dart';
import 'fhir_object_factory.dart';
import 'element.dart';
import 'codeable_concept.dart';
import 'timing.dart';
import 'dosage_dose_and_rate.dart';
import 'ratio.dart';
import 'quantity.dart';
/// Indicates how the medication is/was taken or should be taken by the patient.
class Dosage {
    /// Unique id for the element within a resource (for internal references). This may be any string value that does not contain spaces.
    String id;
    /// May be used to represent additional information that is not part of the basic definition of the element. To make the use of extensions safe and manageable, there is a strict set of governance  applied to the definition and use of extensions. Though any implementer can define an extension, there is a set of requirements that SHALL be met as part of the definition of the extension.
    List<Extension> extension;
    /// May be used to represent additional information that is not part of the basic definition of the element and that modifies the understanding of the element in which it is contained and/or the understanding of the containing element's descendants. Usually modifier elements provide negation or qualification. To make the use of extensions safe and manageable, there is a strict set of governance applied to the definition and use of extensions. Though any implementer can define an extension, there is a set of requirements that SHALL be met as part of the definition of the extension. Applications processing a resource are required to check for modifier extensions.
    /// 
    /// Modifier extensions SHALL NOT change the meaning of any elements on Resource or DomainResource (including cannot change the meaning of modifierExtension itself).
    List<Extension> modifierExtension;
    /// Indicates the order in which the dosage instructions should be applied or interpreted.
    int sequence;
    /// Extensions for sequence
    Element extSequence;
    /// Free text dosage instructions e.g. SIG.
    String text;
    /// Extensions for text
    Element extText;
    /// Supplemental instructions to the patient on how to take the medication  (e.g. "with meals" or"take half to one hour before food") or warnings for the patient about the medication (e.g. "may cause drowsiness" or "avoid exposure of skin to direct sunlight or sunlamps").
    List<CodeableConcept> additionalInstruction;
    /// Instructions in terms that are understood by the patient or consumer.
    String patientInstruction;
    /// Extensions for patientInstruction
    Element extPatientInstruction;
    /// When medication should be administered.
    Timing timing;
    /// Extensions for asNeededBoolean
    Element extAsNeededBoolean;
    /// Indicates whether the Medication is only taken when needed within a specific dosing schedule (Boolean option), or it indicates the precondition for taking the Medication (CodeableConcept).
    CodeableConcept asNeededCodeableConcept;
    /// Body site to administer to.
    CodeableConcept site;
    /// How drug should enter body.
    CodeableConcept route;
    /// Technique for administering medication.
    CodeableConcept method;
    /// The amount of medication administered.
    List<DosageDoseAndRate> doseAndRate;
    /// Upper limit on medication per unit of time.
    Ratio maxDosePerPeriod;
    /// Upper limit on medication per administration.
    Quantity maxDosePerAdministration;
    /// Upper limit on medication per lifetime of the patient.
    Quantity maxDosePerLifetime;
 
    Dosage.fromJSON( Map json ){
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
        this.sequence = json['sequence'];
        this.extSequence = json['_sequence'] == null ? null : FHIRObjectFactory.buildFromJSON('Element', json['_sequence']);
        this.text = json['text'];
        this.extText = json['_text'] == null ? null : FHIRObjectFactory.buildFromJSON('Element', json['_text']);
        this.additionalInstruction = List<CodeableConcept>();
        if (json['additionalInstruction'] != null && json['additionalInstruction'].length > 0) {
          if( json['additionalInstruction'] is List ){
            json['additionalInstruction'].forEach((i){
              this.additionalInstruction.add(FHIRObjectFactory.buildFromJSON('CodeableConcept', i));
            });
          } else {
            // this handles the case when the list only has one object and does not return as a list
            var i = json['additionalInstruction'];
            this.additionalInstruction.add(FHIRObjectFactory.buildFromJSON('CodeableConcept', i));
          }          
        }
        this.patientInstruction = json['patientInstruction'];
        this.extPatientInstruction = json['_patientInstruction'] == null ? null : FHIRObjectFactory.buildFromJSON('Element', json['_patientInstruction']);
        this.timing = json['timing'] == null ? null : FHIRObjectFactory.buildFromJSON('Timing', json['timing']);
        this.extAsNeededBoolean = json['_asNeededBoolean'] == null ? null : FHIRObjectFactory.buildFromJSON('Element', json['_asNeededBoolean']);
        this.asNeededCodeableConcept = json['asNeededCodeableConcept'] == null ? null : FHIRObjectFactory.buildFromJSON('CodeableConcept', json['asNeededCodeableConcept']);
        this.site = json['site'] == null ? null : FHIRObjectFactory.buildFromJSON('CodeableConcept', json['site']);
        this.route = json['route'] == null ? null : FHIRObjectFactory.buildFromJSON('CodeableConcept', json['route']);
        this.method = json['method'] == null ? null : FHIRObjectFactory.buildFromJSON('CodeableConcept', json['method']);
        this.doseAndRate = List<DosageDoseAndRate>();
        if (json['doseAndRate'] != null && json['doseAndRate'].length > 0) {
          if( json['doseAndRate'] is List ){
            json['doseAndRate'].forEach((i){
              this.doseAndRate.add(FHIRObjectFactory.buildFromJSON('DosageDoseAndRate', i));
            });
          } else {
            // this handles the case when the list only has one object and does not return as a list
            var i = json['doseAndRate'];
            this.doseAndRate.add(FHIRObjectFactory.buildFromJSON('DosageDoseAndRate', i));
          }          
        }
        this.maxDosePerPeriod = json['maxDosePerPeriod'] == null ? null : FHIRObjectFactory.buildFromJSON('Ratio', json['maxDosePerPeriod']);
        this.maxDosePerAdministration = json['maxDosePerAdministration'] == null ? null : FHIRObjectFactory.buildFromJSON('Quantity', json['maxDosePerAdministration']);
        this.maxDosePerLifetime = json['maxDosePerLifetime'] == null ? null : FHIRObjectFactory.buildFromJSON('Quantity', json['maxDosePerLifetime']);
    }
}
