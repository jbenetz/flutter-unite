import 'extension.dart';
import 'fhir_object_factory.dart';
import 'element.dart';
import 'period.dart';
import 'reference.dart';
/// A task to be performed.
class TaskRestriction {
    /// Unique id for the element within a resource (for internal references). This may be any string value that does not contain spaces.
    String id;
    /// May be used to represent additional information that is not part of the basic definition of the element. To make the use of extensions safe and manageable, there is a strict set of governance  applied to the definition and use of extensions. Though any implementer can define an extension, there is a set of requirements that SHALL be met as part of the definition of the extension.
    List<Extension> extension;
    /// May be used to represent additional information that is not part of the basic definition of the element and that modifies the understanding of the element in which it is contained and/or the understanding of the containing element's descendants. Usually modifier elements provide negation or qualification. To make the use of extensions safe and manageable, there is a strict set of governance applied to the definition and use of extensions. Though any implementer can define an extension, there is a set of requirements that SHALL be met as part of the definition of the extension. Applications processing a resource are required to check for modifier extensions.
    /// 
    /// Modifier extensions SHALL NOT change the meaning of any elements on Resource or DomainResource (including cannot change the meaning of modifierExtension itself).
    List<Extension> modifierExtension;
    /// Indicates the number of times the requested action should occur.
    int repetitions;
    /// Extensions for repetitions
    Element extRepetitions;
    /// Over what time-period is fulfillment sought.
    Period period;
    /// For requests that are targeted to more than on potential recipient/target, for whom is fulfillment sought?
    List<Reference> recipient;
 
    TaskRestriction.fromJSON( Map json ){
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
        this.repetitions = json['repetitions'];
        this.extRepetitions = json['_repetitions'] == null ? null : FHIRObjectFactory.buildFromJSON('Element', json['_repetitions']);
        this.period = json['period'] == null ? null : FHIRObjectFactory.buildFromJSON('Period', json['period']);
        this.recipient = List<Reference>();
        if (json['recipient'] != null && json['recipient'].length > 0) {
          if( json['recipient'] is List ){
            json['recipient'].forEach((i){
              this.recipient.add(FHIRObjectFactory.buildFromJSON('Reference', i));
            });
          } else {
            // this handles the case when the list only has one object and does not return as a list
            var i = json['recipient'];
            this.recipient.add(FHIRObjectFactory.buildFromJSON('Reference', i));
          }          
        }
    }
}
