import 'extension.dart';
import 'fhir_object_factory.dart';
import 'element.dart';
import 'attachment.dart';
/// Related artifacts such as additional documentation, justification, or bibliographic references.
class RelatedArtifact {
    /// Unique id for the element within a resource (for internal references). This may be any string value that does not contain spaces.
    String id;
    /// May be used to represent additional information that is not part of the basic definition of the element. To make the use of extensions safe and manageable, there is a strict set of governance  applied to the definition and use of extensions. Though any implementer can define an extension, there is a set of requirements that SHALL be met as part of the definition of the extension.
    List<Extension> extension;
    /// The type of relationship to the related artifact.
    String type;
    /// Extensions for type
    Element extType;
    /// A short label that can be used to reference the citation from elsewhere in the containing artifact, such as a footnote index.
    String label;
    /// Extensions for label
    Element extLabel;
    /// A brief description of the document or knowledge resource being referenced, suitable for display to a consumer.
    String display;
    /// Extensions for display
    Element extDisplay;
    /// A bibliographic citation for the related artifact. This text SHOULD be formatted according to an accepted citation format.
    String citation;
    /// Extensions for citation
    Element extCitation;
    /// A url for the artifact that can be followed to access the actual content.
    String url;
    /// Extensions for url
    Element extUrl;
    /// The document being referenced, represented as an attachment. This is exclusive with the resource element.
    Attachment document;
    /// The related resource, such as a library, value set, profile, or other knowledge resource.
    String resource;
 
    RelatedArtifact.fromJSON( Map json ){
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
        this.type = json['type'];
        this.extType = json['_type'] == null ? null : FHIRObjectFactory.buildFromJSON('Element', json['_type']);
        this.label = json['label'];
        this.extLabel = json['_label'] == null ? null : FHIRObjectFactory.buildFromJSON('Element', json['_label']);
        this.display = json['display'];
        this.extDisplay = json['_display'] == null ? null : FHIRObjectFactory.buildFromJSON('Element', json['_display']);
        this.citation = json['citation'];
        this.extCitation = json['_citation'] == null ? null : FHIRObjectFactory.buildFromJSON('Element', json['_citation']);
        this.url = json['url'];
        this.extUrl = json['_url'] == null ? null : FHIRObjectFactory.buildFromJSON('Element', json['_url']);
        this.document = json['document'] == null ? null : FHIRObjectFactory.buildFromJSON('Attachment', json['document']);
        this.resource = json['resource'];
    }
}
