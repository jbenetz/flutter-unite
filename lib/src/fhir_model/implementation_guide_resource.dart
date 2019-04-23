import 'extension.dart';
import 'fhir_object_factory.dart';
import 'reference.dart';
import 'element.dart';
/// A set of rules of how a particular interoperability or standards problem is solved - typically through the use of FHIR resources. This resource is used to gather all the parts of an implementation guide into a logical whole and to publish a computable definition of all the parts.
class ImplementationGuideResource {
    /// Unique id for the element within a resource (for internal references). This may be any string value that does not contain spaces.
    String id;
    /// May be used to represent additional information that is not part of the basic definition of the element. To make the use of extensions safe and manageable, there is a strict set of governance  applied to the definition and use of extensions. Though any implementer can define an extension, there is a set of requirements that SHALL be met as part of the definition of the extension.
    List<Extension> extension;
    /// May be used to represent additional information that is not part of the basic definition of the element and that modifies the understanding of the element in which it is contained and/or the understanding of the containing element's descendants. Usually modifier elements provide negation or qualification. To make the use of extensions safe and manageable, there is a strict set of governance applied to the definition and use of extensions. Though any implementer can define an extension, there is a set of requirements that SHALL be met as part of the definition of the extension. Applications processing a resource are required to check for modifier extensions.
    /// 
    /// Modifier extensions SHALL NOT change the meaning of any elements on Resource or DomainResource (including cannot change the meaning of modifierExtension itself).
    List<Extension> modifierExtension;
    /// Where this resource is found.
    Reference reference;
    /// Extensions for fhirVersion
    List<Element> extFhirVersion;
    /// A human assigned name for the resource. All resources SHOULD have a name, but the name may be extracted from the resource (e.g. ValueSet.name).
    String name;
    /// Extensions for name
    Element extName;
    /// A description of the reason that a resource has been included in the implementation guide.
    String description;
    /// Extensions for description
    Element extDescription;
    /// Extensions for exampleBoolean
    Element extExampleBoolean;
    /// Extensions for exampleCanonical
    Element extExampleCanonical;
    /// Reference to the id of the grouping this resource appears in.
    String groupingId;
    /// Extensions for groupingId
    Element extGroupingId;
 
    ImplementationGuideResource.fromJSON( Map json ){
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
        this.reference = json['reference'] == null ? null : FHIRObjectFactory.buildFromJSON('Reference', json['reference']);
        this.extFhirVersion = List<Element>();
        if (json['_fhirVersion'] != null && json['_fhirVersion'].length > 0) {
          if( json['_fhirVersion'] is List ){
            json['_fhirVersion'].forEach((i){
              this.extFhirVersion.add(FHIRObjectFactory.buildFromJSON('Element', i));
            });
          } else {
            // this handles the case when the list only has one object and does not return as a list
            var i = json['_fhirVersion'];
            this.extFhirVersion.add(FHIRObjectFactory.buildFromJSON('Element', i));
          }          
        }
        this.name = json['name'];
        this.extName = json['_name'] == null ? null : FHIRObjectFactory.buildFromJSON('Element', json['_name']);
        this.description = json['description'];
        this.extDescription = json['_description'] == null ? null : FHIRObjectFactory.buildFromJSON('Element', json['_description']);
        this.extExampleBoolean = json['_exampleBoolean'] == null ? null : FHIRObjectFactory.buildFromJSON('Element', json['_exampleBoolean']);
        this.extExampleCanonical = json['_exampleCanonical'] == null ? null : FHIRObjectFactory.buildFromJSON('Element', json['_exampleCanonical']);
        this.groupingId = json['groupingId'];
        this.extGroupingId = json['_groupingId'] == null ? null : FHIRObjectFactory.buildFromJSON('Element', json['_groupingId']);
    }
}
