import 'extension.dart';
import 'fhir_object_factory.dart';
import 'element.dart';
/// A structured set of tests against a FHIR server or client implementation to determine compliance against the FHIR specification.
class TestScriptAssert {
    /// Unique id for the element within a resource (for internal references). This may be any string value that does not contain spaces.
    String id;
    /// May be used to represent additional information that is not part of the basic definition of the element. To make the use of extensions safe and manageable, there is a strict set of governance  applied to the definition and use of extensions. Though any implementer can define an extension, there is a set of requirements that SHALL be met as part of the definition of the extension.
    List<Extension> extension;
    /// May be used to represent additional information that is not part of the basic definition of the element and that modifies the understanding of the element in which it is contained and/or the understanding of the containing element's descendants. Usually modifier elements provide negation or qualification. To make the use of extensions safe and manageable, there is a strict set of governance applied to the definition and use of extensions. Though any implementer can define an extension, there is a set of requirements that SHALL be met as part of the definition of the extension. Applications processing a resource are required to check for modifier extensions.
    /// 
    /// Modifier extensions SHALL NOT change the meaning of any elements on Resource or DomainResource (including cannot change the meaning of modifierExtension itself).
    List<Extension> modifierExtension;
    /// The label would be used for tracking/logging purposes by test engines.
    String label;
    /// Extensions for label
    Element extLabel;
    /// The description would be used by test engines for tracking and reporting purposes.
    String description;
    /// Extensions for description
    Element extDescription;
    /// The direction to use for the assertion.
    String direction;
    /// Extensions for direction
    Element extDirection;
    /// Id of the source fixture used as the contents to be evaluated by either the "source/expression" or "sourceId/path" definition.
    String compareToSourceId;
    /// Extensions for compareToSourceId
    Element extCompareToSourceId;
    /// The FHIRPath expression to evaluate against the source fixture. When compareToSourceId is defined, either compareToSourceExpression or compareToSourcePath must be defined, but not both.
    String compareToSourceExpression;
    /// Extensions for compareToSourceExpression
    Element extCompareToSourceExpression;
    /// XPath or JSONPath expression to evaluate against the source fixture. When compareToSourceId is defined, either compareToSourceExpression or compareToSourcePath must be defined, but not both.
    String compareToSourcePath;
    /// Extensions for compareToSourcePath
    Element extCompareToSourcePath;
    /// The mime-type contents to compare against the request or response message 'Content-Type' header.
    String contentType;
    /// Extensions for contentType
    Element extContentType;
    /// The FHIRPath expression to be evaluated against the request or response message contents - HTTP headers and payload.
    String expression;
    /// Extensions for expression
    Element extExpression;
    /// The HTTP header field name e.g. 'Location'.
    String headerField;
    /// Extensions for headerField
    Element extHeaderField;
    /// The ID of a fixture.  Asserts that the response contains at a minimum the fixture specified by minimumId.
    String minimumId;
    /// Extensions for minimumId
    Element extMinimumId;
    /// Whether or not the test execution performs validation on the bundle navigation links.
    bool navigationLinks;
    /// Extensions for navigationLinks
    Element extNavigationLinks;
    /// The operator type defines the conditional behavior of the assert. If not defined, the default is equals.
    String operator;
    /// Extensions for operator
    Element extOperator;
    /// The XPath or JSONPath expression to be evaluated against the fixture representing the response received from server.
    String path;
    /// Extensions for path
    Element extPath;
    /// The request method or HTTP operation code to compare against that used by the client system under test.
    String requestMethod;
    /// Extensions for requestMethod
    Element extRequestMethod;
    /// The value to use in a comparison against the request URL path string.
    String requestURL;
    /// Extensions for requestURL
    Element extRequestURL;
    /// The type of the resource.  See http://build.fhir.org/resourcelist.html.
    String resource;
    /// Extensions for resource
    Element extResource;
    /// okay | created | noContent | notModified | bad | forbidden | notFound | methodNotAllowed | conflict | gone | preconditionFailed | unprocessable.
    String response;
    /// Extensions for response
    Element extResponse;
    /// The value of the HTTP response code to be tested.
    String responseCode;
    /// Extensions for responseCode
    Element extResponseCode;
    /// Fixture to evaluate the XPath/JSONPath expression or the headerField  against.
    String sourceId;
    /// Extensions for sourceId
    Element extSourceId;
    /// The ID of the Profile to validate against.
    String validateProfileId;
    /// Extensions for validateProfileId
    Element extValidateProfileId;
    /// The value to compare to.
    String value;
    /// Extensions for value
    Element extValue;
    /// Whether or not the test execution will produce a warning only on error for this assert.
    bool warningOnly;
    /// Extensions for warningOnly
    Element extWarningOnly;
 
    TestScriptAssert.fromJSON( Map json ){
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
        this.label = json['label'];
        this.extLabel = json['_label'] == null ? null : FHIRObjectFactory.buildFromJSON('Element', json['_label']);
        this.description = json['description'];
        this.extDescription = json['_description'] == null ? null : FHIRObjectFactory.buildFromJSON('Element', json['_description']);
        this.direction = json['direction'];
        this.extDirection = json['_direction'] == null ? null : FHIRObjectFactory.buildFromJSON('Element', json['_direction']);
        this.compareToSourceId = json['compareToSourceId'];
        this.extCompareToSourceId = json['_compareToSourceId'] == null ? null : FHIRObjectFactory.buildFromJSON('Element', json['_compareToSourceId']);
        this.compareToSourceExpression = json['compareToSourceExpression'];
        this.extCompareToSourceExpression = json['_compareToSourceExpression'] == null ? null : FHIRObjectFactory.buildFromJSON('Element', json['_compareToSourceExpression']);
        this.compareToSourcePath = json['compareToSourcePath'];
        this.extCompareToSourcePath = json['_compareToSourcePath'] == null ? null : FHIRObjectFactory.buildFromJSON('Element', json['_compareToSourcePath']);
        this.contentType = json['contentType'];
        this.extContentType = json['_contentType'] == null ? null : FHIRObjectFactory.buildFromJSON('Element', json['_contentType']);
        this.expression = json['expression'];
        this.extExpression = json['_expression'] == null ? null : FHIRObjectFactory.buildFromJSON('Element', json['_expression']);
        this.headerField = json['headerField'];
        this.extHeaderField = json['_headerField'] == null ? null : FHIRObjectFactory.buildFromJSON('Element', json['_headerField']);
        this.minimumId = json['minimumId'];
        this.extMinimumId = json['_minimumId'] == null ? null : FHIRObjectFactory.buildFromJSON('Element', json['_minimumId']);
        this.navigationLinks = json['navigationLinks'];
        this.extNavigationLinks = json['_navigationLinks'] == null ? null : FHIRObjectFactory.buildFromJSON('Element', json['_navigationLinks']);
        this.operator = json['operator'];
        this.extOperator = json['_operator'] == null ? null : FHIRObjectFactory.buildFromJSON('Element', json['_operator']);
        this.path = json['path'];
        this.extPath = json['_path'] == null ? null : FHIRObjectFactory.buildFromJSON('Element', json['_path']);
        this.requestMethod = json['requestMethod'];
        this.extRequestMethod = json['_requestMethod'] == null ? null : FHIRObjectFactory.buildFromJSON('Element', json['_requestMethod']);
        this.requestURL = json['requestURL'];
        this.extRequestURL = json['_requestURL'] == null ? null : FHIRObjectFactory.buildFromJSON('Element', json['_requestURL']);
        this.resource = json['resource'];
        this.extResource = json['_resource'] == null ? null : FHIRObjectFactory.buildFromJSON('Element', json['_resource']);
        this.response = json['response'];
        this.extResponse = json['_response'] == null ? null : FHIRObjectFactory.buildFromJSON('Element', json['_response']);
        this.responseCode = json['responseCode'];
        this.extResponseCode = json['_responseCode'] == null ? null : FHIRObjectFactory.buildFromJSON('Element', json['_responseCode']);
        this.sourceId = json['sourceId'];
        this.extSourceId = json['_sourceId'] == null ? null : FHIRObjectFactory.buildFromJSON('Element', json['_sourceId']);
        this.validateProfileId = json['validateProfileId'];
        this.extValidateProfileId = json['_validateProfileId'] == null ? null : FHIRObjectFactory.buildFromJSON('Element', json['_validateProfileId']);
        this.value = json['value'];
        this.extValue = json['_value'] == null ? null : FHIRObjectFactory.buildFromJSON('Element', json['_value']);
        this.warningOnly = json['warningOnly'];
        this.extWarningOnly = json['_warningOnly'] == null ? null : FHIRObjectFactory.buildFromJSON('Element', json['_warningOnly']);
    }
}
