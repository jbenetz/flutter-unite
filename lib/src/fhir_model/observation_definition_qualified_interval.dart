import 'extension.dart';
import 'fhir_object_factory.dart';
import 'element.dart';
import 'range.dart';
import 'codeable_concept.dart';
/// Set of definitional characteristics for a kind of observation or measurement produced or consumed by an orderable health care service.
class ObservationDefinitionQualifiedInterval {
    /// Unique id for the element within a resource (for internal references). This may be any string value that does not contain spaces.
    String id;
    /// May be used to represent additional information that is not part of the basic definition of the element. To make the use of extensions safe and manageable, there is a strict set of governance  applied to the definition and use of extensions. Though any implementer can define an extension, there is a set of requirements that SHALL be met as part of the definition of the extension.
    List<Extension> extension;
    /// May be used to represent additional information that is not part of the basic definition of the element and that modifies the understanding of the element in which it is contained and/or the understanding of the containing element's descendants. Usually modifier elements provide negation or qualification. To make the use of extensions safe and manageable, there is a strict set of governance applied to the definition and use of extensions. Though any implementer can define an extension, there is a set of requirements that SHALL be met as part of the definition of the extension. Applications processing a resource are required to check for modifier extensions.
    /// 
    /// Modifier extensions SHALL NOT change the meaning of any elements on Resource or DomainResource (including cannot change the meaning of modifierExtension itself).
    List<Extension> modifierExtension;
    /// The category of interval of values for continuous or ordinal observations conforming to this ObservationDefinition.
    String category;
    /// Extensions for category
    Element extCategory;
    /// The low and high values determining the interval. There may be only one of the two.
    Range range;
    /// Codes to indicate the health context the range applies to. For example, the normal or therapeutic range.
    CodeableConcept context;
    /// Codes to indicate the target population this reference range applies to.
    List<CodeableConcept> appliesTo;
    /// Sex of the population the range applies to.
    String gender;
    /// Extensions for gender
    Element extGender;
    /// The age at which this reference range is applicable. This is a neonatal age (e.g. number of weeks at term) if the meaning says so.
    Range age;
    /// The gestational age to which this reference range is applicable, in the context of pregnancy.
    Range gestationalAge;
    /// Text based condition for which the reference range is valid.
    String condition;
    /// Extensions for condition
    Element extCondition;
 
    ObservationDefinitionQualifiedInterval.fromJSON( Map json ){
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
        this.category = json['category'];
        this.extCategory = json['_category'] == null ? null : FHIRObjectFactory.buildFromJSON('Element', json['_category']);
        this.range = json['range'] == null ? null : FHIRObjectFactory.buildFromJSON('Range', json['range']);
        this.context = json['context'] == null ? null : FHIRObjectFactory.buildFromJSON('CodeableConcept', json['context']);
        this.appliesTo = List<CodeableConcept>();
        if (json['appliesTo'] != null && json['appliesTo'].length > 0) {
          if( json['appliesTo'] is List ){
            json['appliesTo'].forEach((i){
              this.appliesTo.add(FHIRObjectFactory.buildFromJSON('CodeableConcept', i));
            });
          } else {
            // this handles the case when the list only has one object and does not return as a list
            var i = json['appliesTo'];
            this.appliesTo.add(FHIRObjectFactory.buildFromJSON('CodeableConcept', i));
          }          
        }
        this.gender = json['gender'];
        this.extGender = json['_gender'] == null ? null : FHIRObjectFactory.buildFromJSON('Element', json['_gender']);
        this.age = json['age'] == null ? null : FHIRObjectFactory.buildFromJSON('Range', json['age']);
        this.gestationalAge = json['gestationalAge'] == null ? null : FHIRObjectFactory.buildFromJSON('Range', json['gestationalAge']);
        this.condition = json['condition'];
        this.extCondition = json['_condition'] == null ? null : FHIRObjectFactory.buildFromJSON('Element', json['_condition']);
    }
}
