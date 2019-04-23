import 'extension.dart';
import 'fhir_object_factory.dart';
import 'element.dart';
import 'address.dart';
import 'age.dart';
import 'annotation.dart';
import 'attachment.dart';
import 'codeable_concept.dart';
import 'coding.dart';
import 'contact_point.dart';
import 'count.dart';
import 'distance.dart';
import 'duration.dart';
import 'human_name.dart';
import 'identifier.dart';
import 'money.dart';
import 'period.dart';
import 'quantity.dart';
import 'range.dart';
import 'ratio.dart';
import 'reference.dart';
import 'sampled_data.dart';
import 'signature.dart';
import 'timing.dart';
import 'contact_detail.dart';
import 'contributor.dart';
import 'data_requirement.dart';
import 'expression.dart';
import 'parameter_definition.dart';
import 'related_artifact.dart';
import 'trigger_definition.dart';
import 'usage_context.dart';
import 'dosage.dart';
/// A Map of relationships between 2 structures that can be used to transform data.
class StructureMapSource {
    /// Unique id for the element within a resource (for internal references). This may be any string value that does not contain spaces.
    String id;
    /// May be used to represent additional information that is not part of the basic definition of the element. To make the use of extensions safe and manageable, there is a strict set of governance  applied to the definition and use of extensions. Though any implementer can define an extension, there is a set of requirements that SHALL be met as part of the definition of the extension.
    List<Extension> extension;
    /// May be used to represent additional information that is not part of the basic definition of the element and that modifies the understanding of the element in which it is contained and/or the understanding of the containing element's descendants. Usually modifier elements provide negation or qualification. To make the use of extensions safe and manageable, there is a strict set of governance applied to the definition and use of extensions. Though any implementer can define an extension, there is a set of requirements that SHALL be met as part of the definition of the extension. Applications processing a resource are required to check for modifier extensions.
    /// 
    /// Modifier extensions SHALL NOT change the meaning of any elements on Resource or DomainResource (including cannot change the meaning of modifierExtension itself).
    List<Extension> modifierExtension;
    /// Type or variable this rule applies to.
    String context;
    /// Extensions for context
    Element extContext;
    /// Specified minimum cardinality for the element. This is optional; if present, it acts an implicit check on the input content.
    int min;
    /// Extensions for min
    Element extMin;
    /// Specified maximum cardinality for the element - a number or a "*". This is optional; if present, it acts an implicit check on the input content (* just serves as documentation; it's the default value).
    String max;
    /// Extensions for max
    Element extMax;
    /// Specified type for the element. This works as a condition on the mapping - use for polymorphic elements.
    String type;
    /// Extensions for type
    Element extType;
    /// Extensions for defaultValueBase64Binary
    Element extDefaultValueBase64Binary;
    /// Extensions for defaultValueBoolean
    Element extDefaultValueBoolean;
    /// Extensions for defaultValueCanonical
    Element extDefaultValueCanonical;
    /// Extensions for defaultValueCode
    Element extDefaultValueCode;
    /// Extensions for defaultValueDate
    Element extDefaultValueDate;
    /// Extensions for defaultValueDateTime
    Element extDefaultValueDateTime;
    /// Extensions for defaultValueDecimal
    Element extDefaultValueDecimal;
    /// Extensions for defaultValueId
    Element extDefaultValueId;
    /// Extensions for defaultValueInstant
    Element extDefaultValueInstant;
    /// Extensions for defaultValueInteger
    Element extDefaultValueInteger;
    /// Extensions for defaultValueMarkdown
    Element extDefaultValueMarkdown;
    /// Extensions for defaultValueOid
    Element extDefaultValueOid;
    /// Extensions for defaultValuePositiveInt
    Element extDefaultValuePositiveInt;
    /// Extensions for defaultValueString
    Element extDefaultValueString;
    /// Extensions for defaultValueTime
    Element extDefaultValueTime;
    /// Extensions for defaultValueUnsignedInt
    Element extDefaultValueUnsignedInt;
    /// Extensions for defaultValueUri
    Element extDefaultValueUri;
    /// Extensions for defaultValueUrl
    Element extDefaultValueUrl;
    /// Extensions for defaultValueUuid
    Element extDefaultValueUuid;
    /// A value to use if there is no existing value in the source object.
    Address defaultValueAddress;
    /// A value to use if there is no existing value in the source object.
    Age defaultValueAge;
    /// A value to use if there is no existing value in the source object.
    Annotation defaultValueAnnotation;
    /// A value to use if there is no existing value in the source object.
    Attachment defaultValueAttachment;
    /// A value to use if there is no existing value in the source object.
    CodeableConcept defaultValueCodeableConcept;
    /// A value to use if there is no existing value in the source object.
    Coding defaultValueCoding;
    /// A value to use if there is no existing value in the source object.
    ContactPoint defaultValueContactPoint;
    /// A value to use if there is no existing value in the source object.
    Count defaultValueCount;
    /// A value to use if there is no existing value in the source object.
    Distance defaultValueDistance;
    /// A value to use if there is no existing value in the source object.
    Duration defaultValueDuration;
    /// A value to use if there is no existing value in the source object.
    HumanName defaultValueHumanName;
    /// A value to use if there is no existing value in the source object.
    Identifier defaultValueIdentifier;
    /// A value to use if there is no existing value in the source object.
    Money defaultValueMoney;
    /// A value to use if there is no existing value in the source object.
    Period defaultValuePeriod;
    /// A value to use if there is no existing value in the source object.
    Quantity defaultValueQuantity;
    /// A value to use if there is no existing value in the source object.
    Range defaultValueRange;
    /// A value to use if there is no existing value in the source object.
    Ratio defaultValueRatio;
    /// A value to use if there is no existing value in the source object.
    Reference defaultValueReference;
    /// A value to use if there is no existing value in the source object.
    SampledData defaultValueSampledData;
    /// A value to use if there is no existing value in the source object.
    Signature defaultValueSignature;
    /// A value to use if there is no existing value in the source object.
    Timing defaultValueTiming;
    /// A value to use if there is no existing value in the source object.
    ContactDetail defaultValueContactDetail;
    /// A value to use if there is no existing value in the source object.
    Contributor defaultValueContributor;
    /// A value to use if there is no existing value in the source object.
    DataRequirement defaultValueDataRequirement;
    /// A value to use if there is no existing value in the source object.
    Expression defaultValueExpression;
    /// A value to use if there is no existing value in the source object.
    ParameterDefinition defaultValueParameterDefinition;
    /// A value to use if there is no existing value in the source object.
    RelatedArtifact defaultValueRelatedArtifact;
    /// A value to use if there is no existing value in the source object.
    TriggerDefinition defaultValueTriggerDefinition;
    /// A value to use if there is no existing value in the source object.
    UsageContext defaultValueUsageContext;
    /// A value to use if there is no existing value in the source object.
    Dosage defaultValueDosage;
    /// Optional field for this source.
    String element;
    /// Extensions for element
    Element extElement;
    /// How to handle the list mode for this element.
    String listMode;
    /// Extensions for listMode
    Element extListMode;
    /// Named context for field, if a field is specified.
    String variable;
    /// Extensions for variable
    Element extVariable;
    /// FHIRPath expression  - must be true or the rule does not apply.
    String condition;
    /// Extensions for condition
    Element extCondition;
    /// FHIRPath expression  - must be true or the mapping engine throws an error instead of completing.
    String check;
    /// Extensions for check
    Element extCheck;
    /// A FHIRPath expression which specifies a message to put in the transform log when content matching the source rule is found.
    String logMessage;
    /// Extensions for logMessage
    Element extLogMessage;
 
    StructureMapSource.fromJSON( Map json ){
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
        this.context = json['context'];
        this.extContext = json['_context'] == null ? null : FHIRObjectFactory.buildFromJSON('Element', json['_context']);
        this.min = json['min'];
        this.extMin = json['_min'] == null ? null : FHIRObjectFactory.buildFromJSON('Element', json['_min']);
        this.max = json['max'];
        this.extMax = json['_max'] == null ? null : FHIRObjectFactory.buildFromJSON('Element', json['_max']);
        this.type = json['type'];
        this.extType = json['_type'] == null ? null : FHIRObjectFactory.buildFromJSON('Element', json['_type']);
        this.extDefaultValueBase64Binary = json['_defaultValueBase64Binary'] == null ? null : FHIRObjectFactory.buildFromJSON('Element', json['_defaultValueBase64Binary']);
        this.extDefaultValueBoolean = json['_defaultValueBoolean'] == null ? null : FHIRObjectFactory.buildFromJSON('Element', json['_defaultValueBoolean']);
        this.extDefaultValueCanonical = json['_defaultValueCanonical'] == null ? null : FHIRObjectFactory.buildFromJSON('Element', json['_defaultValueCanonical']);
        this.extDefaultValueCode = json['_defaultValueCode'] == null ? null : FHIRObjectFactory.buildFromJSON('Element', json['_defaultValueCode']);
        this.extDefaultValueDate = json['_defaultValueDate'] == null ? null : FHIRObjectFactory.buildFromJSON('Element', json['_defaultValueDate']);
        this.extDefaultValueDateTime = json['_defaultValueDateTime'] == null ? null : FHIRObjectFactory.buildFromJSON('Element', json['_defaultValueDateTime']);
        this.extDefaultValueDecimal = json['_defaultValueDecimal'] == null ? null : FHIRObjectFactory.buildFromJSON('Element', json['_defaultValueDecimal']);
        this.extDefaultValueId = json['_defaultValueId'] == null ? null : FHIRObjectFactory.buildFromJSON('Element', json['_defaultValueId']);
        this.extDefaultValueInstant = json['_defaultValueInstant'] == null ? null : FHIRObjectFactory.buildFromJSON('Element', json['_defaultValueInstant']);
        this.extDefaultValueInteger = json['_defaultValueInteger'] == null ? null : FHIRObjectFactory.buildFromJSON('Element', json['_defaultValueInteger']);
        this.extDefaultValueMarkdown = json['_defaultValueMarkdown'] == null ? null : FHIRObjectFactory.buildFromJSON('Element', json['_defaultValueMarkdown']);
        this.extDefaultValueOid = json['_defaultValueOid'] == null ? null : FHIRObjectFactory.buildFromJSON('Element', json['_defaultValueOid']);
        this.extDefaultValuePositiveInt = json['_defaultValuePositiveInt'] == null ? null : FHIRObjectFactory.buildFromJSON('Element', json['_defaultValuePositiveInt']);
        this.extDefaultValueString = json['_defaultValueString'] == null ? null : FHIRObjectFactory.buildFromJSON('Element', json['_defaultValueString']);
        this.extDefaultValueTime = json['_defaultValueTime'] == null ? null : FHIRObjectFactory.buildFromJSON('Element', json['_defaultValueTime']);
        this.extDefaultValueUnsignedInt = json['_defaultValueUnsignedInt'] == null ? null : FHIRObjectFactory.buildFromJSON('Element', json['_defaultValueUnsignedInt']);
        this.extDefaultValueUri = json['_defaultValueUri'] == null ? null : FHIRObjectFactory.buildFromJSON('Element', json['_defaultValueUri']);
        this.extDefaultValueUrl = json['_defaultValueUrl'] == null ? null : FHIRObjectFactory.buildFromJSON('Element', json['_defaultValueUrl']);
        this.extDefaultValueUuid = json['_defaultValueUuid'] == null ? null : FHIRObjectFactory.buildFromJSON('Element', json['_defaultValueUuid']);
        this.defaultValueAddress = json['defaultValueAddress'] == null ? null : FHIRObjectFactory.buildFromJSON('Address', json['defaultValueAddress']);
        this.defaultValueAge = json['defaultValueAge'] == null ? null : FHIRObjectFactory.buildFromJSON('Age', json['defaultValueAge']);
        this.defaultValueAnnotation = json['defaultValueAnnotation'] == null ? null : FHIRObjectFactory.buildFromJSON('Annotation', json['defaultValueAnnotation']);
        this.defaultValueAttachment = json['defaultValueAttachment'] == null ? null : FHIRObjectFactory.buildFromJSON('Attachment', json['defaultValueAttachment']);
        this.defaultValueCodeableConcept = json['defaultValueCodeableConcept'] == null ? null : FHIRObjectFactory.buildFromJSON('CodeableConcept', json['defaultValueCodeableConcept']);
        this.defaultValueCoding = json['defaultValueCoding'] == null ? null : FHIRObjectFactory.buildFromJSON('Coding', json['defaultValueCoding']);
        this.defaultValueContactPoint = json['defaultValueContactPoint'] == null ? null : FHIRObjectFactory.buildFromJSON('ContactPoint', json['defaultValueContactPoint']);
        this.defaultValueCount = json['defaultValueCount'] == null ? null : FHIRObjectFactory.buildFromJSON('Count', json['defaultValueCount']);
        this.defaultValueDistance = json['defaultValueDistance'] == null ? null : FHIRObjectFactory.buildFromJSON('Distance', json['defaultValueDistance']);
        this.defaultValueDuration = json['defaultValueDuration'] == null ? null : FHIRObjectFactory.buildFromJSON('Duration', json['defaultValueDuration']);
        this.defaultValueHumanName = json['defaultValueHumanName'] == null ? null : FHIRObjectFactory.buildFromJSON('HumanName', json['defaultValueHumanName']);
        this.defaultValueIdentifier = json['defaultValueIdentifier'] == null ? null : FHIRObjectFactory.buildFromJSON('Identifier', json['defaultValueIdentifier']);
        this.defaultValueMoney = json['defaultValueMoney'] == null ? null : FHIRObjectFactory.buildFromJSON('Money', json['defaultValueMoney']);
        this.defaultValuePeriod = json['defaultValuePeriod'] == null ? null : FHIRObjectFactory.buildFromJSON('Period', json['defaultValuePeriod']);
        this.defaultValueQuantity = json['defaultValueQuantity'] == null ? null : FHIRObjectFactory.buildFromJSON('Quantity', json['defaultValueQuantity']);
        this.defaultValueRange = json['defaultValueRange'] == null ? null : FHIRObjectFactory.buildFromJSON('Range', json['defaultValueRange']);
        this.defaultValueRatio = json['defaultValueRatio'] == null ? null : FHIRObjectFactory.buildFromJSON('Ratio', json['defaultValueRatio']);
        this.defaultValueReference = json['defaultValueReference'] == null ? null : FHIRObjectFactory.buildFromJSON('Reference', json['defaultValueReference']);
        this.defaultValueSampledData = json['defaultValueSampledData'] == null ? null : FHIRObjectFactory.buildFromJSON('SampledData', json['defaultValueSampledData']);
        this.defaultValueSignature = json['defaultValueSignature'] == null ? null : FHIRObjectFactory.buildFromJSON('Signature', json['defaultValueSignature']);
        this.defaultValueTiming = json['defaultValueTiming'] == null ? null : FHIRObjectFactory.buildFromJSON('Timing', json['defaultValueTiming']);
        this.defaultValueContactDetail = json['defaultValueContactDetail'] == null ? null : FHIRObjectFactory.buildFromJSON('ContactDetail', json['defaultValueContactDetail']);
        this.defaultValueContributor = json['defaultValueContributor'] == null ? null : FHIRObjectFactory.buildFromJSON('Contributor', json['defaultValueContributor']);
        this.defaultValueDataRequirement = json['defaultValueDataRequirement'] == null ? null : FHIRObjectFactory.buildFromJSON('DataRequirement', json['defaultValueDataRequirement']);
        this.defaultValueExpression = json['defaultValueExpression'] == null ? null : FHIRObjectFactory.buildFromJSON('Expression', json['defaultValueExpression']);
        this.defaultValueParameterDefinition = json['defaultValueParameterDefinition'] == null ? null : FHIRObjectFactory.buildFromJSON('ParameterDefinition', json['defaultValueParameterDefinition']);
        this.defaultValueRelatedArtifact = json['defaultValueRelatedArtifact'] == null ? null : FHIRObjectFactory.buildFromJSON('RelatedArtifact', json['defaultValueRelatedArtifact']);
        this.defaultValueTriggerDefinition = json['defaultValueTriggerDefinition'] == null ? null : FHIRObjectFactory.buildFromJSON('TriggerDefinition', json['defaultValueTriggerDefinition']);
        this.defaultValueUsageContext = json['defaultValueUsageContext'] == null ? null : FHIRObjectFactory.buildFromJSON('UsageContext', json['defaultValueUsageContext']);
        this.defaultValueDosage = json['defaultValueDosage'] == null ? null : FHIRObjectFactory.buildFromJSON('Dosage', json['defaultValueDosage']);
        this.element = json['element'];
        this.extElement = json['_element'] == null ? null : FHIRObjectFactory.buildFromJSON('Element', json['_element']);
        this.listMode = json['listMode'];
        this.extListMode = json['_listMode'] == null ? null : FHIRObjectFactory.buildFromJSON('Element', json['_listMode']);
        this.variable = json['variable'];
        this.extVariable = json['_variable'] == null ? null : FHIRObjectFactory.buildFromJSON('Element', json['_variable']);
        this.condition = json['condition'];
        this.extCondition = json['_condition'] == null ? null : FHIRObjectFactory.buildFromJSON('Element', json['_condition']);
        this.check = json['check'];
        this.extCheck = json['_check'] == null ? null : FHIRObjectFactory.buildFromJSON('Element', json['_check']);
        this.logMessage = json['logMessage'];
        this.extLogMessage = json['_logMessage'] == null ? null : FHIRObjectFactory.buildFromJSON('Element', json['_logMessage']);
    }
}
