import 'meta.dart';
import 'fhir_object_factory.dart';
import 'element.dart';
import 'narrative.dart';
import 'extension.dart';
import 'contact_detail.dart';
import 'usage_context.dart';
import 'codeable_concept.dart';
import 'search_parameter_component.dart';
/// A search parameter that defines a named search item that can be used to search/filter on a resource.
class SearchParameter {
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
    /// An absolute URI that is used to identify this search parameter when it is referenced in a specification, model, design or an instance; also called its canonical identifier. This SHOULD be globally unique and SHOULD be a literal address at which at which an authoritative instance of this search parameter is (or will be) published. This URL can be the target of a canonical reference. It SHALL remain the same when the search parameter is stored on different servers.
    String url;
    /// Extensions for url
    Element extUrl;
    /// The identifier that is used to identify this version of the search parameter when it is referenced in a specification, model, design or instance. This is an arbitrary value managed by the search parameter author and is not expected to be globally unique. For example, it might be a timestamp (e.g. yyyymmdd) if a managed version is not available. There is also no expectation that versions can be placed in a lexicographical sequence.
    String version;
    /// Extensions for version
    Element extVersion;
    /// A natural language name identifying the search parameter. This name should be usable as an identifier for the module by machine processing applications such as code generation.
    String name;
    /// Extensions for name
    Element extName;
    /// Where this search parameter is originally defined. If a derivedFrom is provided, then the details in the search parameter must be consistent with the definition from which it is defined. i.e. the parameter should have the same meaning, and (usually) the functionality should be a proper subset of the underlying search parameter.
    String derivedFrom;
    /// The status of this search parameter. Enables tracking the life-cycle of the content.
    String status;
    /// Extensions for status
    Element extStatus;
    /// A Boolean value to indicate that this search parameter is authored for testing purposes (or education/evaluation/marketing) and is not intended to be used for genuine usage.
    bool experimental;
    /// Extensions for experimental
    Element extExperimental;
    /// The date  (and optionally time) when the search parameter was published. The date must change when the business version changes and it must change if the status code changes. In addition, it should change when the substantive content of the search parameter changes.
    DateTime date;
    /// Extensions for date
    Element extDate;
    /// The name of the organization or individual that published the search parameter.
    String publisher;
    /// Extensions for publisher
    Element extPublisher;
    /// Contact details to assist a user in finding and communicating with the publisher.
    List<ContactDetail> contact;
    /// And how it used.
    String description;
    /// Extensions for description
    Element extDescription;
    /// The content was developed with a focus and intent of supporting the contexts that are listed. These contexts may be general categories (gender, age, ...) or may be references to specific programs (insurance plans, studies, ...) and may be used to assist with indexing and searching for appropriate search parameter instances.
    List<UsageContext> useContext;
    /// A legal or geographic region in which the search parameter is intended to be used.
    List<CodeableConcept> jurisdiction;
    /// Explanation of why this search parameter is needed and why it has been designed as it has.
    String purpose;
    /// Extensions for purpose
    Element extPurpose;
    /// The code used in the URL or the parameter name in a parameters resource for this search parameter.
    String code;
    /// Extensions for code
    Element extCode;
    /// The base resource type(s) that this search parameter can be used against.
    List<String> base;
    /// Extensions for base
    List<Element> extBase;
    /// The type of value that a search parameter may contain, and how the content is interpreted.
    String type;
    /// Extensions for type
    Element extType;
    /// A FHIRPath expression that returns a set of elements for the search parameter.
    String expression;
    /// Extensions for expression
    Element extExpression;
    /// An XPath expression that returns a set of elements for the search parameter.
    String xpath;
    /// Extensions for xpath
    Element extXpath;
    /// How the search parameter relates to the set of elements returned by evaluating the xpath query.
    String xpathUsage;
    /// Extensions for xpathUsage
    Element extXpathUsage;
    /// Types of resource (if a resource is referenced).
    List<String> target;
    /// Extensions for target
    List<Element> extTarget;
    /// Whether multiple values are allowed for each time the parameter exists. Values are separated by commas, and the parameter matches if any of the values match.
    bool multipleOr;
    /// Extensions for multipleOr
    Element extMultipleOr;
    /// Whether multiple parameters are allowed - e.g. more than one parameter with the same name. The search matches if all the parameters match.
    bool multipleAnd;
    /// Extensions for multipleAnd
    Element extMultipleAnd;
    /// Extensions for comparator
    List<Element> extComparator;
    /// Extensions for modifier
    List<Element> extModifier;
    /// Contains the names of any search parameters which may be chained to the containing search parameter. Chained parameters may be added to search parameters of type reference and specify that resources will only be returned if they contain a reference to a resource which matches the chained parameter value. Values for this field should be drawn from SearchParameter.code for a parameter on the target resource type.
    List<String> chain;
    /// Extensions for chain
    List<Element> extChain;
    /// Used to define the parts of a composite search parameter.
    List<SearchParameterComponent> component;
 
    SearchParameter.fromJSON( Map json ){
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
        this.url = json['url'];
        this.extUrl = json['_url'] == null ? null : FHIRObjectFactory.buildFromJSON('Element', json['_url']);
        this.version = json['version'];
        this.extVersion = json['_version'] == null ? null : FHIRObjectFactory.buildFromJSON('Element', json['_version']);
        this.name = json['name'];
        this.extName = json['_name'] == null ? null : FHIRObjectFactory.buildFromJSON('Element', json['_name']);
        this.derivedFrom = json['derivedFrom'];
        this.status = json['status'];
        this.extStatus = json['_status'] == null ? null : FHIRObjectFactory.buildFromJSON('Element', json['_status']);
        this.experimental = json['experimental'];
        this.extExperimental = json['_experimental'] == null ? null : FHIRObjectFactory.buildFromJSON('Element', json['_experimental']);
        if( json['date'] != null ) { this.date = DateTime.parse(json['date']);}
        this.extDate = json['_date'] == null ? null : FHIRObjectFactory.buildFromJSON('Element', json['_date']);
        this.publisher = json['publisher'];
        this.extPublisher = json['_publisher'] == null ? null : FHIRObjectFactory.buildFromJSON('Element', json['_publisher']);
        this.contact = List<ContactDetail>();
        if (json['contact'] != null && json['contact'].length > 0) {
          if( json['contact'] is List ){
            json['contact'].forEach((i){
              this.contact.add(FHIRObjectFactory.buildFromJSON('ContactDetail', i));
            });
          } else {
            // this handles the case when the list only has one object and does not return as a list
            var i = json['contact'];
            this.contact.add(FHIRObjectFactory.buildFromJSON('ContactDetail', i));
          }          
        }
        this.description = json['description'];
        this.extDescription = json['_description'] == null ? null : FHIRObjectFactory.buildFromJSON('Element', json['_description']);
        this.useContext = List<UsageContext>();
        if (json['useContext'] != null && json['useContext'].length > 0) {
          if( json['useContext'] is List ){
            json['useContext'].forEach((i){
              this.useContext.add(FHIRObjectFactory.buildFromJSON('UsageContext', i));
            });
          } else {
            // this handles the case when the list only has one object and does not return as a list
            var i = json['useContext'];
            this.useContext.add(FHIRObjectFactory.buildFromJSON('UsageContext', i));
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
        this.purpose = json['purpose'];
        this.extPurpose = json['_purpose'] == null ? null : FHIRObjectFactory.buildFromJSON('Element', json['_purpose']);
        this.code = json['code'];
        this.extCode = json['_code'] == null ? null : FHIRObjectFactory.buildFromJSON('Element', json['_code']);
        this.base = List<String>();
        if (json['base'] != null && json['base'].length > 0) {
          if( json['base'] is List ){
            json['base'].forEach((i){
              this.base.add(i);
            });
          } else {
            // this handles the case when the list only has one object and does not return as a list
            var i = json['base'];
            this.base.add(i);
          }          
        }
        this.extBase = List<Element>();
        if (json['_base'] != null && json['_base'].length > 0) {
          if( json['_base'] is List ){
            json['_base'].forEach((i){
              this.extBase.add(FHIRObjectFactory.buildFromJSON('Element', i));
            });
          } else {
            // this handles the case when the list only has one object and does not return as a list
            var i = json['_base'];
            this.extBase.add(FHIRObjectFactory.buildFromJSON('Element', i));
          }          
        }
        this.type = json['type'];
        this.extType = json['_type'] == null ? null : FHIRObjectFactory.buildFromJSON('Element', json['_type']);
        this.expression = json['expression'];
        this.extExpression = json['_expression'] == null ? null : FHIRObjectFactory.buildFromJSON('Element', json['_expression']);
        this.xpath = json['xpath'];
        this.extXpath = json['_xpath'] == null ? null : FHIRObjectFactory.buildFromJSON('Element', json['_xpath']);
        this.xpathUsage = json['xpathUsage'];
        this.extXpathUsage = json['_xpathUsage'] == null ? null : FHIRObjectFactory.buildFromJSON('Element', json['_xpathUsage']);
        this.target = List<String>();
        if (json['target'] != null && json['target'].length > 0) {
          if( json['target'] is List ){
            json['target'].forEach((i){
              this.target.add(i);
            });
          } else {
            // this handles the case when the list only has one object and does not return as a list
            var i = json['target'];
            this.target.add(i);
          }          
        }
        this.extTarget = List<Element>();
        if (json['_target'] != null && json['_target'].length > 0) {
          if( json['_target'] is List ){
            json['_target'].forEach((i){
              this.extTarget.add(FHIRObjectFactory.buildFromJSON('Element', i));
            });
          } else {
            // this handles the case when the list only has one object and does not return as a list
            var i = json['_target'];
            this.extTarget.add(FHIRObjectFactory.buildFromJSON('Element', i));
          }          
        }
        this.multipleOr = json['multipleOr'];
        this.extMultipleOr = json['_multipleOr'] == null ? null : FHIRObjectFactory.buildFromJSON('Element', json['_multipleOr']);
        this.multipleAnd = json['multipleAnd'];
        this.extMultipleAnd = json['_multipleAnd'] == null ? null : FHIRObjectFactory.buildFromJSON('Element', json['_multipleAnd']);
        this.extComparator = List<Element>();
        if (json['_comparator'] != null && json['_comparator'].length > 0) {
          if( json['_comparator'] is List ){
            json['_comparator'].forEach((i){
              this.extComparator.add(FHIRObjectFactory.buildFromJSON('Element', i));
            });
          } else {
            // this handles the case when the list only has one object and does not return as a list
            var i = json['_comparator'];
            this.extComparator.add(FHIRObjectFactory.buildFromJSON('Element', i));
          }          
        }
        this.extModifier = List<Element>();
        if (json['_modifier'] != null && json['_modifier'].length > 0) {
          if( json['_modifier'] is List ){
            json['_modifier'].forEach((i){
              this.extModifier.add(FHIRObjectFactory.buildFromJSON('Element', i));
            });
          } else {
            // this handles the case when the list only has one object and does not return as a list
            var i = json['_modifier'];
            this.extModifier.add(FHIRObjectFactory.buildFromJSON('Element', i));
          }          
        }
        this.chain = List<String>();
        if (json['chain'] != null && json['chain'].length > 0) {
          if( json['chain'] is List ){
            json['chain'].forEach((i){
              this.chain.add(i);
            });
          } else {
            // this handles the case when the list only has one object and does not return as a list
            var i = json['chain'];
            this.chain.add(i);
          }          
        }
        this.extChain = List<Element>();
        if (json['_chain'] != null && json['_chain'].length > 0) {
          if( json['_chain'] is List ){
            json['_chain'].forEach((i){
              this.extChain.add(FHIRObjectFactory.buildFromJSON('Element', i));
            });
          } else {
            // this handles the case when the list only has one object and does not return as a list
            var i = json['_chain'];
            this.extChain.add(FHIRObjectFactory.buildFromJSON('Element', i));
          }          
        }
        this.component = List<SearchParameterComponent>();
        if (json['component'] != null && json['component'].length > 0) {
          if( json['component'] is List ){
            json['component'].forEach((i){
              this.component.add(FHIRObjectFactory.buildFromJSON('SearchParameterComponent', i));
            });
          } else {
            // this handles the case when the list only has one object and does not return as a list
            var i = json['component'];
            this.component.add(FHIRObjectFactory.buildFromJSON('SearchParameterComponent', i));
          }          
        }
    }
}
