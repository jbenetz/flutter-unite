import 'extension.dart';
import 'fhir_object_factory.dart';
import 'element.dart';
/// Describes the event of a patient being administered a vaccine or a record of an immunization as reported by a patient, a clinician or another party.
class ImmunizationEducation {
    /// Unique id for the element within a resource (for internal references). This may be any string value that does not contain spaces.
    String id;
    /// May be used to represent additional information that is not part of the basic definition of the element. To make the use of extensions safe and manageable, there is a strict set of governance  applied to the definition and use of extensions. Though any implementer can define an extension, there is a set of requirements that SHALL be met as part of the definition of the extension.
    List<Extension> extension;
    /// May be used to represent additional information that is not part of the basic definition of the element and that modifies the understanding of the element in which it is contained and/or the understanding of the containing element's descendants. Usually modifier elements provide negation or qualification. To make the use of extensions safe and manageable, there is a strict set of governance applied to the definition and use of extensions. Though any implementer can define an extension, there is a set of requirements that SHALL be met as part of the definition of the extension. Applications processing a resource are required to check for modifier extensions.
    /// 
    /// Modifier extensions SHALL NOT change the meaning of any elements on Resource or DomainResource (including cannot change the meaning of modifierExtension itself).
    List<Extension> modifierExtension;
    /// Identifier of the material presented to the patient.
    String documentType;
    /// Extensions for documentType
    Element extDocumentType;
    /// Reference pointer to the educational material given to the patient if the information was on line.
    String reference;
    /// Extensions for reference
    Element extReference;
    /// Date the educational material was published.
    DateTime publicationDate;
    /// Extensions for publicationDate
    Element extPublicationDate;
    /// Date the educational material was given to the patient.
    DateTime presentationDate;
    /// Extensions for presentationDate
    Element extPresentationDate;
 
    ImmunizationEducation.fromJSON( Map json ){
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
        this.documentType = json['documentType'];
        this.extDocumentType = json['_documentType'] == null ? null : FHIRObjectFactory.buildFromJSON('Element', json['_documentType']);
        this.reference = json['reference'];
        this.extReference = json['_reference'] == null ? null : FHIRObjectFactory.buildFromJSON('Element', json['_reference']);
        if( json['publicationDate'] != null ) { this.publicationDate = DateTime.parse(json['publicationDate']);}
        this.extPublicationDate = json['_publicationDate'] == null ? null : FHIRObjectFactory.buildFromJSON('Element', json['_publicationDate']);
        if( json['presentationDate'] != null ) { this.presentationDate = DateTime.parse(json['presentationDate']);}
        this.extPresentationDate = json['_presentationDate'] == null ? null : FHIRObjectFactory.buildFromJSON('Element', json['_presentationDate']);
    }
}
