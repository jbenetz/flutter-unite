import 'meta.dart';
import 'fhir_object_factory.dart';
import 'element.dart';
import 'narrative.dart';
import 'extension.dart';
import 'identifier.dart';
import 'reference.dart';
import 'codeable_concept.dart';
import 'period.dart';
import 'medicinal_product_authorization_jurisdictional_authorization.dart';
import 'medicinal_product_authorization_procedure.dart';
/// The regulatory authorization of a medicinal product.
class MedicinalProductAuthorization {
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
    /// Business identifier for the marketing authorization, as assigned by a regulator.
    List<Identifier> identifier;
    /// The medicinal product that is being authorized.
    Reference subject;
    /// The country in which the marketing authorization has been granted.
    List<CodeableConcept> country;
    /// Jurisdiction within a country.
    List<CodeableConcept> jurisdiction;
    /// The status of the marketing authorization.
    CodeableConcept status;
    /// The date at which the given status has become applicable.
    DateTime statusDate;
    /// Extensions for statusDate
    Element extStatusDate;
    /// The date when a suspended the marketing or the marketing authorization of the product is anticipated to be restored.
    DateTime restoreDate;
    /// Extensions for restoreDate
    Element extRestoreDate;
    /// The beginning of the time period in which the marketing authorization is in the specific status shall be specified A complete date consisting of day, month and year shall be specified using the ISO 8601 date format.
    Period validityPeriod;
    /// A period of time after authorization before generic product applicatiosn can be submitted.
    Period dataExclusivityPeriod;
    /// The date when the first authorization was granted by a Medicines Regulatory Agency.
    DateTime dateOfFirstAuthorization;
    /// Extensions for dateOfFirstAuthorization
    Element extDateOfFirstAuthorization;
    /// Date of first marketing authorization for a company's new medicinal product in any country in the World.
    DateTime internationalBirthDate;
    /// Extensions for internationalBirthDate
    Element extInternationalBirthDate;
    /// The legal framework against which this authorization is granted.
    CodeableConcept legalBasis;
    /// Authorization in areas within a country.
    List<MedicinalProductAuthorizationJurisdictionalAuthorization> jurisdictionalAuthorization;
    /// Marketing Authorization Holder.
    Reference holder;
    /// Medicines Regulatory Agency.
    Reference regulator;
    /// The regulatory procedure for granting or amending a marketing authorization.
    MedicinalProductAuthorizationProcedure procedure;
 
    MedicinalProductAuthorization.fromJSON( Map json ){
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
        this.subject = json['subject'] == null ? null : FHIRObjectFactory.buildFromJSON('Reference', json['subject']);
        this.country = List<CodeableConcept>();
        if (json['country'] != null && json['country'].length > 0) {
          if( json['country'] is List ){
            json['country'].forEach((i){
              this.country.add(FHIRObjectFactory.buildFromJSON('CodeableConcept', i));
            });
          } else {
            // this handles the case when the list only has one object and does not return as a list
            var i = json['country'];
            this.country.add(FHIRObjectFactory.buildFromJSON('CodeableConcept', i));
          }          
        }
        this.jurisdiction = List<CodeableConcept>();
        if (json['jurisdiction'] != null && json['jurisdiction'].length > 0) {
          if( json['jurisdiction'] is List ){
            json['jurisdiction'].forEach((i){
              this.jurisdiction.add(FHIRObjectFactory.buildFromJSON('CodeableConcept', i));
            });
          } else {
            // this handles the case when the list only has one object and does not return as a list
            var i = json['jurisdiction'];
            this.jurisdiction.add(FHIRObjectFactory.buildFromJSON('CodeableConcept', i));
          }          
        }
        this.status = json['status'] == null ? null : FHIRObjectFactory.buildFromJSON('CodeableConcept', json['status']);
        if( json['statusDate'] != null ) { this.statusDate = DateTime.parse(json['statusDate']);}
        this.extStatusDate = json['_statusDate'] == null ? null : FHIRObjectFactory.buildFromJSON('Element', json['_statusDate']);
        if( json['restoreDate'] != null ) { this.restoreDate = DateTime.parse(json['restoreDate']);}
        this.extRestoreDate = json['_restoreDate'] == null ? null : FHIRObjectFactory.buildFromJSON('Element', json['_restoreDate']);
        this.validityPeriod = json['validityPeriod'] == null ? null : FHIRObjectFactory.buildFromJSON('Period', json['validityPeriod']);
        this.dataExclusivityPeriod = json['dataExclusivityPeriod'] == null ? null : FHIRObjectFactory.buildFromJSON('Period', json['dataExclusivityPeriod']);
        if( json['dateOfFirstAuthorization'] != null ) { this.dateOfFirstAuthorization = DateTime.parse(json['dateOfFirstAuthorization']);}
        this.extDateOfFirstAuthorization = json['_dateOfFirstAuthorization'] == null ? null : FHIRObjectFactory.buildFromJSON('Element', json['_dateOfFirstAuthorization']);
        if( json['internationalBirthDate'] != null ) { this.internationalBirthDate = DateTime.parse(json['internationalBirthDate']);}
        this.extInternationalBirthDate = json['_internationalBirthDate'] == null ? null : FHIRObjectFactory.buildFromJSON('Element', json['_internationalBirthDate']);
        this.legalBasis = json['legalBasis'] == null ? null : FHIRObjectFactory.buildFromJSON('CodeableConcept', json['legalBasis']);
        this.jurisdictionalAuthorization = List<MedicinalProductAuthorizationJurisdictionalAuthorization>();
        if (json['jurisdictionalAuthorization'] != null && json['jurisdictionalAuthorization'].length > 0) {
          if( json['jurisdictionalAuthorization'] is List ){
            json['jurisdictionalAuthorization'].forEach((i){
              this.jurisdictionalAuthorization.add(FHIRObjectFactory.buildFromJSON('MedicinalProductAuthorizationJurisdictionalAuthorization', i));
            });
          } else {
            // this handles the case when the list only has one object and does not return as a list
            var i = json['jurisdictionalAuthorization'];
            this.jurisdictionalAuthorization.add(FHIRObjectFactory.buildFromJSON('MedicinalProductAuthorizationJurisdictionalAuthorization', i));
          }          
        }
        this.holder = json['holder'] == null ? null : FHIRObjectFactory.buildFromJSON('Reference', json['holder']);
        this.regulator = json['regulator'] == null ? null : FHIRObjectFactory.buildFromJSON('Reference', json['regulator']);
        this.procedure = json['procedure'] == null ? null : FHIRObjectFactory.buildFromJSON('MedicinalProductAuthorizationProcedure', json['procedure']);
    }
}
