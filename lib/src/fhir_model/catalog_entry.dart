import 'meta.dart';
import 'fhir_object_factory.dart';
import 'element.dart';
import 'narrative.dart';
import 'extension.dart';
import 'identifier.dart';
import 'codeable_concept.dart';
import 'reference.dart';
import 'period.dart';
import 'catalog_entry_related_entry.dart';
/// Catalog entries are wrappers that contextualize items included in a catalog.
class CatalogEntry {
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
    /// Used in supporting different identifiers for the same product, e.g. manufacturer code and retailer code.
    List<Identifier> identifier;
    /// The type of item - medication, device, service, protocol or other.
    CodeableConcept type;
    /// Whether the entry represents an orderable item.
    bool orderable;
    /// Extensions for orderable
    Element extOrderable;
    /// The item in a catalog or definition.
    Reference referencedItem;
    /// Used in supporting related concepts, e.g. NDC to RxNorm.
    List<Identifier> additionalIdentifier;
    /// Classes of devices, or ATC for medication.
    List<CodeableConcept> classification;
    /// Used to support catalog exchange even for unsupported products, e.g. getting list of medications even if not prescribable.
    String status;
    /// Extensions for status
    Element extStatus;
    /// The time period in which this catalog entry is expected to be active.
    Period validityPeriod;
    /// The date until which this catalog entry is expected to be active.
    DateTime validTo;
    /// Extensions for validTo
    Element extValidTo;
    /// Typically date of issue is different from the beginning of the validity. This can be used to see when an item was last updated.
    DateTime lastUpdated;
    /// Extensions for lastUpdated
    Element extLastUpdated;
    /// Used for examplefor Out of Formulary, or any specifics.
    List<CodeableConcept> additionalCharacteristic;
    /// User for example for ATC classification, or.
    List<CodeableConcept> additionalClassification;
    /// Used for example, to point to a substance, or to a device used to administer a medication.
    List<CatalogEntryRelatedEntry> relatedEntry;
 
    CatalogEntry.fromJSON( Map json ){
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
        this.orderable = json['orderable'];
        this.extOrderable = json['_orderable'] == null ? null : FHIRObjectFactory.buildFromJSON('Element', json['_orderable']);
        this.referencedItem = json['referencedItem'] == null ? null : FHIRObjectFactory.buildFromJSON('Reference', json['referencedItem']);
        this.additionalIdentifier = List<Identifier>();
        if (json['additionalIdentifier'] != null && json['additionalIdentifier'].length > 0) {
          if( json['additionalIdentifier'] is List ){
            json['additionalIdentifier'].forEach((i){
              this.additionalIdentifier.add(FHIRObjectFactory.buildFromJSON('Identifier', i));
            });
          } else {
            // this handles the case when the list only has one object and does not return as a list
            var i = json['additionalIdentifier'];
            this.additionalIdentifier.add(FHIRObjectFactory.buildFromJSON('Identifier', i));
          }          
        }
        this.classification = List<CodeableConcept>();
        if (json['classification'] != null && json['classification'].length > 0) {
          if( json['classification'] is List ){
            json['classification'].forEach((i){
              this.classification.add(FHIRObjectFactory.buildFromJSON('CodeableConcept', i));
            });
          } else {
            // this handles the case when the list only has one object and does not return as a list
            var i = json['classification'];
            this.classification.add(FHIRObjectFactory.buildFromJSON('CodeableConcept', i));
          }          
        }
        this.status = json['status'];
        this.extStatus = json['_status'] == null ? null : FHIRObjectFactory.buildFromJSON('Element', json['_status']);
        this.validityPeriod = json['validityPeriod'] == null ? null : FHIRObjectFactory.buildFromJSON('Period', json['validityPeriod']);
        if( json['validTo'] != null ) { this.validTo = DateTime.parse(json['validTo']);}
        this.extValidTo = json['_validTo'] == null ? null : FHIRObjectFactory.buildFromJSON('Element', json['_validTo']);
        if( json['lastUpdated'] != null ) { this.lastUpdated = DateTime.parse(json['lastUpdated']);}
        this.extLastUpdated = json['_lastUpdated'] == null ? null : FHIRObjectFactory.buildFromJSON('Element', json['_lastUpdated']);
        this.additionalCharacteristic = List<CodeableConcept>();
        if (json['additionalCharacteristic'] != null && json['additionalCharacteristic'].length > 0) {
          if( json['additionalCharacteristic'] is List ){
            json['additionalCharacteristic'].forEach((i){
              this.additionalCharacteristic.add(FHIRObjectFactory.buildFromJSON('CodeableConcept', i));
            });
          } else {
            // this handles the case when the list only has one object and does not return as a list
            var i = json['additionalCharacteristic'];
            this.additionalCharacteristic.add(FHIRObjectFactory.buildFromJSON('CodeableConcept', i));
          }          
        }
        this.additionalClassification = List<CodeableConcept>();
        if (json['additionalClassification'] != null && json['additionalClassification'].length > 0) {
          if( json['additionalClassification'] is List ){
            json['additionalClassification'].forEach((i){
              this.additionalClassification.add(FHIRObjectFactory.buildFromJSON('CodeableConcept', i));
            });
          } else {
            // this handles the case when the list only has one object and does not return as a list
            var i = json['additionalClassification'];
            this.additionalClassification.add(FHIRObjectFactory.buildFromJSON('CodeableConcept', i));
          }          
        }
        this.relatedEntry = List<CatalogEntryRelatedEntry>();
        if (json['relatedEntry'] != null && json['relatedEntry'].length > 0) {
          if( json['relatedEntry'] is List ){
            json['relatedEntry'].forEach((i){
              this.relatedEntry.add(FHIRObjectFactory.buildFromJSON('CatalogEntryRelatedEntry', i));
            });
          } else {
            // this handles the case when the list only has one object and does not return as a list
            var i = json['relatedEntry'];
            this.relatedEntry.add(FHIRObjectFactory.buildFromJSON('CatalogEntryRelatedEntry', i));
          }          
        }
    }
}
