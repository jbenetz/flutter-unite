import 'extension.dart';
import 'fhir_object_factory.dart';
import 'codeable_concept.dart';
import 'element.dart';
import 'reference.dart';
/// The detailed description of a substance, typically at a level beyond what is used for prescribing.
class SubstanceSpecificationCode {
    /// Unique id for the element within a resource (for internal references). This may be any string value that does not contain spaces.
    String id;
    /// May be used to represent additional information that is not part of the basic definition of the element. To make the use of extensions safe and manageable, there is a strict set of governance  applied to the definition and use of extensions. Though any implementer can define an extension, there is a set of requirements that SHALL be met as part of the definition of the extension.
    List<Extension> extension;
    /// May be used to represent additional information that is not part of the basic definition of the element and that modifies the understanding of the element in which it is contained and/or the understanding of the containing element's descendants. Usually modifier elements provide negation or qualification. To make the use of extensions safe and manageable, there is a strict set of governance applied to the definition and use of extensions. Though any implementer can define an extension, there is a set of requirements that SHALL be met as part of the definition of the extension. Applications processing a resource are required to check for modifier extensions.
    /// 
    /// Modifier extensions SHALL NOT change the meaning of any elements on Resource or DomainResource (including cannot change the meaning of modifierExtension itself).
    List<Extension> modifierExtension;
    /// The specific code.
    CodeableConcept code;
    /// Status of the code assignment.
    CodeableConcept status;
    /// The date at which the code status is changed as part of the terminology maintenance.
    DateTime statusDate;
    /// Extensions for statusDate
    Element extStatusDate;
    /// Any comment can be provided in this field, if necessary.
    String comment;
    /// Extensions for comment
    Element extComment;
    /// Supporting literature.
    List<Reference> source;
 
    SubstanceSpecificationCode.fromJSON( Map json ){
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
        this.code = json['code'] == null ? null : FHIRObjectFactory.buildFromJSON('CodeableConcept', json['code']);
        this.status = json['status'] == null ? null : FHIRObjectFactory.buildFromJSON('CodeableConcept', json['status']);
        if( json['statusDate'] != null ) { this.statusDate = DateTime.parse(json['statusDate']);}
        this.extStatusDate = json['_statusDate'] == null ? null : FHIRObjectFactory.buildFromJSON('Element', json['_statusDate']);
        this.comment = json['comment'];
        this.extComment = json['_comment'] == null ? null : FHIRObjectFactory.buildFromJSON('Element', json['_comment']);
        this.source = List<Reference>();
        if (json['source'] != null && json['source'].length > 0) {
          if( json['source'] is List ){
            json['source'].forEach((i){
              this.source.add(FHIRObjectFactory.buildFromJSON('Reference', i));
            });
          } else {
            // this handles the case when the list only has one object and does not return as a list
            var i = json['source'];
            this.source.add(FHIRObjectFactory.buildFromJSON('Reference', i));
          }          
        }
    }
}
