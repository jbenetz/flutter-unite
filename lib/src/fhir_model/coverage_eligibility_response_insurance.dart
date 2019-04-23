import 'extension.dart';
import 'fhir_object_factory.dart';
import 'reference.dart';
import 'element.dart';
import 'period.dart';
import 'coverage_eligibility_response_item.dart';
/// This resource provides eligibility and plan details from the processing of an CoverageEligibilityRequest resource.
class CoverageEligibilityResponseInsurance {
    /// Unique id for the element within a resource (for internal references). This may be any string value that does not contain spaces.
    String id;
    /// May be used to represent additional information that is not part of the basic definition of the element. To make the use of extensions safe and manageable, there is a strict set of governance  applied to the definition and use of extensions. Though any implementer can define an extension, there is a set of requirements that SHALL be met as part of the definition of the extension.
    List<Extension> extension;
    /// May be used to represent additional information that is not part of the basic definition of the element and that modifies the understanding of the element in which it is contained and/or the understanding of the containing element's descendants. Usually modifier elements provide negation or qualification. To make the use of extensions safe and manageable, there is a strict set of governance applied to the definition and use of extensions. Though any implementer can define an extension, there is a set of requirements that SHALL be met as part of the definition of the extension. Applications processing a resource are required to check for modifier extensions.
    /// 
    /// Modifier extensions SHALL NOT change the meaning of any elements on Resource or DomainResource (including cannot change the meaning of modifierExtension itself).
    List<Extension> modifierExtension;
    /// Reference to the insurance card level information contained in the Coverage resource. The coverage issuing insurer will use these details to locate the patient's actual coverage within the insurer's information system.
    Reference coverage;
    /// Flag indicating if the coverage provided is inforce currently if no service date(s) specified or for the whole duration of the service dates.
    bool inforce;
    /// Extensions for inforce
    Element extInforce;
    /// The term of the benefits documented in this response.
    Period benefitPeriod;
    /// Benefits and optionally current balances, and authorization details by category or service.
    List<CoverageEligibilityResponseItem> item;
 
    CoverageEligibilityResponseInsurance.fromJSON( Map json ){
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
        this.coverage = json['coverage'] == null ? null : FHIRObjectFactory.buildFromJSON('Reference', json['coverage']);
        this.inforce = json['inforce'];
        this.extInforce = json['_inforce'] == null ? null : FHIRObjectFactory.buildFromJSON('Element', json['_inforce']);
        this.benefitPeriod = json['benefitPeriod'] == null ? null : FHIRObjectFactory.buildFromJSON('Period', json['benefitPeriod']);
        this.item = List<CoverageEligibilityResponseItem>();
        if (json['item'] != null && json['item'].length > 0) {
          if( json['item'] is List ){
            json['item'].forEach((i){
              this.item.add(FHIRObjectFactory.buildFromJSON('CoverageEligibilityResponseItem', i));
            });
          } else {
            // this handles the case when the list only has one object and does not return as a list
            var i = json['item'];
            this.item.add(FHIRObjectFactory.buildFromJSON('CoverageEligibilityResponseItem', i));
          }          
        }
    }
}
