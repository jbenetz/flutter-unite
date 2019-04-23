import 'meta.dart';
import 'fhir_object_factory.dart';
import 'element.dart';
import 'narrative.dart';
import 'extension.dart';
import 'identifier.dart';
import 'codeable_concept.dart';
import 'reference.dart';
import 'document_manifest_related.dart';
/// A collection of documents compiled for a purpose together with metadata that applies to the collection.
class DocumentManifest {
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
    /// A single identifier that uniquely identifies this manifest. Principally used to refer to the manifest in non-FHIR contexts.
    Identifier masterIdentifier;
    /// Other identifiers associated with the document manifest, including version independent  identifiers.
    List<Identifier> identifier;
    /// The status of this document manifest.
    String status;
    /// Extensions for status
    Element extStatus;
    /// The code specifying the type of clinical activity that resulted in placing the associated content into the DocumentManifest.
    CodeableConcept type;
    /// Who or what the set of documents is about. The documents can be about a person, (patient or healthcare practitioner), a device (i.e. machine) or even a group of subjects (such as a document about a herd of farm animals, or a set of patients that share a common exposure). If the documents cross more than one subject, then more than one subject is allowed here (unusual use case).
    Reference subject;
    /// When the document manifest was created for submission to the server (not necessarily the same thing as the actual resource last modified time, since it may be modified, replicated, etc.).
    DateTime created;
    /// Extensions for created
    Element extCreated;
    /// Identifies who is the author of the manifest. Manifest author is not necessarly the author of the references included.
    List<Reference> author;
    /// A patient, practitioner, or organization for which this set of documents is intended.
    List<Reference> recipient;
    /// Identifies the source system, application, or software that produced the document manifest.
    String source;
    /// Extensions for source
    Element extSource;
    /// Human-readable description of the source document. This is sometimes known as the "title".
    String description;
    /// Extensions for description
    Element extDescription;
    /// The list of Resources that consist of the parts of this manifest.
    List<Reference> content;
    /// Related identifiers or resources associated with the DocumentManifest.
    List<DocumentManifestRelated> related;
 
    DocumentManifest.fromJSON( Map json ){
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
        this.masterIdentifier = json['masterIdentifier'] == null ? null : FHIRObjectFactory.buildFromJSON('Identifier', json['masterIdentifier']);
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
        this.type = json['type'] == null ? null : FHIRObjectFactory.buildFromJSON('CodeableConcept', json['type']);
        this.subject = json['subject'] == null ? null : FHIRObjectFactory.buildFromJSON('Reference', json['subject']);
        if( json['created'] != null ) { this.created = DateTime.parse(json['created']);}
        this.extCreated = json['_created'] == null ? null : FHIRObjectFactory.buildFromJSON('Element', json['_created']);
        this.author = List<Reference>();
        if (json['author'] != null && json['author'].length > 0) {
          if( json['author'] is List ){
            json['author'].forEach((i){
              this.author.add(FHIRObjectFactory.buildFromJSON('Reference', i));
            });
          } else {
            // this handles the case when the list only has one object and does not return as a list
            var i = json['author'];
            this.author.add(FHIRObjectFactory.buildFromJSON('Reference', i));
          }          
        }
        this.recipient = List<Reference>();
        if (json['recipient'] != null && json['recipient'].length > 0) {
          if( json['recipient'] is List ){
            json['recipient'].forEach((i){
              this.recipient.add(FHIRObjectFactory.buildFromJSON('Reference', i));
            });
          } else {
            // this handles the case when the list only has one object and does not return as a list
            var i = json['recipient'];
            this.recipient.add(FHIRObjectFactory.buildFromJSON('Reference', i));
          }          
        }
        this.source = json['source'];
        this.extSource = json['_source'] == null ? null : FHIRObjectFactory.buildFromJSON('Element', json['_source']);
        this.description = json['description'];
        this.extDescription = json['_description'] == null ? null : FHIRObjectFactory.buildFromJSON('Element', json['_description']);
        this.content = List<Reference>();
        if (json['content'] != null && json['content'].length > 0) {
          if( json['content'] is List ){
            json['content'].forEach((i){
              this.content.add(FHIRObjectFactory.buildFromJSON('Reference', i));
            });
          } else {
            // this handles the case when the list only has one object and does not return as a list
            var i = json['content'];
            this.content.add(FHIRObjectFactory.buildFromJSON('Reference', i));
          }          
        }
        this.related = List<DocumentManifestRelated>();
        if (json['related'] != null && json['related'].length > 0) {
          if( json['related'] is List ){
            json['related'].forEach((i){
              this.related.add(FHIRObjectFactory.buildFromJSON('DocumentManifestRelated', i));
            });
          } else {
            // this handles the case when the list only has one object and does not return as a list
            var i = json['related'];
            this.related.add(FHIRObjectFactory.buildFromJSON('DocumentManifestRelated', i));
          }          
        }
    }
}
