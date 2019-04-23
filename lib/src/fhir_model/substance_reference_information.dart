import 'meta.dart';
import 'fhir_object_factory.dart';
import 'element.dart';
import 'narrative.dart';
import 'extension.dart';
import 'substance_reference_information_gene.dart';
import 'substance_reference_information_gene_element.dart';
import 'substance_reference_information_classification.dart';
import 'substance_reference_information_target.dart';
/// Todo.
class SubstanceReferenceInformation {
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
    String comment;
    /// Extensions for comment
    Element extComment;
    /// Todo.
    List<SubstanceReferenceInformationGene> gene;
    /// Todo.
    List<SubstanceReferenceInformationGeneElement> geneElement;
    /// Todo.
    List<SubstanceReferenceInformationClassification> classification;
    /// Todo.
    List<SubstanceReferenceInformationTarget> target;
 
    SubstanceReferenceInformation.fromJSON( Map json ){
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
        this.comment = json['comment'];
        this.extComment = json['_comment'] == null ? null : FHIRObjectFactory.buildFromJSON('Element', json['_comment']);
        this.gene = List<SubstanceReferenceInformationGene>();
        if (json['gene'] != null && json['gene'].length > 0) {
          if( json['gene'] is List ){
            json['gene'].forEach((i){
              this.gene.add(FHIRObjectFactory.buildFromJSON('SubstanceReferenceInformationGene', i));
            });
          } else {
            // this handles the case when the list only has one object and does not return as a list
            var i = json['gene'];
            this.gene.add(FHIRObjectFactory.buildFromJSON('SubstanceReferenceInformationGene', i));
          }          
        }
        this.geneElement = List<SubstanceReferenceInformationGeneElement>();
        if (json['geneElement'] != null && json['geneElement'].length > 0) {
          if( json['geneElement'] is List ){
            json['geneElement'].forEach((i){
              this.geneElement.add(FHIRObjectFactory.buildFromJSON('SubstanceReferenceInformationGeneElement', i));
            });
          } else {
            // this handles the case when the list only has one object and does not return as a list
            var i = json['geneElement'];
            this.geneElement.add(FHIRObjectFactory.buildFromJSON('SubstanceReferenceInformationGeneElement', i));
          }          
        }
        this.classification = List<SubstanceReferenceInformationClassification>();
        if (json['classification'] != null && json['classification'].length > 0) {
          if( json['classification'] is List ){
            json['classification'].forEach((i){
              this.classification.add(FHIRObjectFactory.buildFromJSON('SubstanceReferenceInformationClassification', i));
            });
          } else {
            // this handles the case when the list only has one object and does not return as a list
            var i = json['classification'];
            this.classification.add(FHIRObjectFactory.buildFromJSON('SubstanceReferenceInformationClassification', i));
          }          
        }
        this.target = List<SubstanceReferenceInformationTarget>();
        if (json['target'] != null && json['target'].length > 0) {
          if( json['target'] is List ){
            json['target'].forEach((i){
              this.target.add(FHIRObjectFactory.buildFromJSON('SubstanceReferenceInformationTarget', i));
            });
          } else {
            // this handles the case when the list only has one object and does not return as a list
            var i = json['target'];
            this.target.add(FHIRObjectFactory.buildFromJSON('SubstanceReferenceInformationTarget', i));
          }          
        }
    }
}
