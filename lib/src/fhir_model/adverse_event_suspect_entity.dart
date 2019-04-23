import 'extension.dart';
import 'fhir_object_factory.dart';
import 'reference.dart';
import 'adverse_event_causality.dart';
/// Actual or  potential/avoided event causing unintended physical injury resulting from or contributed to by medical care, a research study or other healthcare setting factors that requires additional monitoring, treatment, or hospitalization, or that results in death.
class AdverseEventSuspectEntity {
    /// Unique id for the element within a resource (for internal references). This may be any string value that does not contain spaces.
    String id;
    /// May be used to represent additional information that is not part of the basic definition of the element. To make the use of extensions safe and manageable, there is a strict set of governance  applied to the definition and use of extensions. Though any implementer can define an extension, there is a set of requirements that SHALL be met as part of the definition of the extension.
    List<Extension> extension;
    /// May be used to represent additional information that is not part of the basic definition of the element and that modifies the understanding of the element in which it is contained and/or the understanding of the containing element's descendants. Usually modifier elements provide negation or qualification. To make the use of extensions safe and manageable, there is a strict set of governance applied to the definition and use of extensions. Though any implementer can define an extension, there is a set of requirements that SHALL be met as part of the definition of the extension. Applications processing a resource are required to check for modifier extensions.
    /// 
    /// Modifier extensions SHALL NOT change the meaning of any elements on Resource or DomainResource (including cannot change the meaning of modifierExtension itself).
    List<Extension> modifierExtension;
    /// Identifies the actual instance of what caused the adverse event.  May be a substance, medication, medication administration, medication statement or a device.
    Reference instance;
    /// Information on the possible cause of the event.
    List<AdverseEventCausality> causality;
 
    AdverseEventSuspectEntity.fromJSON( Map json ){
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
        this.instance = json['instance'] == null ? null : FHIRObjectFactory.buildFromJSON('Reference', json['instance']);
        this.causality = List<AdverseEventCausality>();
        if (json['causality'] != null && json['causality'].length > 0) {
          if( json['causality'] is List ){
            json['causality'].forEach((i){
              this.causality.add(FHIRObjectFactory.buildFromJSON('AdverseEventCausality', i));
            });
          } else {
            // this handles the case when the list only has one object and does not return as a list
            var i = json['causality'];
            this.causality.add(FHIRObjectFactory.buildFromJSON('AdverseEventCausality', i));
          }          
        }
    }
}
