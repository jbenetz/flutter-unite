import 'extension.dart';
import 'fhir_object_factory.dart';
import 'element.dart';
/// A structured set of tests against a FHIR server or client implementation to determine compliance against the FHIR specification.
class TestScriptCapability {
    /// Unique id for the element within a resource (for internal references). This may be any string value that does not contain spaces.
    String id;
    /// May be used to represent additional information that is not part of the basic definition of the element. To make the use of extensions safe and manageable, there is a strict set of governance  applied to the definition and use of extensions. Though any implementer can define an extension, there is a set of requirements that SHALL be met as part of the definition of the extension.
    List<Extension> extension;
    /// May be used to represent additional information that is not part of the basic definition of the element and that modifies the understanding of the element in which it is contained and/or the understanding of the containing element's descendants. Usually modifier elements provide negation or qualification. To make the use of extensions safe and manageable, there is a strict set of governance applied to the definition and use of extensions. Though any implementer can define an extension, there is a set of requirements that SHALL be met as part of the definition of the extension. Applications processing a resource are required to check for modifier extensions.
    /// 
    /// Modifier extensions SHALL NOT change the meaning of any elements on Resource or DomainResource (including cannot change the meaning of modifierExtension itself).
    List<Extension> modifierExtension;
    /// Whether or not the test execution will require the given capabilities of the server in order for this test script to execute.
    bool required;
    /// Extensions for required
    Element extRequired;
    /// Whether or not the test execution will validate the given capabilities of the server in order for this test script to execute.
    bool validated;
    /// Extensions for validated
    Element extValidated;
    /// Description of the capabilities that this test script is requiring the server to support.
    String description;
    /// Extensions for description
    Element extDescription;
    /// Which origin server these requirements apply to.
    List<int> origin;
    /// Extensions for origin
    List<Element> extOrigin;
    /// Which server these requirements apply to.
    int destination;
    /// Extensions for destination
    Element extDestination;
    /// Links to the FHIR specification that describes this interaction and the resources involved in more detail.
    List<String> link;
    /// Extensions for link
    List<Element> extLink;
    /// Minimum capabilities required of server for test script to execute successfully.   If server does not meet at a minimum the referenced capability statement, then all tests in this script are skipped.
    String capabilities;
 
    TestScriptCapability.fromJSON( Map json ){
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
        this.required = json['required'];
        this.extRequired = json['_required'] == null ? null : FHIRObjectFactory.buildFromJSON('Element', json['_required']);
        this.validated = json['validated'];
        this.extValidated = json['_validated'] == null ? null : FHIRObjectFactory.buildFromJSON('Element', json['_validated']);
        this.description = json['description'];
        this.extDescription = json['_description'] == null ? null : FHIRObjectFactory.buildFromJSON('Element', json['_description']);
        this.origin = List<int>();
        if (json['origin'] != null && json['origin'].length > 0) {
          if( json['origin'] is List ){
            json['origin'].forEach((i){
              this.origin.add(i);
            });
          } else {
            // this handles the case when the list only has one object and does not return as a list
            var i = json['origin'];
            this.origin.add(i);
          }          
        }
        this.extOrigin = List<Element>();
        if (json['_origin'] != null && json['_origin'].length > 0) {
          if( json['_origin'] is List ){
            json['_origin'].forEach((i){
              this.extOrigin.add(FHIRObjectFactory.buildFromJSON('Element', i));
            });
          } else {
            // this handles the case when the list only has one object and does not return as a list
            var i = json['_origin'];
            this.extOrigin.add(FHIRObjectFactory.buildFromJSON('Element', i));
          }          
        }
        this.destination = json['destination'];
        this.extDestination = json['_destination'] == null ? null : FHIRObjectFactory.buildFromJSON('Element', json['_destination']);
        this.link = List<String>();
        if (json['link'] != null && json['link'].length > 0) {
          if( json['link'] is List ){
            json['link'].forEach((i){
              this.link.add(i);
            });
          } else {
            // this handles the case when the list only has one object and does not return as a list
            var i = json['link'];
            this.link.add(i);
          }          
        }
        this.extLink = List<Element>();
        if (json['_link'] != null && json['_link'].length > 0) {
          if( json['_link'] is List ){
            json['_link'].forEach((i){
              this.extLink.add(FHIRObjectFactory.buildFromJSON('Element', i));
            });
          } else {
            // this handles the case when the list only has one object and does not return as a list
            var i = json['_link'];
            this.extLink.add(FHIRObjectFactory.buildFromJSON('Element', i));
          }          
        }
        this.capabilities = json['capabilities'];
    }
}
