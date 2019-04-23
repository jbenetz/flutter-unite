import 'meta.dart';
import 'fhir_object_factory.dart';
import 'element.dart';
import 'narrative.dart';
import 'extension.dart';
import 'identifier.dart';
import 'reference.dart';
import 'test_report_participant.dart';
import 'test_report_setup.dart';
import 'test_report_test.dart';
import 'test_report_teardown.dart';
/// A summary of information based on the results of executing a TestScript.
class TestReport {
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
    /// Identifier for the TestScript assigned for external purposes outside the context of FHIR.
    Identifier identifier;
    /// A free text natural language name identifying the executed TestScript.
    String name;
    /// Extensions for name
    Element extName;
    /// The current state of this test report.
    String status;
    /// Extensions for status
    Element extStatus;
    /// Ideally this is an absolute URL that is used to identify the version-specific TestScript that was executed, matching the `TestScript.url`.
    Reference testScript;
    /// The overall result from the execution of the TestScript.
    String result;
    /// Extensions for result
    Element extResult;
    /// The final score (percentage of tests passed) resulting from the execution of the TestScript.
    double score;
    /// Extensions for score
    Element extScore;
    /// Name of the tester producing this report (Organization or individual).
    String tester;
    /// Extensions for tester
    Element extTester;
    /// When the TestScript was executed and this TestReport was generated.
    DateTime issued;
    /// Extensions for issued
    Element extIssued;
    /// A participant in the test execution, either the execution engine, a client, or a server.
    List<TestReportParticipant> participant;
    /// The results of the series of required setup operations before the tests were executed.
    TestReportSetup setup;
    /// A test executed from the test script.
    List<TestReportTest> test;
    /// The results of the series of operations required to clean up after all the tests were executed (successfully or otherwise).
    TestReportTeardown teardown;
 
    TestReport.fromJSON( Map json ){
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
        this.identifier = json['identifier'] == null ? null : FHIRObjectFactory.buildFromJSON('Identifier', json['identifier']);
        this.name = json['name'];
        this.extName = json['_name'] == null ? null : FHIRObjectFactory.buildFromJSON('Element', json['_name']);
        this.status = json['status'];
        this.extStatus = json['_status'] == null ? null : FHIRObjectFactory.buildFromJSON('Element', json['_status']);
        this.testScript = json['testScript'] == null ? null : FHIRObjectFactory.buildFromJSON('Reference', json['testScript']);
        this.result = json['result'];
        this.extResult = json['_result'] == null ? null : FHIRObjectFactory.buildFromJSON('Element', json['_result']);
        if( json['score'] != null && json['score'] is int ) {
          this.score = json['score'].toDouble();
        } else {
          this.score = json['score'];
        }
    
        this.extScore = json['_score'] == null ? null : FHIRObjectFactory.buildFromJSON('Element', json['_score']);
        this.tester = json['tester'];
        this.extTester = json['_tester'] == null ? null : FHIRObjectFactory.buildFromJSON('Element', json['_tester']);
        if( json['issued'] != null ) { this.issued = DateTime.parse(json['issued']);}
        this.extIssued = json['_issued'] == null ? null : FHIRObjectFactory.buildFromJSON('Element', json['_issued']);
        this.participant = List<TestReportParticipant>();
        if (json['participant'] != null && json['participant'].length > 0) {
          if( json['participant'] is List ){
            json['participant'].forEach((i){
              this.participant.add(FHIRObjectFactory.buildFromJSON('TestReportParticipant', i));
            });
          } else {
            // this handles the case when the list only has one object and does not return as a list
            var i = json['participant'];
            this.participant.add(FHIRObjectFactory.buildFromJSON('TestReportParticipant', i));
          }          
        }
        this.setup = json['setup'] == null ? null : FHIRObjectFactory.buildFromJSON('TestReportSetup', json['setup']);
        this.test = List<TestReportTest>();
        if (json['test'] != null && json['test'].length > 0) {
          if( json['test'] is List ){
            json['test'].forEach((i){
              this.test.add(FHIRObjectFactory.buildFromJSON('TestReportTest', i));
            });
          } else {
            // this handles the case when the list only has one object and does not return as a list
            var i = json['test'];
            this.test.add(FHIRObjectFactory.buildFromJSON('TestReportTest', i));
          }          
        }
        this.teardown = json['teardown'] == null ? null : FHIRObjectFactory.buildFromJSON('TestReportTeardown', json['teardown']);
    }
}
