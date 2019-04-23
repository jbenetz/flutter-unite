import 'extension.dart';
import 'fhir_object_factory.dart';
import 'element.dart';
import 'claim_response_adjudication.dart';
/// This resource provides the adjudication details from the processing of a Claim resource.
class ClaimResponseSubDetail {
    /// Unique id for the element within a resource (for internal references). This may be any string value that does not contain spaces.
    String id;
    /// May be used to represent additional information that is not part of the basic definition of the element. To make the use of extensions safe and manageable, there is a strict set of governance  applied to the definition and use of extensions. Though any implementer can define an extension, there is a set of requirements that SHALL be met as part of the definition of the extension.
    List<Extension> extension;
    /// May be used to represent additional information that is not part of the basic definition of the element and that modifies the understanding of the element in which it is contained and/or the understanding of the containing element's descendants. Usually modifier elements provide negation or qualification. To make the use of extensions safe and manageable, there is a strict set of governance applied to the definition and use of extensions. Though any implementer can define an extension, there is a set of requirements that SHALL be met as part of the definition of the extension. Applications processing a resource are required to check for modifier extensions.
    /// 
    /// Modifier extensions SHALL NOT change the meaning of any elements on Resource or DomainResource (including cannot change the meaning of modifierExtension itself).
    List<Extension> modifierExtension;
    /// A number to uniquely reference the claim sub-detail entry.
    int subDetailSequence;
    /// Extensions for subDetailSequence
    Element extSubDetailSequence;
    /// The numbers associated with notes below which apply to the adjudication of this item.
    List<int> noteNumber;
    /// Extensions for noteNumber
    List<Element> extNoteNumber;
    /// The adjudication results.
    List<ClaimResponseAdjudication> adjudication;
 
    ClaimResponseSubDetail.fromJSON( Map json ){
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
        this.subDetailSequence = json['subDetailSequence'];
        this.extSubDetailSequence = json['_subDetailSequence'] == null ? null : FHIRObjectFactory.buildFromJSON('Element', json['_subDetailSequence']);
        this.noteNumber = List<int>();
        if (json['noteNumber'] != null && json['noteNumber'].length > 0) {
          if( json['noteNumber'] is List ){
            json['noteNumber'].forEach((i){
              this.noteNumber.add(i);
            });
          } else {
            // this handles the case when the list only has one object and does not return as a list
            var i = json['noteNumber'];
            this.noteNumber.add(i);
          }          
        }
        this.extNoteNumber = List<Element>();
        if (json['_noteNumber'] != null && json['_noteNumber'].length > 0) {
          if( json['_noteNumber'] is List ){
            json['_noteNumber'].forEach((i){
              this.extNoteNumber.add(FHIRObjectFactory.buildFromJSON('Element', i));
            });
          } else {
            // this handles the case when the list only has one object and does not return as a list
            var i = json['_noteNumber'];
            this.extNoteNumber.add(FHIRObjectFactory.buildFromJSON('Element', i));
          }          
        }
        this.adjudication = List<ClaimResponseAdjudication>();
        if (json['adjudication'] != null && json['adjudication'].length > 0) {
          if( json['adjudication'] is List ){
            json['adjudication'].forEach((i){
              this.adjudication.add(FHIRObjectFactory.buildFromJSON('ClaimResponseAdjudication', i));
            });
          } else {
            // this handles the case when the list only has one object and does not return as a list
            var i = json['adjudication'];
            this.adjudication.add(FHIRObjectFactory.buildFromJSON('ClaimResponseAdjudication', i));
          }          
        }
    }
}
