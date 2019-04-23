import 'meta.dart';
import 'fhir_object_factory.dart';
import 'element.dart';
import 'narrative.dart';
import 'extension.dart';
import 'identifier.dart';
import 'episode_of_care_status_history.dart';
import 'codeable_concept.dart';
import 'episode_of_care_diagnosis.dart';
import 'reference.dart';
import 'period.dart';
/// An association between a patient and an organization / healthcare provider(s) during which time encounters may occur. The managing organization assumes a level of responsibility for the patient during this time.
class EpisodeOfCare {
    /// The logical id of the resource, as used in the URL for the resource. Once assigned, this value never changes.
    String id;
    /// The metadata about the resource. This is content that is maintained by the infrastructure. Changes to the content might not always be associated with version changes to the resource.
    Meta meta;
    /// A reference to a set of rules that were followed when the resource was constructed, and which must be understood when processing the content. Often, this is a reference to an implementation guide that defines the special rules along with other profiles etc.
    String implicitRules;
    /// Extensions for implicitRules
    Element extImplicitRules;
    /// The base language in which the resource is written.
    String language;
    /// Extensions for language
    Element extLanguage;
    /// A human-readable narrative that contains a summary of the resource and can be used to represent the content of the resource to a human. The narrative need not encode all the structured data, but is required to contain sufficient detail to make it "clinically safe" for a human to just read the narrative. Resource definitions may define what content should be represented in the narrative to ensure clinical safety.
    Narrative text;
    /// May be used to represent additional information that is not part of the basic definition of the resource. To make the use of extensions safe and manageable, there is a strict set of governance  applied to the definition and use of extensions. Though any implementer can define an extension, there is a set of requirements that SHALL be met as part of the definition of the extension.
    List<Extension> extension;
    /// May be used to represent additional information that is not part of the basic definition of the resource and that modifies the understanding of the element that contains it and/or the understanding of the containing element's descendants. Usually modifier elements provide negation or qualification. To make the use of extensions safe and manageable, there is a strict set of governance applied to the definition and use of extensions. Though any implementer is allowed to define an extension, there is a set of requirements that SHALL be met as part of the definition of the extension. Applications processing a resource are required to check for modifier extensions.
    /// 
    /// Modifier extensions SHALL NOT change the meaning of any elements on Resource or DomainResource (including cannot change the meaning of modifierExtension itself).
    List<Extension> modifierExtension;
    /// The EpisodeOfCare may be known by different identifiers for different contexts of use, such as when an external agency is tracking the Episode for funding purposes.
    List<Identifier> identifier;
    /// planned | waitlist | active | onhold | finished | cancelled.
    String status;
    /// Extensions for status
    Element extStatus;
    /// The history of statuses that the EpisodeOfCare has been through (without requiring processing the history of the resource).
    List<EpisodeOfCareStatusHistory> statusHistory;
    /// A classification of the type of episode of care; e.g. specialist referral, disease management, type of funded care.
    List<CodeableConcept> type;
    /// The list of diagnosis relevant to this episode of care.
    List<EpisodeOfCareDiagnosis> diagnosis;
    /// The patient who is the focus of this episode of care.
    Reference patient;
    /// The organization that has assumed the specific responsibilities for the specified duration.
    Reference managingOrganization;
    /// The interval during which the managing organization assumes the defined responsibility.
    Period period;
    /// Referral Request(s) that are fulfilled by this EpisodeOfCare, incoming referrals.
    List<Reference> referralRequest;
    /// The practitioner that is the care manager/care coordinator for this patient.
    Reference careManager;
    /// The list of practitioners that may be facilitating this episode of care for specific purposes.
    List<Reference> team;
    /// The set of accounts that may be used for billing for this EpisodeOfCare.
    List<Reference> account;
 
    EpisodeOfCare.fromJSON( Map json ){
        this.id = json['id'];
        this.meta = json['meta'] == null ? null : FHIRObjectFactory.buildFromJSON('Meta', json['meta']);
        this.implicitRules = json['implicitRules'];
        this.extImplicitRules = json['_implicitRules'] == null ? null : FHIRObjectFactory.buildFromJSON('Element', json['_implicitRules']);
        this.language = json['language'];
        this.extLanguage = json['_language'] == null ? null : FHIRObjectFactory.buildFromJSON('Element', json['_language']);
        this.text = json['text'] == null ? null : FHIRObjectFactory.buildFromJSON('Narrative', json['text']);
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
        this.identifier = List<Identifier>();
        if (json['identifier'] != null && json['identifier'].length > 0) {
          if( json['identifier'] is List ){
            json['identifier'].forEach((i){
              this.identifier.add(FHIRObjectFactory.buildFromJSON('Identifier', i));
            });
          } else {
            // this handles the case when the list only has one object and does not return as a list
            var i = json['identifier'];
            this.identifier.add(FHIRObjectFactory.buildFromJSON('Identifier', i));
          }          
        }
        this.status = json['status'];
        this.extStatus = json['_status'] == null ? null : FHIRObjectFactory.buildFromJSON('Element', json['_status']);
        this.statusHistory = List<EpisodeOfCareStatusHistory>();
        if (json['statusHistory'] != null && json['statusHistory'].length > 0) {
          if( json['statusHistory'] is List ){
            json['statusHistory'].forEach((i){
              this.statusHistory.add(FHIRObjectFactory.buildFromJSON('EpisodeOfCareStatusHistory', i));
            });
          } else {
            // this handles the case when the list only has one object and does not return as a list
            var i = json['statusHistory'];
            this.statusHistory.add(FHIRObjectFactory.buildFromJSON('EpisodeOfCareStatusHistory', i));
          }          
        }
        this.type = List<CodeableConcept>();
        if (json['type'] != null && json['type'].length > 0) {
          if( json['type'] is List ){
            json['type'].forEach((i){
              this.type.add(FHIRObjectFactory.buildFromJSON('CodeableConcept', i));
            });
          } else {
            // this handles the case when the list only has one object and does not return as a list
            var i = json['type'];
            this.type.add(FHIRObjectFactory.buildFromJSON('CodeableConcept', i));
          }          
        }
        this.diagnosis = List<EpisodeOfCareDiagnosis>();
        if (json['diagnosis'] != null && json['diagnosis'].length > 0) {
          if( json['diagnosis'] is List ){
            json['diagnosis'].forEach((i){
              this.diagnosis.add(FHIRObjectFactory.buildFromJSON('EpisodeOfCareDiagnosis', i));
            });
          } else {
            // this handles the case when the list only has one object and does not return as a list
            var i = json['diagnosis'];
            this.diagnosis.add(FHIRObjectFactory.buildFromJSON('EpisodeOfCareDiagnosis', i));
          }          
        }
        this.patient = json['patient'] == null ? null : FHIRObjectFactory.buildFromJSON('Reference', json['patient']);
        this.managingOrganization = json['managingOrganization'] == null ? null : FHIRObjectFactory.buildFromJSON('Reference', json['managingOrganization']);
        this.period = json['period'] == null ? null : FHIRObjectFactory.buildFromJSON('Period', json['period']);
        this.referralRequest = List<Reference>();
        if (json['referralRequest'] != null && json['referralRequest'].length > 0) {
          if( json['referralRequest'] is List ){
            json['referralRequest'].forEach((i){
              this.referralRequest.add(FHIRObjectFactory.buildFromJSON('Reference', i));
            });
          } else {
            // this handles the case when the list only has one object and does not return as a list
            var i = json['referralRequest'];
            this.referralRequest.add(FHIRObjectFactory.buildFromJSON('Reference', i));
          }          
        }
        this.careManager = json['careManager'] == null ? null : FHIRObjectFactory.buildFromJSON('Reference', json['careManager']);
        this.team = List<Reference>();
        if (json['team'] != null && json['team'].length > 0) {
          if( json['team'] is List ){
            json['team'].forEach((i){
              this.team.add(FHIRObjectFactory.buildFromJSON('Reference', i));
            });
          } else {
            // this handles the case when the list only has one object and does not return as a list
            var i = json['team'];
            this.team.add(FHIRObjectFactory.buildFromJSON('Reference', i));
          }          
        }
        this.account = List<Reference>();
        if (json['account'] != null && json['account'].length > 0) {
          if( json['account'] is List ){
            json['account'].forEach((i){
              this.account.add(FHIRObjectFactory.buildFromJSON('Reference', i));
            });
          } else {
            // this handles the case when the list only has one object and does not return as a list
            var i = json['account'];
            this.account.add(FHIRObjectFactory.buildFromJSON('Reference', i));
          }          
        }
    }
}
