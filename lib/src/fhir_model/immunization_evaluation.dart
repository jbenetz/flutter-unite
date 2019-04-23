import 'meta.dart';
import 'fhir_object_factory.dart';
import 'element.dart';
import 'narrative.dart';
import 'extension.dart';
import 'identifier.dart';
import 'reference.dart';
import 'codeable_concept.dart';
/// Describes a comparison of an immunization event against published recommendations to determine if the administration is "valid" in relation to those  recommendations.
class ImmunizationEvaluation {
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
    /// A unique identifier assigned to this immunization evaluation record.
    List<Identifier> identifier;
    /// Indicates the current status of the evaluation of the vaccination administration event.
    String status;
    /// Extensions for status
    Element extStatus;
    /// The individual for whom the evaluation is being done.
    Reference patient;
    /// The date the evaluation of the vaccine administration event was performed.
    DateTime date;
    /// Extensions for date
    Element extDate;
    /// Indicates the authority who published the protocol (e.g. ACIP).
    Reference authority;
    /// The vaccine preventable disease the dose is being evaluated against.
    CodeableConcept targetDisease;
    /// The vaccine administration event being evaluated.
    Reference immunizationEvent;
    /// Indicates if the dose is valid or not valid with respect to the published recommendations.
    CodeableConcept doseStatus;
    /// Provides an explanation as to why the vaccine administration event is valid or not relative to the published recommendations.
    List<CodeableConcept> doseStatusReason;
    /// Additional information about the evaluation.
    String description;
    /// Extensions for description
    Element extDescription;
    /// One possible path to achieve presumed immunity against a disease - within the context of an authority.
    String series;
    /// Extensions for series
    Element extSeries;
    /// Extensions for doseNumberPositiveInt
    Element extDoseNumberPositiveInt;
    /// Extensions for doseNumberString
    Element extDoseNumberString;
    /// Extensions for seriesDosesPositiveInt
    Element extSeriesDosesPositiveInt;
    /// Extensions for seriesDosesString
    Element extSeriesDosesString;
 
    ImmunizationEvaluation.fromJSON( Map json ){
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
        this.status = json['status'];
        this.extStatus = json['_status'] == null ? null : FHIRObjectFactory.buildFromJSON('Element', json['_status']);
        this.patient = json['patient'] == null ? null : FHIRObjectFactory.buildFromJSON('Reference', json['patient']);
        if( json['date'] != null ) { this.date = DateTime.parse(json['date']);}
        this.extDate = json['_date'] == null ? null : FHIRObjectFactory.buildFromJSON('Element', json['_date']);
        this.authority = json['authority'] == null ? null : FHIRObjectFactory.buildFromJSON('Reference', json['authority']);
        this.targetDisease = json['targetDisease'] == null ? null : FHIRObjectFactory.buildFromJSON('CodeableConcept', json['targetDisease']);
        this.immunizationEvent = json['immunizationEvent'] == null ? null : FHIRObjectFactory.buildFromJSON('Reference', json['immunizationEvent']);
        this.doseStatus = json['doseStatus'] == null ? null : FHIRObjectFactory.buildFromJSON('CodeableConcept', json['doseStatus']);
        this.doseStatusReason = List<CodeableConcept>();
        if (json['doseStatusReason'] != null && json['doseStatusReason'].length > 0) {
          if( json['doseStatusReason'] is List ){
            json['doseStatusReason'].forEach((i){
              this.doseStatusReason.add(FHIRObjectFactory.buildFromJSON('CodeableConcept', i));
            });
          } else {
            // this handles the case when the list only has one object and does not return as a list
            var i = json['doseStatusReason'];
            this.doseStatusReason.add(FHIRObjectFactory.buildFromJSON('CodeableConcept', i));
          }          
        }
        this.description = json['description'];
        this.extDescription = json['_description'] == null ? null : FHIRObjectFactory.buildFromJSON('Element', json['_description']);
        this.series = json['series'];
        this.extSeries = json['_series'] == null ? null : FHIRObjectFactory.buildFromJSON('Element', json['_series']);
        this.extDoseNumberPositiveInt = json['_doseNumberPositiveInt'] == null ? null : FHIRObjectFactory.buildFromJSON('Element', json['_doseNumberPositiveInt']);
        this.extDoseNumberString = json['_doseNumberString'] == null ? null : FHIRObjectFactory.buildFromJSON('Element', json['_doseNumberString']);
        this.extSeriesDosesPositiveInt = json['_seriesDosesPositiveInt'] == null ? null : FHIRObjectFactory.buildFromJSON('Element', json['_seriesDosesPositiveInt']);
        this.extSeriesDosesString = json['_seriesDosesString'] == null ? null : FHIRObjectFactory.buildFromJSON('Element', json['_seriesDosesString']);
    }
}
