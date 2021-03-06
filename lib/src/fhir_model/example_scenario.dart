import 'meta.dart';
import 'fhir_object_factory.dart';
import 'element.dart';
import 'narrative.dart';
import 'extension.dart';
import 'identifier.dart';
import 'contact_detail.dart';
import 'usage_context.dart';
import 'codeable_concept.dart';
import 'example_scenario_actor.dart';
import 'example_scenario_instance.dart';
import 'example_scenario_process.dart';
/// Example of workflow instance.
class ExampleScenario {
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
    /// An absolute URI that is used to identify this example scenario when it is referenced in a specification, model, design or an instance; also called its canonical identifier. This SHOULD be globally unique and SHOULD be a literal address at which at which an authoritative instance of this example scenario is (or will be) published. This URL can be the target of a canonical reference. It SHALL remain the same when the example scenario is stored on different servers.
    String url;
    /// Extensions for url
    Element extUrl;
    /// A formal identifier that is used to identify this example scenario when it is represented in other formats, or referenced in a specification, model, design or an instance.
    List<Identifier> identifier;
    /// The identifier that is used to identify this version of the example scenario when it is referenced in a specification, model, design or instance. This is an arbitrary value managed by the example scenario author and is not expected to be globally unique. For example, it might be a timestamp (e.g. yyyymmdd) if a managed version is not available. There is also no expectation that versions can be placed in a lexicographical sequence.
    String version;
    /// Extensions for version
    Element extVersion;
    /// A natural language name identifying the example scenario. This name should be usable as an identifier for the module by machine processing applications such as code generation.
    String name;
    /// Extensions for name
    Element extName;
    /// The status of this example scenario. Enables tracking the life-cycle of the content.
    String status;
    /// Extensions for status
    Element extStatus;
    /// A Boolean value to indicate that this example scenario is authored for testing purposes (or education/evaluation/marketing) and is not intended to be used for genuine usage.
    bool experimental;
    /// Extensions for experimental
    Element extExperimental;
    /// The date  (and optionally time) when the example scenario was published. The date must change when the business version changes and it must change if the status code changes. In addition, it should change when the substantive content of the example scenario changes. (e.g. the 'content logical definition').
    DateTime date;
    /// Extensions for date
    Element extDate;
    /// The name of the organization or individual that published the example scenario.
    String publisher;
    /// Extensions for publisher
    Element extPublisher;
    /// Contact details to assist a user in finding and communicating with the publisher.
    List<ContactDetail> contact;
    /// The content was developed with a focus and intent of supporting the contexts that are listed. These contexts may be general categories (gender, age, ...) or may be references to specific programs (insurance plans, studies, ...) and may be used to assist with indexing and searching for appropriate example scenario instances.
    List<UsageContext> useContext;
    /// A legal or geographic region in which the example scenario is intended to be used.
    List<CodeableConcept> jurisdiction;
    /// A copyright statement relating to the example scenario and/or its contents. Copyright statements are generally legal restrictions on the use and publishing of the example scenario.
    String copyright;
    /// Extensions for copyright
    Element extCopyright;
    /// What the example scenario resource is created for. This should not be used to show the business purpose of the scenario itself, but the purpose of documenting a scenario.
    String purpose;
    /// Extensions for purpose
    Element extPurpose;
    /// Actor participating in the resource.
    List<ExampleScenarioActor> actor;
    /// Each resource and each version that is present in the workflow.
    List<ExampleScenarioInstance> instance;
    /// Each major process - a group of operations.
    List<ExampleScenarioProcess> process;
    /// Another nested workflow.
    List<String> workflow;
 
    ExampleScenario.fromJSON( Map json ){
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
        this.version = json['version'];
        this.extVersion = json['_version'] == null ? null : FHIRObjectFactory.buildFromJSON('Element', json['_version']);
        this.name = json['name'];
        this.extName = json['_name'] == null ? null : FHIRObjectFactory.buildFromJSON('Element', json['_name']);
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
        this.copyright = json['copyright'];
        this.extCopyright = json['_copyright'] == null ? null : FHIRObjectFactory.buildFromJSON('Element', json['_copyright']);
        this.purpose = json['purpose'];
        this.extPurpose = json['_purpose'] == null ? null : FHIRObjectFactory.buildFromJSON('Element', json['_purpose']);
        this.actor = List<ExampleScenarioActor>();
        if (json['actor'] != null && json['actor'].length > 0) {
          if( json['actor'] is List ){
            json['actor'].forEach((i){
              this.actor.add(FHIRObjectFactory.buildFromJSON('ExampleScenarioActor', i));
            });
          } else {
            // this handles the case when the list only has one object and does not return as a list
            var i = json['actor'];
            this.actor.add(FHIRObjectFactory.buildFromJSON('ExampleScenarioActor', i));
          }          
        }
        this.instance = List<ExampleScenarioInstance>();
        if (json['instance'] != null && json['instance'].length > 0) {
          if( json['instance'] is List ){
            json['instance'].forEach((i){
              this.instance.add(FHIRObjectFactory.buildFromJSON('ExampleScenarioInstance', i));
            });
          } else {
            // this handles the case when the list only has one object and does not return as a list
            var i = json['instance'];
            this.instance.add(FHIRObjectFactory.buildFromJSON('ExampleScenarioInstance', i));
          }          
        }
        this.process = List<ExampleScenarioProcess>();
        if (json['process'] != null && json['process'].length > 0) {
          if( json['process'] is List ){
            json['process'].forEach((i){
              this.process.add(FHIRObjectFactory.buildFromJSON('ExampleScenarioProcess', i));
            });
          } else {
            // this handles the case when the list only has one object and does not return as a list
            var i = json['process'];
            this.process.add(FHIRObjectFactory.buildFromJSON('ExampleScenarioProcess', i));
          }          
        }
        this.workflow = List<String>();
        if (json['workflow'] != null && json['workflow'].length > 0) {
          if( json['workflow'] is List ){
            json['workflow'].forEach((i){
              this.workflow.add(i);
            });
          } else {
            // this handles the case when the list only has one object and does not return as a list
            var i = json['workflow'];
            this.workflow.add(i);
          }          
        }
    }
}
