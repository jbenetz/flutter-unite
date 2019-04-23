import 'extension.dart';
import 'fhir_object_factory.dart';
import 'element.dart';
import 'implementation_guide_resource1.dart';
import 'implementation_guide_page1.dart';
/// A set of rules of how a particular interoperability or standards problem is solved - typically through the use of FHIR resources. This resource is used to gather all the parts of an implementation guide into a logical whole and to publish a computable definition of all the parts.
class ImplementationGuideManifest {
    /// Unique id for the element within a resource (for internal references). This may be any string value that does not contain spaces.
    String id;
    /// May be used to represent additional information that is not part of the basic definition of the element. To make the use of extensions safe and manageable, there is a strict set of governance  applied to the definition and use of extensions. Though any implementer can define an extension, there is a set of requirements that SHALL be met as part of the definition of the extension.
    List<Extension> extension;
    /// May be used to represent additional information that is not part of the basic definition of the element and that modifies the understanding of the element in which it is contained and/or the understanding of the containing element's descendants. Usually modifier elements provide negation or qualification. To make the use of extensions safe and manageable, there is a strict set of governance applied to the definition and use of extensions. Though any implementer can define an extension, there is a set of requirements that SHALL be met as part of the definition of the extension. Applications processing a resource are required to check for modifier extensions.
    /// 
    /// Modifier extensions SHALL NOT change the meaning of any elements on Resource or DomainResource (including cannot change the meaning of modifierExtension itself).
    List<Extension> modifierExtension;
    /// A pointer to official web page, PDF or other rendering of the implementation guide.
    String rendering;
    /// Extensions for rendering
    Element extRendering;
    /// A resource that is part of the implementation guide. Conformance resources (value set, structure definition, capability statements etc.) are obvious candidates for inclusion, but any kind of resource can be included as an example resource.
    List<ImplementationGuideResource1> resource;
    /// Information about a page within the IG.
    List<ImplementationGuidePage1> page;
    /// Indicates a relative path to an image that exists within the IG.
    List<String> image;
    /// Extensions for image
    List<Element> extImage;
    /// Indicates the relative path of an additional non-page, non-image file that is part of the IG - e.g. zip, jar and similar files that could be the target of a hyperlink in a derived IG.
    List<String> other;
    /// Extensions for other
    List<Element> extOther;
 
    ImplementationGuideManifest.fromJSON( Map json ){
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
        this.rendering = json['rendering'];
        this.extRendering = json['_rendering'] == null ? null : FHIRObjectFactory.buildFromJSON('Element', json['_rendering']);
        this.resource = List<ImplementationGuideResource1>();
        if (json['resource'] != null && json['resource'].length > 0) {
          if( json['resource'] is List ){
            json['resource'].forEach((i){
              this.resource.add(FHIRObjectFactory.buildFromJSON('ImplementationGuideResource1', i));
            });
          } else {
            // this handles the case when the list only has one object and does not return as a list
            var i = json['resource'];
            this.resource.add(FHIRObjectFactory.buildFromJSON('ImplementationGuideResource1', i));
          }          
        }
        this.page = List<ImplementationGuidePage1>();
        if (json['page'] != null && json['page'].length > 0) {
          if( json['page'] is List ){
            json['page'].forEach((i){
              this.page.add(FHIRObjectFactory.buildFromJSON('ImplementationGuidePage1', i));
            });
          } else {
            // this handles the case when the list only has one object and does not return as a list
            var i = json['page'];
            this.page.add(FHIRObjectFactory.buildFromJSON('ImplementationGuidePage1', i));
          }          
        }
        this.image = List<String>();
        if (json['image'] != null && json['image'].length > 0) {
          if( json['image'] is List ){
            json['image'].forEach((i){
              this.image.add(i);
            });
          } else {
            // this handles the case when the list only has one object and does not return as a list
            var i = json['image'];
            this.image.add(i);
          }          
        }
        this.extImage = List<Element>();
        if (json['_image'] != null && json['_image'].length > 0) {
          if( json['_image'] is List ){
            json['_image'].forEach((i){
              this.extImage.add(FHIRObjectFactory.buildFromJSON('Element', i));
            });
          } else {
            // this handles the case when the list only has one object and does not return as a list
            var i = json['_image'];
            this.extImage.add(FHIRObjectFactory.buildFromJSON('Element', i));
          }          
        }
        this.other = List<String>();
        if (json['other'] != null && json['other'].length > 0) {
          if( json['other'] is List ){
            json['other'].forEach((i){
              this.other.add(i);
            });
          } else {
            // this handles the case when the list only has one object and does not return as a list
            var i = json['other'];
            this.other.add(i);
          }          
        }
        this.extOther = List<Element>();
        if (json['_other'] != null && json['_other'].length > 0) {
          if( json['_other'] is List ){
            json['_other'].forEach((i){
              this.extOther.add(FHIRObjectFactory.buildFromJSON('Element', i));
            });
          } else {
            // this handles the case when the list only has one object and does not return as a list
            var i = json['_other'];
            this.extOther.add(FHIRObjectFactory.buildFromJSON('Element', i));
          }          
        }
    }
}
