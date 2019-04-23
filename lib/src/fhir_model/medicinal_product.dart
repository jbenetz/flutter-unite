import 'meta.dart';
import 'fhir_object_factory.dart';
import 'element.dart';
import 'narrative.dart';
import 'extension.dart';
import 'identifier.dart';
import 'codeable_concept.dart';
import 'coding.dart';
import 'marketing_status.dart';
import 'reference.dart';
import 'medicinal_product_name.dart';
import 'medicinal_product_manufacturing_business_operation.dart';
import 'medicinal_product_special_designation.dart';
/// Detailed definition of a medicinal product, typically for uses other than direct patient care (e.g. regulatory use).
class MedicinalProduct {
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
    /// Business identifier for this product. Could be an MPID.
    List<Identifier> identifier;
    /// Regulatory type, e.g. Investigational or Authorized.
    CodeableConcept type;
    /// If this medicine applies to human or veterinary uses.
    Coding domain;
    /// The dose form for a single part product, or combined form of a multiple part product.
    CodeableConcept combinedPharmaceuticalDoseForm;
    /// The legal status of supply of the medicinal product as classified by the regulator.
    CodeableConcept legalStatusOfSupply;
    /// Whether the Medicinal Product is subject to additional monitoring for regulatory reasons.
    CodeableConcept additionalMonitoringIndicator;
    /// Whether the Medicinal Product is subject to special measures for regulatory reasons.
    List<String> specialMeasures;
    /// Extensions for specialMeasures
    List<Element> extSpecialMeasures;
    /// If authorised for use in children.
    CodeableConcept paediatricUseIndicator;
    /// Allows the product to be classified by various systems.
    List<CodeableConcept> productClassification;
    /// Marketing status of the medicinal product, in contrast to marketing authorizaton.
    List<MarketingStatus> marketingStatus;
    /// Pharmaceutical aspects of product.
    List<Reference> pharmaceuticalProduct;
    /// Package representation for the product.
    List<Reference> packagedMedicinalProduct;
    /// Supporting documentation, typically for regulatory submission.
    List<Reference> attachedDocument;
    /// A master file for to the medicinal product (e.g. Pharmacovigilance System Master File).
    List<Reference> masterFile;
    /// A product specific contact, person (in a role), or an organization.
    List<Reference> contact;
    /// Clinical trials or studies that this product is involved in.
    List<Reference> clinicalTrial;
    /// The product's name, including full name and possibly coded parts.
    List<MedicinalProductName> name;
    /// Reference to another product, e.g. for linking authorised to investigational product.
    List<Identifier> crossReference;
    /// An operation applied to the product, for manufacturing or adminsitrative purpose.
    List<MedicinalProductManufacturingBusinessOperation> manufacturingBusinessOperation;
    /// Indicates if the medicinal product has an orphan designation for the treatment of a rare disease.
    List<MedicinalProductSpecialDesignation> specialDesignation;
 
    MedicinalProduct.fromJSON( Map json ){
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
        this.type = json['type'] == null ? null : FHIRObjectFactory.buildFromJSON('CodeableConcept', json['type']);
        this.domain = json['domain'] == null ? null : FHIRObjectFactory.buildFromJSON('Coding', json['domain']);
        this.combinedPharmaceuticalDoseForm = json['combinedPharmaceuticalDoseForm'] == null ? null : FHIRObjectFactory.buildFromJSON('CodeableConcept', json['combinedPharmaceuticalDoseForm']);
        this.legalStatusOfSupply = json['legalStatusOfSupply'] == null ? null : FHIRObjectFactory.buildFromJSON('CodeableConcept', json['legalStatusOfSupply']);
        this.additionalMonitoringIndicator = json['additionalMonitoringIndicator'] == null ? null : FHIRObjectFactory.buildFromJSON('CodeableConcept', json['additionalMonitoringIndicator']);
        this.specialMeasures = List<String>();
        if (json['specialMeasures'] != null && json['specialMeasures'].length > 0) {
          if( json['specialMeasures'] is List ){
            json['specialMeasures'].forEach((i){
              this.specialMeasures.add(i);
            });
          } else {
            // this handles the case when the list only has one object and does not return as a list
            var i = json['specialMeasures'];
            this.specialMeasures.add(i);
          }          
        }
        this.extSpecialMeasures = List<Element>();
        if (json['_specialMeasures'] != null && json['_specialMeasures'].length > 0) {
          if( json['_specialMeasures'] is List ){
            json['_specialMeasures'].forEach((i){
              this.extSpecialMeasures.add(FHIRObjectFactory.buildFromJSON('Element', i));
            });
          } else {
            // this handles the case when the list only has one object and does not return as a list
            var i = json['_specialMeasures'];
            this.extSpecialMeasures.add(FHIRObjectFactory.buildFromJSON('Element', i));
          }          
        }
        this.paediatricUseIndicator = json['paediatricUseIndicator'] == null ? null : FHIRObjectFactory.buildFromJSON('CodeableConcept', json['paediatricUseIndicator']);
        this.productClassification = List<CodeableConcept>();
        if (json['productClassification'] != null && json['productClassification'].length > 0) {
          if( json['productClassification'] is List ){
            json['productClassification'].forEach((i){
              this.productClassification.add(FHIRObjectFactory.buildFromJSON('CodeableConcept', i));
            });
          } else {
            // this handles the case when the list only has one object and does not return as a list
            var i = json['productClassification'];
            this.productClassification.add(FHIRObjectFactory.buildFromJSON('CodeableConcept', i));
          }          
        }
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
        this.pharmaceuticalProduct = List<Reference>();
        if (json['pharmaceuticalProduct'] != null && json['pharmaceuticalProduct'].length > 0) {
          if( json['pharmaceuticalProduct'] is List ){
            json['pharmaceuticalProduct'].forEach((i){
              this.pharmaceuticalProduct.add(FHIRObjectFactory.buildFromJSON('Reference', i));
            });
          } else {
            // this handles the case when the list only has one object and does not return as a list
            var i = json['pharmaceuticalProduct'];
            this.pharmaceuticalProduct.add(FHIRObjectFactory.buildFromJSON('Reference', i));
          }          
        }
        this.packagedMedicinalProduct = List<Reference>();
        if (json['packagedMedicinalProduct'] != null && json['packagedMedicinalProduct'].length > 0) {
          if( json['packagedMedicinalProduct'] is List ){
            json['packagedMedicinalProduct'].forEach((i){
              this.packagedMedicinalProduct.add(FHIRObjectFactory.buildFromJSON('Reference', i));
            });
          } else {
            // this handles the case when the list only has one object and does not return as a list
            var i = json['packagedMedicinalProduct'];
            this.packagedMedicinalProduct.add(FHIRObjectFactory.buildFromJSON('Reference', i));
          }          
        }
        this.attachedDocument = List<Reference>();
        if (json['attachedDocument'] != null && json['attachedDocument'].length > 0) {
          if( json['attachedDocument'] is List ){
            json['attachedDocument'].forEach((i){
              this.attachedDocument.add(FHIRObjectFactory.buildFromJSON('Reference', i));
            });
          } else {
            // this handles the case when the list only has one object and does not return as a list
            var i = json['attachedDocument'];
            this.attachedDocument.add(FHIRObjectFactory.buildFromJSON('Reference', i));
          }          
        }
        this.masterFile = List<Reference>();
        if (json['masterFile'] != null && json['masterFile'].length > 0) {
          if( json['masterFile'] is List ){
            json['masterFile'].forEach((i){
              this.masterFile.add(FHIRObjectFactory.buildFromJSON('Reference', i));
            });
          } else {
            // this handles the case when the list only has one object and does not return as a list
            var i = json['masterFile'];
            this.masterFile.add(FHIRObjectFactory.buildFromJSON('Reference', i));
          }          
        }
        this.contact = List<Reference>();
        if (json['contact'] != null && json['contact'].length > 0) {
          if( json['contact'] is List ){
            json['contact'].forEach((i){
              this.contact.add(FHIRObjectFactory.buildFromJSON('Reference', i));
            });
          } else {
            // this handles the case when the list only has one object and does not return as a list
            var i = json['contact'];
            this.contact.add(FHIRObjectFactory.buildFromJSON('Reference', i));
          }          
        }
        this.clinicalTrial = List<Reference>();
        if (json['clinicalTrial'] != null && json['clinicalTrial'].length > 0) {
          if( json['clinicalTrial'] is List ){
            json['clinicalTrial'].forEach((i){
              this.clinicalTrial.add(FHIRObjectFactory.buildFromJSON('Reference', i));
            });
          } else {
            // this handles the case when the list only has one object and does not return as a list
            var i = json['clinicalTrial'];
            this.clinicalTrial.add(FHIRObjectFactory.buildFromJSON('Reference', i));
          }          
        }
        this.name = List<MedicinalProductName>();
        if (json['name'] != null && json['name'].length > 0) {
          if( json['name'] is List ){
            json['name'].forEach((i){
              this.name.add(FHIRObjectFactory.buildFromJSON('MedicinalProductName', i));
            });
          } else {
            // this handles the case when the list only has one object and does not return as a list
            var i = json['name'];
            this.name.add(FHIRObjectFactory.buildFromJSON('MedicinalProductName', i));
          }          
        }
        this.crossReference = List<Identifier>();
        if (json['crossReference'] != null && json['crossReference'].length > 0) {
          if( json['crossReference'] is List ){
            json['crossReference'].forEach((i){
              this.crossReference.add(FHIRObjectFactory.buildFromJSON('Identifier', i));
            });
          } else {
            // this handles the case when the list only has one object and does not return as a list
            var i = json['crossReference'];
            this.crossReference.add(FHIRObjectFactory.buildFromJSON('Identifier', i));
          }          
        }
        this.manufacturingBusinessOperation = List<MedicinalProductManufacturingBusinessOperation>();
        if (json['manufacturingBusinessOperation'] != null && json['manufacturingBusinessOperation'].length > 0) {
          if( json['manufacturingBusinessOperation'] is List ){
            json['manufacturingBusinessOperation'].forEach((i){
              this.manufacturingBusinessOperation.add(FHIRObjectFactory.buildFromJSON('MedicinalProductManufacturingBusinessOperation', i));
            });
          } else {
            // this handles the case when the list only has one object and does not return as a list
            var i = json['manufacturingBusinessOperation'];
            this.manufacturingBusinessOperation.add(FHIRObjectFactory.buildFromJSON('MedicinalProductManufacturingBusinessOperation', i));
          }          
        }
        this.specialDesignation = List<MedicinalProductSpecialDesignation>();
        if (json['specialDesignation'] != null && json['specialDesignation'].length > 0) {
          if( json['specialDesignation'] is List ){
            json['specialDesignation'].forEach((i){
              this.specialDesignation.add(FHIRObjectFactory.buildFromJSON('MedicinalProductSpecialDesignation', i));
            });
          } else {
            // this handles the case when the list only has one object and does not return as a list
            var i = json['specialDesignation'];
            this.specialDesignation.add(FHIRObjectFactory.buildFromJSON('MedicinalProductSpecialDesignation', i));
          }          
        }
    }
}
