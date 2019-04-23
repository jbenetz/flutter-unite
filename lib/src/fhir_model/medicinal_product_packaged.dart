import 'meta.dart';
import 'fhir_object_factory.dart';
import 'element.dart';
import 'narrative.dart';
import 'extension.dart';
import 'identifier.dart';
import 'reference.dart';
import 'codeable_concept.dart';
import 'marketing_status.dart';
import 'medicinal_product_packaged_batch_identifier.dart';
import 'medicinal_product_packaged_package_item.dart';
/// A medicinal product in a container or package.
class MedicinalProductPackaged {
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
    /// Unique identifier.
    List<Identifier> identifier;
    /// The product with this is a pack for.
    List<Reference> subject;
    /// Textual description.
    String description;
    /// Extensions for description
    Element extDescription;
    /// The legal status of supply of the medicinal product as classified by the regulator.
    CodeableConcept legalStatusOfSupply;
    /// Marketing information.
    List<MarketingStatus> marketingStatus;
    /// Manufacturer of this Package Item.
    Reference marketingAuthorization;
    /// Manufacturer of this Package Item.
    List<Reference> manufacturer;
    /// Batch numbering.
    List<MedicinalProductPackagedBatchIdentifier> batchIdentifier;
    /// A packaging item, as a contained for medicine, possibly with other packaging items within.
    List<MedicinalProductPackagedPackageItem> packageItem;
 
    MedicinalProductPackaged.fromJSON( Map json ){
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
        this.subject = List<Reference>();
        if (json['subject'] != null && json['subject'].length > 0) {
          if( json['subject'] is List ){
            json['subject'].forEach((i){
              this.subject.add(FHIRObjectFactory.buildFromJSON('Reference', i));
            });
          } else {
            // this handles the case when the list only has one object and does not return as a list
            var i = json['subject'];
            this.subject.add(FHIRObjectFactory.buildFromJSON('Reference', i));
          }          
        }
        this.description = json['description'];
        this.extDescription = json['_description'] == null ? null : FHIRObjectFactory.buildFromJSON('Element', json['_description']);
        this.legalStatusOfSupply = json['legalStatusOfSupply'] == null ? null : FHIRObjectFactory.buildFromJSON('CodeableConcept', json['legalStatusOfSupply']);
        this.marketingStatus = List<MarketingStatus>();
        if (json['marketingStatus'] != null && json['marketingStatus'].length > 0) {
          if( json['marketingStatus'] is List ){
            json['marketingStatus'].forEach((i){
              this.marketingStatus.add(FHIRObjectFactory.buildFromJSON('MarketingStatus', i));
            });
          } else {
            // this handles the case when the list only has one object and does not return as a list
            var i = json['marketingStatus'];
            this.marketingStatus.add(FHIRObjectFactory.buildFromJSON('MarketingStatus', i));
          }          
        }
        this.marketingAuthorization = json['marketingAuthorization'] == null ? null : FHIRObjectFactory.buildFromJSON('Reference', json['marketingAuthorization']);
        this.manufacturer = List<Reference>();
        if (json['manufacturer'] != null && json['manufacturer'].length > 0) {
          if( json['manufacturer'] is List ){
            json['manufacturer'].forEach((i){
              this.manufacturer.add(FHIRObjectFactory.buildFromJSON('Reference', i));
            });
          } else {
            // this handles the case when the list only has one object and does not return as a list
            var i = json['manufacturer'];
            this.manufacturer.add(FHIRObjectFactory.buildFromJSON('Reference', i));
          }          
        }
        this.batchIdentifier = List<MedicinalProductPackagedBatchIdentifier>();
        if (json['batchIdentifier'] != null && json['batchIdentifier'].length > 0) {
          if( json['batchIdentifier'] is List ){
            json['batchIdentifier'].forEach((i){
              this.batchIdentifier.add(FHIRObjectFactory.buildFromJSON('MedicinalProductPackagedBatchIdentifier', i));
            });
          } else {
            // this handles the case when the list only has one object and does not return as a list
            var i = json['batchIdentifier'];
            this.batchIdentifier.add(FHIRObjectFactory.buildFromJSON('MedicinalProductPackagedBatchIdentifier', i));
          }          
        }
        this.packageItem = List<MedicinalProductPackagedPackageItem>();
        if (json['packageItem'] != null && json['packageItem'].length > 0) {
          if( json['packageItem'] is List ){
            json['packageItem'].forEach((i){
              this.packageItem.add(FHIRObjectFactory.buildFromJSON('MedicinalProductPackagedPackageItem', i));
            });
          } else {
            // this handles the case when the list only has one object and does not return as a list
            var i = json['packageItem'];
            this.packageItem.add(FHIRObjectFactory.buildFromJSON('MedicinalProductPackagedPackageItem', i));
          }          
        }
    }
}
