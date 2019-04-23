import 'extension.dart';
import 'fhir_object_factory.dart';
import 'codeable_concept.dart';
import 'element.dart';
import 'address.dart';
import 'age.dart';
import 'annotation.dart';
import 'attachment.dart';
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
/// A task to be performed.
class TaskInput {
    /// Unique id for the element within a resource (for internal references). This may be any string value that does not contain spaces.
    String id;
    /// May be used to represent additional information that is not part of the basic definition of the element. To make the use of extensions safe and manageable, there is a strict set of governance  applied to the definition and use of extensions. Though any implementer can define an extension, there is a set of requirements that SHALL be met as part of the definition of the extension.
    List<Extension> extension;
    /// May be used to represent additional information that is not part of the basic definition of the element and that modifies the understanding of the element in which it is contained and/or the understanding of the containing element's descendants. Usually modifier elements provide negation or qualification. To make the use of extensions safe and manageable, there is a strict set of governance applied to the definition and use of extensions. Though any implementer can define an extension, there is a set of requirements that SHALL be met as part of the definition of the extension. Applications processing a resource are required to check for modifier extensions.
    /// 
    /// Modifier extensions SHALL NOT change the meaning of any elements on Resource or DomainResource (including cannot change the meaning of modifierExtension itself).
    List<Extension> modifierExtension;
    /// A code or description indicating how the input is intended to be used as part of the task execution.
    CodeableConcept type;
    /// Extensions for valueBase64Binary
    Element extValueBase64Binary;
    /// Extensions for valueBoolean
    Element extValueBoolean;
    /// Extensions for valueCanonical
    Element extValueCanonical;
    /// Extensions for valueCode
    Element extValueCode;
    /// Extensions for valueDate
    Element extValueDate;
    /// Extensions for valueDateTime
    Element extValueDateTime;
    /// Extensions for valueDecimal
    Element extValueDecimal;
    /// Extensions for valueId
    Element extValueId;
    /// Extensions for valueInstant
    Element extValueInstant;
    /// Extensions for valueInteger
    Element extValueInteger;
    /// Extensions for valueMarkdown
    Element extValueMarkdown;
    /// Extensions for valueOid
    Element extValueOid;
    /// Extensions for valuePositiveInt
    Element extValuePositiveInt;
    /// Extensions for valueString
    Element extValueString;
    /// Extensions for valueTime
    Element extValueTime;
    /// Extensions for valueUnsignedInt
    Element extValueUnsignedInt;
    /// Extensions for valueUri
    Element extValueUri;
    /// Extensions for valueUrl
    Element extValueUrl;
    /// Extensions for valueUuid
    Element extValueUuid;
    /// The value of the input parameter as a basic type.
    Address valueAddress;
    /// The value of the input parameter as a basic type.
    Age valueAge;
    /// The value of the input parameter as a basic type.
    Annotation valueAnnotation;
    /// The value of the input parameter as a basic type.
    Attachment valueAttachment;
    /// The value of the input parameter as a basic type.
    CodeableConcept valueCodeableConcept;
    /// The value of the input parameter as a basic type.
    Coding valueCoding;
    /// The value of the input parameter as a basic type.
    ContactPoint valueContactPoint;
    /// The value of the input parameter as a basic type.
    Count valueCount;
    /// The value of the input parameter as a basic type.
    Distance valueDistance;
    /// The value of the input parameter as a basic type.
    Duration valueDuration;
    /// The value of the input parameter as a basic type.
    HumanName valueHumanName;
    /// The value of the input parameter as a basic type.
    Identifier valueIdentifier;
    /// The value of the input parameter as a basic type.
    Money valueMoney;
    /// The value of the input parameter as a basic type.
    Period valuePeriod;
    /// The value of the input parameter as a basic type.
    Quantity valueQuantity;
    /// The value of the input parameter as a basic type.
    Range valueRange;
    /// The value of the input parameter as a basic type.
    Ratio valueRatio;
    /// The value of the input parameter as a basic type.
    Reference valueReference;
    /// The value of the input parameter as a basic type.
    SampledData valueSampledData;
    /// The value of the input parameter as a basic type.
    Signature valueSignature;
    /// The value of the input parameter as a basic type.
    Timing valueTiming;
    /// The value of the input parameter as a basic type.
    ContactDetail valueContactDetail;
    /// The value of the input parameter as a basic type.
    Contributor valueContributor;
    /// The value of the input parameter as a basic type.
    DataRequirement valueDataRequirement;
    /// The value of the input parameter as a basic type.
    Expression valueExpression;
    /// The value of the input parameter as a basic type.
    ParameterDefinition valueParameterDefinition;
    /// The value of the input parameter as a basic type.
    RelatedArtifact valueRelatedArtifact;
    /// The value of the input parameter as a basic type.
    TriggerDefinition valueTriggerDefinition;
    /// The value of the input parameter as a basic type.
    UsageContext valueUsageContext;
    /// The value of the input parameter as a basic type.
    Dosage valueDosage;
 
    TaskInput.fromJSON( Map json ){
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
        this.type = json['type'] == null ? null : FHIRObjectFactory.buildFromJSON('CodeableConcept', json['type']);
        this.extValueBase64Binary = json['_valueBase64Binary'] == null ? null : FHIRObjectFactory.buildFromJSON('Element', json['_valueBase64Binary']);
        this.extValueBoolean = json['_valueBoolean'] == null ? null : FHIRObjectFactory.buildFromJSON('Element', json['_valueBoolean']);
        this.extValueCanonical = json['_valueCanonical'] == null ? null : FHIRObjectFactory.buildFromJSON('Element', json['_valueCanonical']);
        this.extValueCode = json['_valueCode'] == null ? null : FHIRObjectFactory.buildFromJSON('Element', json['_valueCode']);
        this.extValueDate = json['_valueDate'] == null ? null : FHIRObjectFactory.buildFromJSON('Element', json['_valueDate']);
        this.extValueDateTime = json['_valueDateTime'] == null ? null : FHIRObjectFactory.buildFromJSON('Element', json['_valueDateTime']);
        this.extValueDecimal = json['_valueDecimal'] == null ? null : FHIRObjectFactory.buildFromJSON('Element', json['_valueDecimal']);
        this.extValueId = json['_valueId'] == null ? null : FHIRObjectFactory.buildFromJSON('Element', json['_valueId']);
        this.extValueInstant = json['_valueInstant'] == null ? null : FHIRObjectFactory.buildFromJSON('Element', json['_valueInstant']);
        this.extValueInteger = json['_valueInteger'] == null ? null : FHIRObjectFactory.buildFromJSON('Element', json['_valueInteger']);
        this.extValueMarkdown = json['_valueMarkdown'] == null ? null : FHIRObjectFactory.buildFromJSON('Element', json['_valueMarkdown']);
        this.extValueOid = json['_valueOid'] == null ? null : FHIRObjectFactory.buildFromJSON('Element', json['_valueOid']);
        this.extValuePositiveInt = json['_valuePositiveInt'] == null ? null : FHIRObjectFactory.buildFromJSON('Element', json['_valuePositiveInt']);
        this.extValueString = json['_valueString'] == null ? null : FHIRObjectFactory.buildFromJSON('Element', json['_valueString']);
        this.extValueTime = json['_valueTime'] == null ? null : FHIRObjectFactory.buildFromJSON('Element', json['_valueTime']);
        this.extValueUnsignedInt = json['_valueUnsignedInt'] == null ? null : FHIRObjectFactory.buildFromJSON('Element', json['_valueUnsignedInt']);
        this.extValueUri = json['_valueUri'] == null ? null : FHIRObjectFactory.buildFromJSON('Element', json['_valueUri']);
        this.extValueUrl = json['_valueUrl'] == null ? null : FHIRObjectFactory.buildFromJSON('Element', json['_valueUrl']);
        this.extValueUuid = json['_valueUuid'] == null ? null : FHIRObjectFactory.buildFromJSON('Element', json['_valueUuid']);
        this.valueAddress = json['valueAddress'] == null ? null : FHIRObjectFactory.buildFromJSON('Address', json['valueAddress']);
        this.valueAge = json['valueAge'] == null ? null : FHIRObjectFactory.buildFromJSON('Age', json['valueAge']);
        this.valueAnnotation = json['valueAnnotation'] == null ? null : FHIRObjectFactory.buildFromJSON('Annotation', json['valueAnnotation']);
        this.valueAttachment = json['valueAttachment'] == null ? null : FHIRObjectFactory.buildFromJSON('Attachment', json['valueAttachment']);
        this.valueCodeableConcept = json['valueCodeableConcept'] == null ? null : FHIRObjectFactory.buildFromJSON('CodeableConcept', json['valueCodeableConcept']);
        this.valueCoding = json['valueCoding'] == null ? null : FHIRObjectFactory.buildFromJSON('Coding', json['valueCoding']);
        this.valueContactPoint = json['valueContactPoint'] == null ? null : FHIRObjectFactory.buildFromJSON('ContactPoint', json['valueContactPoint']);
        this.valueCount = json['valueCount'] == null ? null : FHIRObjectFactory.buildFromJSON('Count', json['valueCount']);
        this.valueDistance = json['valueDistance'] == null ? null : FHIRObjectFactory.buildFromJSON('Distance', json['valueDistance']);
        this.valueDuration = json['valueDuration'] == null ? null : FHIRObjectFactory.buildFromJSON('Duration', json['valueDuration']);
        this.valueHumanName = json['valueHumanName'] == null ? null : FHIRObjectFactory.buildFromJSON('HumanName', json['valueHumanName']);
        this.valueIdentifier = json['valueIdentifier'] == null ? null : FHIRObjectFactory.buildFromJSON('Identifier', json['valueIdentifier']);
        this.valueMoney = json['valueMoney'] == null ? null : FHIRObjectFactory.buildFromJSON('Money', json['valueMoney']);
        this.valuePeriod = json['valuePeriod'] == null ? null : FHIRObjectFactory.buildFromJSON('Period', json['valuePeriod']);
        this.valueQuantity = json['valueQuantity'] == null ? null : FHIRObjectFactory.buildFromJSON('Quantity', json['valueQuantity']);
        this.valueRange = json['valueRange'] == null ? null : FHIRObjectFactory.buildFromJSON('Range', json['valueRange']);
        this.valueRatio = json['valueRatio'] == null ? null : FHIRObjectFactory.buildFromJSON('Ratio', json['valueRatio']);
        this.valueReference = json['valueReference'] == null ? null : FHIRObjectFactory.buildFromJSON('Reference', json['valueReference']);
        this.valueSampledData = json['valueSampledData'] == null ? null : FHIRObjectFactory.buildFromJSON('SampledData', json['valueSampledData']);
        this.valueSignature = json['valueSignature'] == null ? null : FHIRObjectFactory.buildFromJSON('Signature', json['valueSignature']);
        this.valueTiming = json['valueTiming'] == null ? null : FHIRObjectFactory.buildFromJSON('Timing', json['valueTiming']);
        this.valueContactDetail = json['valueContactDetail'] == null ? null : FHIRObjectFactory.buildFromJSON('ContactDetail', json['valueContactDetail']);
        this.valueContributor = json['valueContributor'] == null ? null : FHIRObjectFactory.buildFromJSON('Contributor', json['valueContributor']);
        this.valueDataRequirement = json['valueDataRequirement'] == null ? null : FHIRObjectFactory.buildFromJSON('DataRequirement', json['valueDataRequirement']);
        this.valueExpression = json['valueExpression'] == null ? null : FHIRObjectFactory.buildFromJSON('Expression', json['valueExpression']);
        this.valueParameterDefinition = json['valueParameterDefinition'] == null ? null : FHIRObjectFactory.buildFromJSON('ParameterDefinition', json['valueParameterDefinition']);
        this.valueRelatedArtifact = json['valueRelatedArtifact'] == null ? null : FHIRObjectFactory.buildFromJSON('RelatedArtifact', json['valueRelatedArtifact']);
        this.valueTriggerDefinition = json['valueTriggerDefinition'] == null ? null : FHIRObjectFactory.buildFromJSON('TriggerDefinition', json['valueTriggerDefinition']);
        this.valueUsageContext = json['valueUsageContext'] == null ? null : FHIRObjectFactory.buildFromJSON('UsageContext', json['valueUsageContext']);
        this.valueDosage = json['valueDosage'] == null ? null : FHIRObjectFactory.buildFromJSON('Dosage', json['valueDosage']);
    }
}
