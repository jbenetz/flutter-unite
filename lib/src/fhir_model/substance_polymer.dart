import 'meta.dart';
import 'fhir_object_factory.dart';
import 'element.dart';
import 'narrative.dart';
import 'extension.dart';
import 'codeable_concept.dart';
import 'substance_polymer_monomer_set.dart';
import 'substance_polymer_repeat.dart';
/// Todo.
class SubstancePolymer {
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
    /// Todo.
    CodeableConcept class1;
    /// Todo.
    CodeableConcept geometry;
    /// Todo.
    List<CodeableConcept> copolymerConnectivity;
    /// Todo.
    List<String> modification;
    /// Extensions for modification
    List<Element> extModification;
    /// Todo.
    List<SubstancePolymerMonomerSet> monomerSet;
    /// Todo.
    List<SubstancePolymerRepeat> repeat;
 
    SubstancePolymer.fromJSON( Map json ){
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
        this.class1 = json['class'] == null ? null : FHIRObjectFactory.buildFromJSON('CodeableConcept', json['class']);
        this.geometry = json['geometry'] == null ? null : FHIRObjectFactory.buildFromJSON('CodeableConcept', json['geometry']);
        this.copolymerConnectivity = List<CodeableConcept>();
        if (json['copolymerConnectivity'] != null && json['copolymerConnectivity'].length > 0) {
          if( json['copolymerConnectivity'] is List ){
            json['copolymerConnectivity'].forEach((i){
              this.copolymerConnectivity.add(FHIRObjectFactory.buildFromJSON('CodeableConcept', i));
            });
          } else {
            // this handles the case when the list only has one object and does not return as a list
            var i = json['copolymerConnectivity'];
            this.copolymerConnectivity.add(FHIRObjectFactory.buildFromJSON('CodeableConcept', i));
          }          
        }
        this.modification = List<String>();
        if (json['modification'] != null && json['modification'].length > 0) {
          if( json['modification'] is List ){
            json['modification'].forEach((i){
              this.modification.add(i);
            });
          } else {
            // this handles the case when the list only has one object and does not return as a list
            var i = json['modification'];
            this.modification.add(i);
          }          
        }
        this.extModification = List<Element>();
        if (json['_modification'] != null && json['_modification'].length > 0) {
          if( json['_modification'] is List ){
            json['_modification'].forEach((i){
              this.extModification.add(FHIRObjectFactory.buildFromJSON('Element', i));
            });
          } else {
            // this handles the case when the list only has one object and does not return as a list
            var i = json['_modification'];
            this.extModification.add(FHIRObjectFactory.buildFromJSON('Element', i));
          }          
        }
        this.monomerSet = List<SubstancePolymerMonomerSet>();
        if (json['monomerSet'] != null && json['monomerSet'].length > 0) {
          if( json['monomerSet'] is List ){
            json['monomerSet'].forEach((i){
              this.monomerSet.add(FHIRObjectFactory.buildFromJSON('SubstancePolymerMonomerSet', i));
            });
          } else {
            // this handles the case when the list only has one object and does not return as a list
            var i = json['monomerSet'];
            this.monomerSet.add(FHIRObjectFactory.buildFromJSON('SubstancePolymerMonomerSet', i));
          }          
        }
        this.repeat = List<SubstancePolymerRepeat>();
        if (json['repeat'] != null && json['repeat'].length > 0) {
          if( json['repeat'] is List ){
            json['repeat'].forEach((i){
              this.repeat.add(FHIRObjectFactory.buildFromJSON('SubstancePolymerRepeat', i));
            });
          } else {
            // this handles the case when the list only has one object and does not return as a list
            var i = json['repeat'];
            this.repeat.add(FHIRObjectFactory.buildFromJSON('SubstancePolymerRepeat', i));
          }          
        }
    }
}
