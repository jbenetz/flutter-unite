import 'meta.dart';
import 'fhir_object_factory.dart';
import 'element.dart';
import 'narrative.dart';
import 'extension.dart';
import 'identifier.dart';
import 'codeable_concept.dart';
import 'reference.dart';
import 'specimen_collection.dart';
import 'specimen_processing.dart';
import 'specimen_container.dart';
import 'annotation.dart';
/// A sample to be used for analysis.
class Specimen {
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
    /// Id for specimen.
    List<Identifier> identifier;
    /// The identifier assigned by the lab when accessioning specimen(s). This is not necessarily the same as the specimen identifier, depending on local lab procedures.
    Identifier accessionIdentifier;
    /// The availability of the specimen.
    String status;
    /// Extensions for status
    Element extStatus;
    /// The kind of material that forms the specimen.
    CodeableConcept type;
    /// Where the specimen came from. This may be from patient(s), from a location (e.g., the source of an environmental sample), or a sampling of a substance or a device.
    Reference subject;
    /// Time when specimen was received for processing or testing.
    DateTime receivedTime;
    /// Extensions for receivedTime
    Element extReceivedTime;
    /// Reference to the parent (source) specimen which is used when the specimen was either derived from or a component of another specimen.
    List<Reference> parent;
    /// Details concerning a service request that required a specimen to be collected.
    List<Reference> request;
    /// Details concerning the specimen collection.
    SpecimenCollection collection;
    /// Details concerning processing and processing steps for the specimen.
    List<SpecimenProcessing> processing;
    /// The container holding the specimen.  The recursive nature of containers; i.e. blood in tube in tray in rack is not addressed here.
    List<SpecimenContainer> container;
    /// A mode or state of being that describes the nature of the specimen.
    List<CodeableConcept> condition;
    /// To communicate any details or issues about the specimen or during the specimen collection. (for example: broken vial, sent with patient, frozen).
    List<Annotation> note;
 
    Specimen.fromJSON( Map json ){
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
        this.accessionIdentifier = json['accessionIdentifier'] == null ? null : FHIRObjectFactory.buildFromJSON('Identifier', json['accessionIdentifier']);
        this.status = json['status'];
        this.extStatus = json['_status'] == null ? null : FHIRObjectFactory.buildFromJSON('Element', json['_status']);
        this.type = json['type'] == null ? null : FHIRObjectFactory.buildFromJSON('CodeableConcept', json['type']);
        this.subject = json['subject'] == null ? null : FHIRObjectFactory.buildFromJSON('Reference', json['subject']);
        if( json['receivedTime'] != null ) { this.receivedTime = DateTime.parse(json['receivedTime']);}
        this.extReceivedTime = json['_receivedTime'] == null ? null : FHIRObjectFactory.buildFromJSON('Element', json['_receivedTime']);
        this.parent = List<Reference>();
        if (json['parent'] != null && json['parent'].length > 0) {
          if( json['parent'] is List ){
            json['parent'].forEach((i){
              this.parent.add(FHIRObjectFactory.buildFromJSON('Reference', i));
            });
          } else {
            // this handles the case when the list only has one object and does not return as a list
            var i = json['parent'];
            this.parent.add(FHIRObjectFactory.buildFromJSON('Reference', i));
          }          
        }
        this.request = List<Reference>();
        if (json['request'] != null && json['request'].length > 0) {
          if( json['request'] is List ){
            json['request'].forEach((i){
              this.request.add(FHIRObjectFactory.buildFromJSON('Reference', i));
            });
          } else {
            // this handles the case when the list only has one object and does not return as a list
            var i = json['request'];
            this.request.add(FHIRObjectFactory.buildFromJSON('Reference', i));
          }          
        }
        this.collection = json['collection'] == null ? null : FHIRObjectFactory.buildFromJSON('SpecimenCollection', json['collection']);
        this.processing = List<SpecimenProcessing>();
        if (json['processing'] != null && json['processing'].length > 0) {
          if( json['processing'] is List ){
            json['processing'].forEach((i){
              this.processing.add(FHIRObjectFactory.buildFromJSON('SpecimenProcessing', i));
            });
          } else {
            // this handles the case when the list only has one object and does not return as a list
            var i = json['processing'];
            this.processing.add(FHIRObjectFactory.buildFromJSON('SpecimenProcessing', i));
          }          
        }
        this.container = List<SpecimenContainer>();
        if (json['container'] != null && json['container'].length > 0) {
          if( json['container'] is List ){
            json['container'].forEach((i){
              this.container.add(FHIRObjectFactory.buildFromJSON('SpecimenContainer', i));
            });
          } else {
            // this handles the case when the list only has one object and does not return as a list
            var i = json['container'];
            this.container.add(FHIRObjectFactory.buildFromJSON('SpecimenContainer', i));
          }          
        }
        this.condition = List<CodeableConcept>();
        if (json['condition'] != null && json['condition'].length > 0) {
          if( json['condition'] is List ){
            json['condition'].forEach((i){
              this.condition.add(FHIRObjectFactory.buildFromJSON('CodeableConcept', i));
            });
          } else {
            // this handles the case when the list only has one object and does not return as a list
            var i = json['condition'];
            this.condition.add(FHIRObjectFactory.buildFromJSON('CodeableConcept', i));
          }          
        }
        this.note = List<Annotation>();
        if (json['note'] != null && json['note'].length > 0) {
          if( json['note'] is List ){
            json['note'].forEach((i){
              this.note.add(FHIRObjectFactory.buildFromJSON('Annotation', i));
            });
          } else {
            // this handles the case when the list only has one object and does not return as a list
            var i = json['note'];
            this.note.add(FHIRObjectFactory.buildFromJSON('Annotation', i));
          }          
        }
    }
}
