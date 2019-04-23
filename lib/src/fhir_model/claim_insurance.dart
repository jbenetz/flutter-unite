import 'extension.dart';
import 'fhir_object_factory.dart';
import 'element.dart';
import 'identifier.dart';
import 'reference.dart';
/// A provider issued list of professional services and products which have been provided, or are to be provided, to a patient which is sent to an insurer for reimbursement.
class ClaimInsurance {
    /// Unique id for the element within a resource (for internal references). This may be any string value that does not contain spaces.
    String id;
    /// May be used to represent additional information that is not part of the basic definition of the element. To make the use of extensions safe and manageable, there is a strict set of governance  applied to the definition and use of extensions. Though any implementer can define an extension, there is a set of requirements that SHALL be met as part of the definition of the extension.
    List<Extension> extension;
    /// May be used to represent additional information that is not part of the basic definition of the element and that modifies the understanding of the element in which it is contained and/or the understanding of the containing element's descendants. Usually modifier elements provide negation or qualification. To make the use of extensions safe and manageable, there is a strict set of governance applied to the definition and use of extensions. Though any implementer can define an extension, there is a set of requirements that SHALL be met as part of the definition of the extension. Applications processing a resource are required to check for modifier extensions.
    /// 
    /// Modifier extensions SHALL NOT change the meaning of any elements on Resource or DomainResource (including cannot change the meaning of modifierExtension itself).
    List<Extension> modifierExtension;
    /// A number to uniquely identify insurance entries and provide a sequence of coverages to convey coordination of benefit order.
    int sequence;
    /// Extensions for sequence
    Element extSequence;
    /// A flag to indicate that this Coverage is to be used for adjudication of this claim when set to true.
    bool focal;
    /// Extensions for focal
    Element extFocal;
    /// The business identifier to be used when the claim is sent for adjudication against this insurance policy.
    Identifier identifier;
    /// Reference to the insurance card level information contained in the Coverage resource. The coverage issuing insurer will use these details to locate the patient's actual coverage within the insurer's information system.
    Reference coverage;
    /// A business agreement number established between the provider and the insurer for special business processing purposes.
    String businessArrangement;
    /// Extensions for businessArrangement
    Element extBusinessArrangement;
    /// Reference numbers previously provided by the insurer to the provider to be quoted on subsequent claims containing services or products related to the prior authorization.
    List<String> preAuthRef;
    /// Extensions for preAuthRef
    List<Element> extPreAuthRef;
    /// The result of the adjudication of the line items for the Coverage specified in this insurance.
    Reference claimResponse;
 
    ClaimInsurance.fromJSON( Map json ){
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
        this.focal = json['focal'];
        this.extFocal = json['_focal'] == null ? null : FHIRObjectFactory.buildFromJSON('Element', json['_focal']);
        this.identifier = json['identifier'] == null ? null : FHIRObjectFactory.buildFromJSON('Identifier', json['identifier']);
        this.coverage = json['coverage'] == null ? null : FHIRObjectFactory.buildFromJSON('Reference', json['coverage']);
        this.businessArrangement = json['businessArrangement'];
        this.extBusinessArrangement = json['_businessArrangement'] == null ? null : FHIRObjectFactory.buildFromJSON('Element', json['_businessArrangement']);
        this.preAuthRef = List<String>();
        if (json['preAuthRef'] != null && json['preAuthRef'].length > 0) {
          if( json['preAuthRef'] is List ){
            json['preAuthRef'].forEach((i){
              this.preAuthRef.add(i);
            });
          } else {
            // this handles the case when the list only has one object and does not return as a list
            var i = json['preAuthRef'];
            this.preAuthRef.add(i);
          }          
        }
        this.extPreAuthRef = List<Element>();
        if (json['_preAuthRef'] != null && json['_preAuthRef'].length > 0) {
          if( json['_preAuthRef'] is List ){
            json['_preAuthRef'].forEach((i){
              this.extPreAuthRef.add(FHIRObjectFactory.buildFromJSON('Element', i));
            });
          } else {
            // this handles the case when the list only has one object and does not return as a list
            var i = json['_preAuthRef'];
            this.extPreAuthRef.add(FHIRObjectFactory.buildFromJSON('Element', i));
          }          
        }
        this.claimResponse = json['claimResponse'] == null ? null : FHIRObjectFactory.buildFromJSON('Reference', json['claimResponse']);
    }
}
