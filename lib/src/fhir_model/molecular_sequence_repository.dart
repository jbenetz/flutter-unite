import 'extension.dart';
import 'fhir_object_factory.dart';
import 'element.dart';
/// Raw data describing a biological sequence.
class MolecularSequenceRepository {
    /// Unique id for the element within a resource (for internal references). This may be any string value that does not contain spaces.
    String id;
    /// May be used to represent additional information that is not part of the basic definition of the element. To make the use of extensions safe and manageable, there is a strict set of governance  applied to the definition and use of extensions. Though any implementer can define an extension, there is a set of requirements that SHALL be met as part of the definition of the extension.
    List<Extension> extension;
    /// May be used to represent additional information that is not part of the basic definition of the element and that modifies the understanding of the element in which it is contained and/or the understanding of the containing element's descendants. Usually modifier elements provide negation or qualification. To make the use of extensions safe and manageable, there is a strict set of governance applied to the definition and use of extensions. Though any implementer can define an extension, there is a set of requirements that SHALL be met as part of the definition of the extension. Applications processing a resource are required to check for modifier extensions.
    /// 
    /// Modifier extensions SHALL NOT change the meaning of any elements on Resource or DomainResource (including cannot change the meaning of modifierExtension itself).
    List<Extension> modifierExtension;
    /// Click and see / RESTful API / Need login to see / RESTful API with authentication / Other ways to see resource.
    String type;
    /// Extensions for type
    Element extType;
    /// URI of an external repository which contains further details about the genetics data.
    String url;
    /// Extensions for url
    Element extUrl;
    /// URI of an external repository which contains further details about the genetics data.
    String name;
    /// Extensions for name
    Element extName;
    /// Id of the variant in this external repository. The server will understand how to use this id to call for more info about datasets in external repository.
    String datasetId;
    /// Extensions for datasetId
    Element extDatasetId;
    /// Id of the variantset in this external repository. The server will understand how to use this id to call for more info about variantsets in external repository.
    String variantsetId;
    /// Extensions for variantsetId
    Element extVariantsetId;
    /// Id of the read in this external repository.
    String readsetId;
    /// Extensions for readsetId
    Element extReadsetId;
 
    MolecularSequenceRepository.fromJSON( Map json ){
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
        this.type = json['type'];
        this.extType = json['_type'] == null ? null : FHIRObjectFactory.buildFromJSON('Element', json['_type']);
        this.url = json['url'];
        this.extUrl = json['_url'] == null ? null : FHIRObjectFactory.buildFromJSON('Element', json['_url']);
        this.name = json['name'];
        this.extName = json['_name'] == null ? null : FHIRObjectFactory.buildFromJSON('Element', json['_name']);
        this.datasetId = json['datasetId'];
        this.extDatasetId = json['_datasetId'] == null ? null : FHIRObjectFactory.buildFromJSON('Element', json['_datasetId']);
        this.variantsetId = json['variantsetId'];
        this.extVariantsetId = json['_variantsetId'] == null ? null : FHIRObjectFactory.buildFromJSON('Element', json['_variantsetId']);
        this.readsetId = json['readsetId'];
        this.extReadsetId = json['_readsetId'] == null ? null : FHIRObjectFactory.buildFromJSON('Element', json['_readsetId']);
    }
}
