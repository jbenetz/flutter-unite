import 'extension.dart';
import 'fhir_object_factory.dart';
import 'reference.dart';
import 'element.dart';
import 'period.dart';
import 'duration.dart';
import 'quantity.dart';
import 'codeable_concept.dart';
/// A sample to be used for analysis.
class SpecimenCollection {
    /// Unique id for the element within a resource (for internal references). This may be any string value that does not contain spaces.
    String id;
    /// May be used to represent additional information that is not part of the basic definition of the element. To make the use of extensions safe and manageable, there is a strict set of governance  applied to the definition and use of extensions. Though any implementer can define an extension, there is a set of requirements that SHALL be met as part of the definition of the extension.
    List<Extension> extension;
    /// May be used to represent additional information that is not part of the basic definition of the element and that modifies the understanding of the element in which it is contained and/or the understanding of the containing element's descendants. Usually modifier elements provide negation or qualification. To make the use of extensions safe and manageable, there is a strict set of governance applied to the definition and use of extensions. Though any implementer can define an extension, there is a set of requirements that SHALL be met as part of the definition of the extension. Applications processing a resource are required to check for modifier extensions.
    /// 
    /// Modifier extensions SHALL NOT change the meaning of any elements on Resource or DomainResource (including cannot change the meaning of modifierExtension itself).
    List<Extension> modifierExtension;
    /// Person who collected the specimen.
    Reference collector;
    /// Extensions for collectedDateTime
    Element extCollectedDateTime;
    /// Time when specimen was collected from subject - the physiologically relevant time.
    Period collectedPeriod;
    /// The span of time over which the collection of a specimen occurred.
    Duration duration;
    /// The quantity of specimen collected; for instance the volume of a blood sample, or the physical measurement of an anatomic pathology sample.
    Quantity quantity;
    /// A coded value specifying the technique that is used to perform the procedure.
    CodeableConcept method;
    /// Anatomical location from which the specimen was collected (if subject is a patient). This is the target site.  This element is not used for environmental specimens.
    CodeableConcept bodySite;
    /// Abstinence or reduction from some or all food, drink, or both, for a period of time prior to sample collection.
    CodeableConcept fastingStatusCodeableConcept;
    /// Abstinence or reduction from some or all food, drink, or both, for a period of time prior to sample collection.
    Duration fastingStatusDuration;
 
    SpecimenCollection.fromJSON( Map json ){
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
        this.collector = json['collector'] == null ? null : FHIRObjectFactory.buildFromJSON('Reference', json['collector']);
        this.extCollectedDateTime = json['_collectedDateTime'] == null ? null : FHIRObjectFactory.buildFromJSON('Element', json['_collectedDateTime']);
        this.collectedPeriod = json['collectedPeriod'] == null ? null : FHIRObjectFactory.buildFromJSON('Period', json['collectedPeriod']);
        this.duration = json['duration'] == null ? null : FHIRObjectFactory.buildFromJSON('Duration', json['duration']);
        this.quantity = json['quantity'] == null ? null : FHIRObjectFactory.buildFromJSON('Quantity', json['quantity']);
        this.method = json['method'] == null ? null : FHIRObjectFactory.buildFromJSON('CodeableConcept', json['method']);
        this.bodySite = json['bodySite'] == null ? null : FHIRObjectFactory.buildFromJSON('CodeableConcept', json['bodySite']);
        this.fastingStatusCodeableConcept = json['fastingStatusCodeableConcept'] == null ? null : FHIRObjectFactory.buildFromJSON('CodeableConcept', json['fastingStatusCodeableConcept']);
        this.fastingStatusDuration = json['fastingStatusDuration'] == null ? null : FHIRObjectFactory.buildFromJSON('Duration', json['fastingStatusDuration']);
    }
}
