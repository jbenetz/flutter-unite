import 'extension.dart';
import 'fhir_object_factory.dart';
import 'codeable_concept.dart';
import 'element.dart';
import 'explanation_of_benefit_financial.dart';
/// This resource provides: the claim details; adjudication details from the processing of a Claim; and optionally account balance information, for informing the subscriber of the benefits provided.
class ExplanationOfBenefitBenefitBalance {
    /// Unique id for the element within a resource (for internal references). This may be any string value that does not contain spaces.
    String id;
    /// May be used to represent additional information that is not part of the basic definition of the element. To make the use of extensions safe and manageable, there is a strict set of governance  applied to the definition and use of extensions. Though any implementer can define an extension, there is a set of requirements that SHALL be met as part of the definition of the extension.
    List<Extension> extension;
    /// May be used to represent additional information that is not part of the basic definition of the element and that modifies the understanding of the element in which it is contained and/or the understanding of the containing element's descendants. Usually modifier elements provide negation or qualification. To make the use of extensions safe and manageable, there is a strict set of governance applied to the definition and use of extensions. Though any implementer can define an extension, there is a set of requirements that SHALL be met as part of the definition of the extension. Applications processing a resource are required to check for modifier extensions.
    /// 
    /// Modifier extensions SHALL NOT change the meaning of any elements on Resource or DomainResource (including cannot change the meaning of modifierExtension itself).
    List<Extension> modifierExtension;
    /// Code to identify the general type of benefits under which products and services are provided.
    CodeableConcept category;
    /// True if the indicated class of service is excluded from the plan, missing or False indicates the product or service is included in the coverage.
    bool excluded;
    /// Extensions for excluded
    Element extExcluded;
    /// A short name or tag for the benefit.
    String name;
    /// Extensions for name
    Element extName;
    /// A richer description of the benefit or services covered.
    String description;
    /// Extensions for description
    Element extDescription;
    /// Is a flag to indicate whether the benefits refer to in-network providers or out-of-network providers.
    CodeableConcept network;
    /// Indicates if the benefits apply to an individual or to the family.
    CodeableConcept unit;
    /// The term or period of the values such as 'maximum lifetime benefit' or 'maximum annual visits'.
    CodeableConcept term;
    /// Benefits Used to date.
    List<ExplanationOfBenefitFinancial> financial;
 
    ExplanationOfBenefitBenefitBalance.fromJSON( Map json ){
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
        this.category = json['category'] == null ? null : FHIRObjectFactory.buildFromJSON('CodeableConcept', json['category']);
        this.excluded = json['excluded'];
        this.extExcluded = json['_excluded'] == null ? null : FHIRObjectFactory.buildFromJSON('Element', json['_excluded']);
        this.name = json['name'];
        this.extName = json['_name'] == null ? null : FHIRObjectFactory.buildFromJSON('Element', json['_name']);
        this.description = json['description'];
        this.extDescription = json['_description'] == null ? null : FHIRObjectFactory.buildFromJSON('Element', json['_description']);
        this.network = json['network'] == null ? null : FHIRObjectFactory.buildFromJSON('CodeableConcept', json['network']);
        this.unit = json['unit'] == null ? null : FHIRObjectFactory.buildFromJSON('CodeableConcept', json['unit']);
        this.term = json['term'] == null ? null : FHIRObjectFactory.buildFromJSON('CodeableConcept', json['term']);
        this.financial = List<ExplanationOfBenefitFinancial>();
        if (json['financial'] != null && json['financial'].length > 0) {
          if( json['financial'] is List ){
            json['financial'].forEach((i){
              this.financial.add(FHIRObjectFactory.buildFromJSON('ExplanationOfBenefitFinancial', i));
            });
          } else {
            // this handles the case when the list only has one object and does not return as a list
            var i = json['financial'];
            this.financial.add(FHIRObjectFactory.buildFromJSON('ExplanationOfBenefitFinancial', i));
          }          
        }
    }
}
