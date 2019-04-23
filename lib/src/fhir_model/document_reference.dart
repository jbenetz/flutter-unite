import 'meta.dart';
import 'fhir_object_factory.dart';
import 'element.dart';
import 'narrative.dart';
import 'extension.dart';
import 'identifier.dart';
import 'codeable_concept.dart';
import 'reference.dart';
import 'document_reference_relates_to.dart';
import 'document_reference_content.dart';
import 'document_reference_context.dart';
/// A reference to a document of any kind for any purpose. Provides metadata about the document so that the document can be discovered and managed. The scope of a document is any seralized object with a mime-type, so includes formal patient centric documents (CDA), cliical notes, scanned paper, and non-patient specific documents like policy text.
class DocumentReference {
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
    /// Document identifier as assigned by the source of the document. This identifier is specific to this version of the document. This unique identifier may be used elsewhere to identify this version of the document.
    Identifier masterIdentifier;
    /// Other identifiers associated with the document, including version independent identifiers.
    List<Identifier> identifier;
    /// The status of this document reference.
    String status;
    /// Extensions for status
    Element extStatus;
    /// The status of the underlying document.
    String docStatus;
    /// Extensions for docStatus
    Element extDocStatus;
    /// Specifies the particular kind of document referenced  (e.g. History and Physical, Discharge Summary, Progress Note). This usually equates to the purpose of making the document referenced.
    CodeableConcept type;
    /// A categorization for the type of document referenced - helps for indexing and searching. This may be implied by or derived from the code specified in the DocumentReference.type.
    List<CodeableConcept> category;
    /// Who or what the document is about. The document can be about a person, (patient or healthcare practitioner), a device (e.g. a machine) or even a group of subjects (such as a document about a herd of farm animals, or a set of patients that share a common exposure).
    Reference subject;
    /// When the document reference was created.
    DateTime date;
    /// Extensions for date
    Element extDate;
    /// Identifies who is responsible for adding the information to the document.
    List<Reference> author;
    /// Which person or organization authenticates that this document is valid.
    Reference authenticator;
    /// Identifies the organization or group who is responsible for ongoing maintenance of and access to the document.
    Reference custodian;
    /// Relationships that this document has with other document references that already exist.
    List<DocumentReferenceRelatesTo> relatesTo;
    /// Human-readable description of the source document.
    String description;
    /// Extensions for description
    Element extDescription;
    /// A set of Security-Tag codes specifying the level of privacy/security of the Document. Note that DocumentReference.meta.security contains the security labels of the "reference" to the document, while DocumentReference.securityLabel contains a snapshot of the security labels on the document the reference refers to.
    List<CodeableConcept> securityLabel;
    /// The document and format referenced. There may be multiple content element repetitions, each with a different format.
    List<DocumentReferenceContent> content;
    /// The clinical context in which the document was prepared.
    DocumentReferenceContext context;
 
    DocumentReference.fromJSON( Map json ){
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
        this.docStatus = json['docStatus'];
        this.extDocStatus = json['_docStatus'] == null ? null : FHIRObjectFactory.buildFromJSON('Element', json['_docStatus']);
        this.type = json['type'] == null ? null : FHIRObjectFactory.buildFromJSON('CodeableConcept', json['type']);
        this.category = List<CodeableConcept>();
        if (json['category'] != null && json['category'].length > 0) {
          if( json['category'] is List ){
            json['category'].forEach((i){
              this.category.add(FHIRObjectFactory.buildFromJSON('CodeableConcept', i));
            });
          } else {
            // this handles the case when the list only has one object and does not return as a list
            var i = json['category'];
            this.category.add(FHIRObjectFactory.buildFromJSON('CodeableConcept', i));
          }          
        }
        this.subject = json['subject'] == null ? null : FHIRObjectFactory.buildFromJSON('Reference', json['subject']);
        if( json['date'] != null ) { this.date = DateTime.parse(json['date']);}
        this.extDate = json['_date'] == null ? null : FHIRObjectFactory.buildFromJSON('Element', json['_date']);
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
        this.authenticator = json['authenticator'] == null ? null : FHIRObjectFactory.buildFromJSON('Reference', json['authenticator']);
        this.custodian = json['custodian'] == null ? null : FHIRObjectFactory.buildFromJSON('Reference', json['custodian']);
        this.relatesTo = List<DocumentReferenceRelatesTo>();
        if (json['relatesTo'] != null && json['relatesTo'].length > 0) {
          if( json['relatesTo'] is List ){
            json['relatesTo'].forEach((i){
              this.relatesTo.add(FHIRObjectFactory.buildFromJSON('DocumentReferenceRelatesTo', i));
            });
          } else {
            // this handles the case when the list only has one object and does not return as a list
            var i = json['relatesTo'];
            this.relatesTo.add(FHIRObjectFactory.buildFromJSON('DocumentReferenceRelatesTo', i));
          }          
        }
        this.description = json['description'];
        this.extDescription = json['_description'] == null ? null : FHIRObjectFactory.buildFromJSON('Element', json['_description']);
        this.securityLabel = List<CodeableConcept>();
        if (json['securityLabel'] != null && json['securityLabel'].length > 0) {
          if( json['securityLabel'] is List ){
            json['securityLabel'].forEach((i){
              this.securityLabel.add(FHIRObjectFactory.buildFromJSON('CodeableConcept', i));
            });
          } else {
            // this handles the case when the list only has one object and does not return as a list
            var i = json['securityLabel'];
            this.securityLabel.add(FHIRObjectFactory.buildFromJSON('CodeableConcept', i));
          }          
        }
        this.content = List<DocumentReferenceContent>();
        if (json['content'] != null && json['content'].length > 0) {
          if( json['content'] is List ){
            json['content'].forEach((i){
              this.content.add(FHIRObjectFactory.buildFromJSON('DocumentReferenceContent', i));
            });
          } else {
            // this handles the case when the list only has one object and does not return as a list
            var i = json['content'];
            this.content.add(FHIRObjectFactory.buildFromJSON('DocumentReferenceContent', i));
          }          
        }
        this.context = json['context'] == null ? null : FHIRObjectFactory.buildFromJSON('DocumentReferenceContext', json['context']);
    }
}
