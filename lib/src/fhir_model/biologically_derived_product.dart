import 'meta.dart';
import 'fhir_object_factory.dart';
import 'element.dart';
import 'narrative.dart';
import 'extension.dart';
import 'identifier.dart';
import 'codeable_concept.dart';
import 'reference.dart';
import 'biologically_derived_product_collection.dart';
import 'biologically_derived_product_processing.dart';
import 'biologically_derived_product_manipulation.dart';
import 'biologically_derived_product_storage.dart';
/// A material substance originating from a biological entity intended to be transplanted or infused
    /// into another (possibly the same) biological entity.
class BiologicallyDerivedProduct {
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
    /// This records identifiers associated with this biologically derived product instance that are defined by business processes and/or used to refer to it when a direct URL reference to the resource itself is not appropriate (e.g. in CDA documents, or in written / printed documentation).
    List<Identifier> identifier;
    /// Broad category of this product.
    String productCategory;
    /// Extensions for productCategory
    Element extProductCategory;
    /// A code that identifies the kind of this biologically derived product (SNOMED Ctcode).
    CodeableConcept productCode;
    /// Whether the product is currently available.
    String status;
    /// Extensions for status
    Element extStatus;
    /// Procedure request to obtain this biologically derived product.
    List<Reference> request;
    /// Number of discrete units within this product.
    int quantity;
    /// Extensions for quantity
    Element extQuantity;
    /// Parent product (if any).
    List<Reference> parent;
    /// How this product was collected.
    BiologicallyDerivedProductCollection collection;
    /// Any processing of the product during collection that does not change the fundamental nature of the product. For example adding anti-coagulants during the collection of Peripheral Blood Stem Cells.
    List<BiologicallyDerivedProductProcessing> processing;
    /// Any manipulation of product post-collection that is intended to alter the product.  For example a buffy-coat enrichment or CD8 reduction of Peripheral Blood Stem Cells to make it more suitable for infusion.
    BiologicallyDerivedProductManipulation manipulation;
    /// Product storage.
    List<BiologicallyDerivedProductStorage> storage;
 
    BiologicallyDerivedProduct.fromJSON( Map json ){
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
        this.productCategory = json['productCategory'];
        this.extProductCategory = json['_productCategory'] == null ? null : FHIRObjectFactory.buildFromJSON('Element', json['_productCategory']);
        this.productCode = json['productCode'] == null ? null : FHIRObjectFactory.buildFromJSON('CodeableConcept', json['productCode']);
        this.status = json['status'];
        this.extStatus = json['_status'] == null ? null : FHIRObjectFactory.buildFromJSON('Element', json['_status']);
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
        this.quantity = json['quantity'];
        this.extQuantity = json['_quantity'] == null ? null : FHIRObjectFactory.buildFromJSON('Element', json['_quantity']);
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
        this.collection = json['collection'] == null ? null : FHIRObjectFactory.buildFromJSON('BiologicallyDerivedProductCollection', json['collection']);
        this.processing = List<BiologicallyDerivedProductProcessing>();
        if (json['processing'] != null && json['processing'].length > 0) {
          if( json['processing'] is List ){
            json['processing'].forEach((i){
              this.processing.add(FHIRObjectFactory.buildFromJSON('BiologicallyDerivedProductProcessing', i));
            });
          } else {
            // this handles the case when the list only has one object and does not return as a list
            var i = json['processing'];
            this.processing.add(FHIRObjectFactory.buildFromJSON('BiologicallyDerivedProductProcessing', i));
          }          
        }
        this.manipulation = json['manipulation'] == null ? null : FHIRObjectFactory.buildFromJSON('BiologicallyDerivedProductManipulation', json['manipulation']);
        this.storage = List<BiologicallyDerivedProductStorage>();
        if (json['storage'] != null && json['storage'].length > 0) {
          if( json['storage'] is List ){
            json['storage'].forEach((i){
              this.storage.add(FHIRObjectFactory.buildFromJSON('BiologicallyDerivedProductStorage', i));
            });
          } else {
            // this handles the case when the list only has one object and does not return as a list
            var i = json['storage'];
            this.storage.add(FHIRObjectFactory.buildFromJSON('BiologicallyDerivedProductStorage', i));
          }          
        }
    }
}
