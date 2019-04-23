import 'extension.dart';
import 'fhir_object_factory.dart';
import 'element.dart';
import 'codeable_concept.dart';
/// This resource provides the adjudication details from the processing of a Claim resource.
class ClaimResponseError {
    /// Unique id for the element within a resource (for internal references). This may be any string value that does not contain spaces.
    String id;
    /// May be used to represent additional information that is not part of the basic definition of the element. To make the use of extensions safe and manageable, there is a strict set of governance  applied to the definition and use of extensions. Though any implementer can define an extension, there is a set of requirements that SHALL be met as part of the definition of the extension.
    List<Extension> extension;
    /// May be used to represent additional information that is not part of the basic definition of the element and that modifies the understanding of the element in which it is contained and/or the understanding of the containing element's descendants. Usually modifier elements provide negation or qualification. To make the use of extensions safe and manageable, there is a strict set of governance applied to the definition and use of extensions. Though any implementer can define an extension, there is a set of requirements that SHALL be met as part of the definition of the extension. Applications processing a resource are required to check for modifier extensions.
    /// 
    /// Modifier extensions SHALL NOT change the meaning of any elements on Resource or DomainResource (including cannot change the meaning of modifierExtension itself).
    List<Extension> modifierExtension;
    /// The sequence number of the line item submitted which contains the error. This value is omitted when the error occurs outside of the item structure.
    int itemSequence;
    /// Extensions for itemSequence
    Element extItemSequence;
    /// The sequence number of the detail within the line item submitted which contains the error. This value is omitted when the error occurs outside of the item structure.
    int detailSequence;
    /// Extensions for detailSequence
    Element extDetailSequence;
    /// The sequence number of the sub-detail within the detail within the line item submitted which contains the error. This value is omitted when the error occurs outside of the item structure.
    int subDetailSequence;
    /// Extensions for subDetailSequence
    Element extSubDetailSequence;
    /// An error code, from a specified code system, which details why the claim could not be adjudicated.
    CodeableConcept code;
 
    ClaimResponseError.fromJSON( Map json ){
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
        this.itemSequence = json['itemSequence'];
        this.extItemSequence = json['_itemSequence'] == null ? null : FHIRObjectFactory.buildFromJSON('Element', json['_itemSequence']);
        this.detailSequence = json['detailSequence'];
        this.extDetailSequence = json['_detailSequence'] == null ? null : FHIRObjectFactory.buildFromJSON('Element', json['_detailSequence']);
        this.subDetailSequence = json['subDetailSequence'];
        this.extSubDetailSequence = json['_subDetailSequence'] == null ? null : FHIRObjectFactory.buildFromJSON('Element', json['_subDetailSequence']);
        this.code = json['code'] == null ? null : FHIRObjectFactory.buildFromJSON('CodeableConcept', json['code']);
    }
}
