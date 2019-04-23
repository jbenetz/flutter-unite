import 'extension.dart';
import 'fhir_object_factory.dart';
import 'element.dart';
import 'codeable_concept.dart';
import 'reference.dart';
import 'data_requirement_code_filter.dart';
import 'data_requirement_date_filter.dart';
import 'data_requirement_sort.dart';
/// Describes a required data item for evaluation in terms of the type of data, and optional code or date-based filters of the data.
class DataRequirement {
    /// Unique id for the element within a resource (for internal references). This may be any string value that does not contain spaces.
    String id;
    /// May be used to represent additional information that is not part of the basic definition of the element. To make the use of extensions safe and manageable, there is a strict set of governance  applied to the definition and use of extensions. Though any implementer can define an extension, there is a set of requirements that SHALL be met as part of the definition of the extension.
    List<Extension> extension;
    /// The type of the required data, specified as the type name of a resource. For profiles, this value is set to the type of the base resource of the profile.
    String type;
    /// Extensions for type
    Element extType;
    /// The profile of the required data, specified as the uri of the profile definition.
    List<String> profile;
    /// The intended subjects of the data requirement. If this element is not provided, a Patient subject is assumed.
    CodeableConcept subjectCodeableConcept;
    /// The intended subjects of the data requirement. If this element is not provided, a Patient subject is assumed.
    Reference subjectReference;
    /// Indicates that specific elements of the type are referenced by the knowledge module and must be supported by the consumer in order to obtain an effective evaluation. This does not mean that a value is required for this element, only that the consuming system must understand the element and be able to provide values for it if they are available. 
    /// 
    /// The value of mustSupport SHALL be a FHIRPath resolveable on the type of the DataRequirement. The path SHALL consist only of identifiers, constant indexers, and .resolve() (see the [Simple FHIRPath Profile](fhirpath.html#simple) for full details).
    List<String> mustSupport;
    /// Extensions for mustSupport
    List<Element> extMustSupport;
    /// Code filters specify additional constraints on the data, specifying the value set of interest for a particular element of the data. Each code filter defines an additional constraint on the data, i.e. code filters are AND'ed, not OR'ed.
    List<DataRequirementCodeFilter> codeFilter;
    /// Date filters specify additional constraints on the data in terms of the applicable date range for specific elements. Each date filter specifies an additional constraint on the data, i.e. date filters are AND'ed, not OR'ed.
    List<DataRequirementDateFilter> dateFilter;
    /// Specifies a maximum number of results that are required (uses the _count search parameter).
    int limit;
    /// Extensions for limit
    Element extLimit;
    /// Specifies the order of the results to be returned.
    List<DataRequirementSort> sort;
 
    DataRequirement.fromJSON( Map json ){
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
        this.type = json['type'];
        this.extType = json['_type'] == null ? null : FHIRObjectFactory.buildFromJSON('Element', json['_type']);
        this.profile = List<String>();
        if (json['profile'] != null && json['profile'].length > 0) {
          if( json['profile'] is List ){
            json['profile'].forEach((i){
              this.profile.add(i);
            });
          } else {
            // this handles the case when the list only has one object and does not return as a list
            var i = json['profile'];
            this.profile.add(i);
          }          
        }
        this.subjectCodeableConcept = json['subjectCodeableConcept'] == null ? null : FHIRObjectFactory.buildFromJSON('CodeableConcept', json['subjectCodeableConcept']);
        this.subjectReference = json['subjectReference'] == null ? null : FHIRObjectFactory.buildFromJSON('Reference', json['subjectReference']);
        this.mustSupport = List<String>();
        if (json['mustSupport'] != null && json['mustSupport'].length > 0) {
          if( json['mustSupport'] is List ){
            json['mustSupport'].forEach((i){
              this.mustSupport.add(i);
            });
          } else {
            // this handles the case when the list only has one object and does not return as a list
            var i = json['mustSupport'];
            this.mustSupport.add(i);
          }          
        }
        this.extMustSupport = List<Element>();
        if (json['_mustSupport'] != null && json['_mustSupport'].length > 0) {
          if( json['_mustSupport'] is List ){
            json['_mustSupport'].forEach((i){
              this.extMustSupport.add(FHIRObjectFactory.buildFromJSON('Element', i));
            });
          } else {
            // this handles the case when the list only has one object and does not return as a list
            var i = json['_mustSupport'];
            this.extMustSupport.add(FHIRObjectFactory.buildFromJSON('Element', i));
          }          
        }
        this.codeFilter = List<DataRequirementCodeFilter>();
        if (json['codeFilter'] != null && json['codeFilter'].length > 0) {
          if( json['codeFilter'] is List ){
            json['codeFilter'].forEach((i){
              this.codeFilter.add(FHIRObjectFactory.buildFromJSON('DataRequirementCodeFilter', i));
            });
          } else {
            // this handles the case when the list only has one object and does not return as a list
            var i = json['codeFilter'];
            this.codeFilter.add(FHIRObjectFactory.buildFromJSON('DataRequirementCodeFilter', i));
          }          
        }
        this.dateFilter = List<DataRequirementDateFilter>();
        if (json['dateFilter'] != null && json['dateFilter'].length > 0) {
          if( json['dateFilter'] is List ){
            json['dateFilter'].forEach((i){
              this.dateFilter.add(FHIRObjectFactory.buildFromJSON('DataRequirementDateFilter', i));
            });
          } else {
            // this handles the case when the list only has one object and does not return as a list
            var i = json['dateFilter'];
            this.dateFilter.add(FHIRObjectFactory.buildFromJSON('DataRequirementDateFilter', i));
          }          
        }
        this.limit = json['limit'];
        this.extLimit = json['_limit'] == null ? null : FHIRObjectFactory.buildFromJSON('Element', json['_limit']);
        this.sort = List<DataRequirementSort>();
        if (json['sort'] != null && json['sort'].length > 0) {
          if( json['sort'] is List ){
            json['sort'].forEach((i){
              this.sort.add(FHIRObjectFactory.buildFromJSON('DataRequirementSort', i));
            });
          } else {
            // this handles the case when the list only has one object and does not return as a list
            var i = json['sort'];
            this.sort.add(FHIRObjectFactory.buildFromJSON('DataRequirementSort', i));
          }          
        }
    }
}
