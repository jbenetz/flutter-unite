import 'extension.dart';
import 'fhir_object_factory.dart';
import 'element.dart';
import 'coding.dart';
/// The metadata about a resource. This is content in the resource that is maintained by the infrastructure. Changes to the content might not always be associated with version changes to the resource.
class Meta {
    /// Unique id for the element within a resource (for internal references). This may be any string value that does not contain spaces.
    String id;
    /// May be used to represent additional information that is not part of the basic definition of the element. To make the use of extensions safe and manageable, there is a strict set of governance  applied to the definition and use of extensions. Though any implementer can define an extension, there is a set of requirements that SHALL be met as part of the definition of the extension.
    List<Extension> extension;
    /// The version specific identifier, as it appears in the version portion of the URL. This value changes when the resource is created, updated, or deleted.
    String versionId;
    /// Extensions for versionId
    Element extVersionId;
    /// When the resource last changed - e.g. when the version changed.
    DateTime lastUpdated;
    /// Extensions for lastUpdated
    Element extLastUpdated;
    /// A uri that identifies the source system of the resource. This provides a minimal amount of [[[Provenance]]] information that can be used to track or differentiate the source of information in the resource. The source may identify another FHIR server, document, message, database, etc.
    String source;
    /// Extensions for source
    Element extSource;
    /// A list of profiles (references to [[[StructureDefinition]]] resources) that this resource claims to conform to. The URL is a reference to [[[StructureDefinition.url]]].
    List<String> profile;
    /// Security labels applied to this resource. These tags connect specific resources to the overall security policy and infrastructure.
    List<Coding> security;
    /// Tags applied to this resource. Tags are intended to be used to identify and relate resources to process and workflow, and applications are not required to consider the tags when interpreting the meaning of a resource.
    List<Coding> tag;
 
    Meta.fromJSON( Map json ){
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
        this.versionId = json['versionId'];
        this.extVersionId = json['_versionId'] == null ? null : FHIRObjectFactory.buildFromJSON('Element', json['_versionId']);
        if( json['lastUpdated'] != null ) { this.lastUpdated = DateTime.parse(json['lastUpdated']);}
        this.extLastUpdated = json['_lastUpdated'] == null ? null : FHIRObjectFactory.buildFromJSON('Element', json['_lastUpdated']);
        this.source = json['source'];
        this.extSource = json['_source'] == null ? null : FHIRObjectFactory.buildFromJSON('Element', json['_source']);
        this.profile = List<String>();
        if (json['profile'] != null && json['profile'].length > 0) {
          if( json['profile'] is List ){
            json['profile'].forEach((i){
              this.profile.add(i);
            });
          } else {
            // this handles the case when the list only has one object and does not return as a list
            var i = json['profile'];
            this.profile.add(i);
          }          
        }
        this.security = List<Coding>();
        if (json['security'] != null && json['security'].length > 0) {
          if( json['security'] is List ){
            json['security'].forEach((i){
              this.security.add(FHIRObjectFactory.buildFromJSON('Coding', i));
            });
          } else {
            // this handles the case when the list only has one object and does not return as a list
            var i = json['security'];
            this.security.add(FHIRObjectFactory.buildFromJSON('Coding', i));
          }          
        }
        this.tag = List<Coding>();
        if (json['tag'] != null && json['tag'].length > 0) {
          if( json['tag'] is List ){
            json['tag'].forEach((i){
              this.tag.add(FHIRObjectFactory.buildFromJSON('Coding', i));
            });
          } else {
            // this handles the case when the list only has one object and does not return as a list
            var i = json['tag'];
            this.tag.add(FHIRObjectFactory.buildFromJSON('Coding', i));
          }          
        }
    }
}
