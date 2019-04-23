import 'extension.dart';
import 'fhir_object_factory.dart';
import 'reference.dart';
import 'codeable_concept.dart';
import 'period.dart';
/// A reference to a document of any kind for any purpose. Provides metadata about the document so that the document can be discovered and managed. The scope of a document is any seralized object with a mime-type, so includes formal patient centric documents (CDA), cliical notes, scanned paper, and non-patient specific documents like policy text.
class DocumentReferenceContext {
    /// Unique id for the element within a resource (for internal references). This may be any string value that does not contain spaces.
    String id;
    /// May be used to represent additional information that is not part of the basic definition of the element. To make the use of extensions safe and manageable, there is a strict set of governance  applied to the definition and use of extensions. Though any implementer can define an extension, there is a set of requirements that SHALL be met as part of the definition of the extension.
    List<Extension> extension;
    /// May be used to represent additional information that is not part of the basic definition of the element and that modifies the understanding of the element in which it is contained and/or the understanding of the containing element's descendants. Usually modifier elements provide negation or qualification. To make the use of extensions safe and manageable, there is a strict set of governance applied to the definition and use of extensions. Though any implementer can define an extension, there is a set of requirements that SHALL be met as part of the definition of the extension. Applications processing a resource are required to check for modifier extensions.
    /// 
    /// Modifier extensions SHALL NOT change the meaning of any elements on Resource or DomainResource (including cannot change the meaning of modifierExtension itself).
    List<Extension> modifierExtension;
    /// Describes the clinical encounter or type of care that the document content is associated with.
    List<Reference> encounter;
    /// This list of codes represents the main clinical acts, such as a colonoscopy or an appendectomy, being documented. In some cases, the event is inherent in the type Code, such as a "History and Physical Report" in which the procedure being documented is necessarily a "History and Physical" act.
    List<CodeableConcept> event;
    /// The time period over which the service that is described by the document was provided.
    Period period;
    /// The kind of facility where the patient was seen.
    CodeableConcept facilityType;
    /// This property may convey specifics about the practice setting where the content was created, often reflecting the clinical specialty.
    CodeableConcept practiceSetting;
    /// The Patient Information as known when the document was published. May be a reference to a version specific, or contained.
    Reference sourcePatientInfo;
    /// Related identifiers or resources associated with the DocumentReference.
    List<Reference> related;
 
    DocumentReferenceContext.fromJSON( Map json ){
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
        this.encounter = List<Reference>();
        if (json['encounter'] != null && json['encounter'].length > 0) {
          if( json['encounter'] is List ){
            json['encounter'].forEach((i){
              this.encounter.add(FHIRObjectFactory.buildFromJSON('Reference', i));
            });
          } else {
            // this handles the case when the list only has one object and does not return as a list
            var i = json['encounter'];
            this.encounter.add(FHIRObjectFactory.buildFromJSON('Reference', i));
          }          
        }
        this.event = List<CodeableConcept>();
        if (json['event'] != null && json['event'].length > 0) {
          if( json['event'] is List ){
            json['event'].forEach((i){
              this.event.add(FHIRObjectFactory.buildFromJSON('CodeableConcept', i));
            });
          } else {
            // this handles the case when the list only has one object and does not return as a list
            var i = json['event'];
            this.event.add(FHIRObjectFactory.buildFromJSON('CodeableConcept', i));
          }          
        }
        this.period = json['period'] == null ? null : FHIRObjectFactory.buildFromJSON('Period', json['period']);
        this.facilityType = json['facilityType'] == null ? null : FHIRObjectFactory.buildFromJSON('CodeableConcept', json['facilityType']);
        this.practiceSetting = json['practiceSetting'] == null ? null : FHIRObjectFactory.buildFromJSON('CodeableConcept', json['practiceSetting']);
        this.sourcePatientInfo = json['sourcePatientInfo'] == null ? null : FHIRObjectFactory.buildFromJSON('Reference', json['sourcePatientInfo']);
        this.related = List<Reference>();
        if (json['related'] != null && json['related'].length > 0) {
          if( json['related'] is List ){
            json['related'].forEach((i){
              this.related.add(FHIRObjectFactory.buildFromJSON('Reference', i));
            });
          } else {
            // this handles the case when the list only has one object and does not return as a list
            var i = json['related'];
            this.related.add(FHIRObjectFactory.buildFromJSON('Reference', i));
          }          
        }
    }
}
