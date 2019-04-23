import 'extension.dart';
import 'fhir_object_factory.dart';
import 'element.dart';
import 'reference.dart';
import 'codeable_concept.dart';
/// This resource provides: the claim details; adjudication details from the processing of a Claim; and optionally account balance information, for informing the subscriber of the benefits provided.
class ExplanationOfBenefitCareTeam {
    /// Unique id for the element within a resource (for internal references). This may be any string value that does not contain spaces.
    String id;
    /// May be used to represent additional information that is not part of the basic definition of the element. To make the use of extensions safe and manageable, there is a strict set of governance  applied to the definition and use of extensions. Though any implementer can define an extension, there is a set of requirements that SHALL be met as part of the definition of the extension.
    List<Extension> extension;
    /// May be used to represent additional information that is not part of the basic definition of the element and that modifies the understanding of the element in which it is contained and/or the understanding of the containing element's descendants. Usually modifier elements provide negation or qualification. To make the use of extensions safe and manageable, there is a strict set of governance applied to the definition and use of extensions. Though any implementer can define an extension, there is a set of requirements that SHALL be met as part of the definition of the extension. Applications processing a resource are required to check for modifier extensions.
    /// 
    /// Modifier extensions SHALL NOT change the meaning of any elements on Resource or DomainResource (including cannot change the meaning of modifierExtension itself).
    List<Extension> modifierExtension;
    /// A number to uniquely identify care team entries.
    int sequence;
    /// Extensions for sequence
    Element extSequence;
    /// Member of the team who provided the product or service.
    Reference provider;
    /// The party who is billing and/or responsible for the claimed products or services.
    bool responsible;
    /// Extensions for responsible
    Element extResponsible;
    /// The lead, assisting or supervising practitioner and their discipline if a multidisciplinary team.
    CodeableConcept role;
    /// The qualification of the practitioner which is applicable for this service.
    CodeableConcept qualification;
 
    ExplanationOfBenefitCareTeam.fromJSON( Map json ){
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
        this.provider = json['provider'] == null ? null : FHIRObjectFactory.buildFromJSON('Reference', json['provider']);
        this.responsible = json['responsible'];
        this.extResponsible = json['_responsible'] == null ? null : FHIRObjectFactory.buildFromJSON('Element', json['_responsible']);
        this.role = json['role'] == null ? null : FHIRObjectFactory.buildFromJSON('CodeableConcept', json['role']);
        this.qualification = json['qualification'] == null ? null : FHIRObjectFactory.buildFromJSON('CodeableConcept', json['qualification']);
    }
}
