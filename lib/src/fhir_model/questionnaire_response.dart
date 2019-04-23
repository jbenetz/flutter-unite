import 'meta.dart';
import 'fhir_object_factory.dart';
import 'element.dart';
import 'narrative.dart';
import 'extension.dart';
import 'identifier.dart';
import 'reference.dart';
import 'questionnaire_response_item.dart';
/// A structured set of questions and their answers. The questions are ordered and grouped into coherent subsets, corresponding to the structure of the grouping of the questionnaire being responded to.
class QuestionnaireResponse {
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
    /// A business identifier assigned to a particular completed (or partially completed) questionnaire.
    Identifier identifier;
    /// The order, proposal or plan that is fulfilled in whole or in part by this QuestionnaireResponse.  For example, a ServiceRequest seeking an intake assessment or a decision support recommendation to assess for post-partum depression.
    List<Reference> basedOn;
    /// A procedure or observation that this questionnaire was performed as part of the execution of.  For example, the surgery a checklist was executed as part of.
    List<Reference> partOf;
    /// The Questionnaire that defines and organizes the questions for which answers are being provided.
    String questionnaire;
    /// The position of the questionnaire response within its overall lifecycle.
    String status;
    /// Extensions for status
    Element extStatus;
    /// The subject of the questionnaire response.  This could be a patient, organization, practitioner, device, etc.  This is who/what the answers apply to, but is not necessarily the source of information.
    Reference subject;
    /// The Encounter during which this questionnaire response was created or to which the creation of this record is tightly associated.
    Reference encounter;
    /// The date and/or time that this set of answers were last changed.
    DateTime authored;
    /// Extensions for authored
    Element extAuthored;
    /// Person who received the answers to the questions in the QuestionnaireResponse and recorded them in the system.
    Reference author;
    /// The person who answered the questions about the subject.
    Reference source;
    /// A group or question item from the original questionnaire for which answers are provided.
    List<QuestionnaireResponseItem> item;
 
    QuestionnaireResponse.fromJSON( Map json ){
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
        this.identifier = json['identifier'] == null ? null : FHIRObjectFactory.buildFromJSON('Identifier', json['identifier']);
        this.basedOn = List<Reference>();
        if (json['basedOn'] != null && json['basedOn'].length > 0) {
          if( json['basedOn'] is List ){
            json['basedOn'].forEach((i){
              this.basedOn.add(FHIRObjectFactory.buildFromJSON('Reference', i));
            });
          } else {
            // this handles the case when the list only has one object and does not return as a list
            var i = json['basedOn'];
            this.basedOn.add(FHIRObjectFactory.buildFromJSON('Reference', i));
          }          
        }
        this.partOf = List<Reference>();
        if (json['partOf'] != null && json['partOf'].length > 0) {
          if( json['partOf'] is List ){
            json['partOf'].forEach((i){
              this.partOf.add(FHIRObjectFactory.buildFromJSON('Reference', i));
            });
          } else {
            // this handles the case when the list only has one object and does not return as a list
            var i = json['partOf'];
            this.partOf.add(FHIRObjectFactory.buildFromJSON('Reference', i));
          }          
        }
        this.questionnaire = json['questionnaire'];
        this.status = json['status'];
        this.extStatus = json['_status'] == null ? null : FHIRObjectFactory.buildFromJSON('Element', json['_status']);
        this.subject = json['subject'] == null ? null : FHIRObjectFactory.buildFromJSON('Reference', json['subject']);
        this.encounter = json['encounter'] == null ? null : FHIRObjectFactory.buildFromJSON('Reference', json['encounter']);
        if( json['authored'] != null ) { this.authored = DateTime.parse(json['authored']);}
        this.extAuthored = json['_authored'] == null ? null : FHIRObjectFactory.buildFromJSON('Element', json['_authored']);
        this.author = json['author'] == null ? null : FHIRObjectFactory.buildFromJSON('Reference', json['author']);
        this.source = json['source'] == null ? null : FHIRObjectFactory.buildFromJSON('Reference', json['source']);
        this.item = List<QuestionnaireResponseItem>();
        if (json['item'] != null && json['item'].length > 0) {
          if( json['item'] is List ){
            json['item'].forEach((i){
              this.item.add(FHIRObjectFactory.buildFromJSON('QuestionnaireResponseItem', i));
            });
          } else {
            // this handles the case when the list only has one object and does not return as a list
            var i = json['item'];
            this.item.add(FHIRObjectFactory.buildFromJSON('QuestionnaireResponseItem', i));
          }          
        }
    }
}
