import 'extension.dart';
import 'fhir_object_factory.dart';
import 'element.dart';
import 'codeable_concept.dart';
import 'period.dart';
import 'quantity.dart';
import 'attachment.dart';
import 'reference.dart';
import 'coding.dart';
/// This resource provides: the claim details; adjudication details from the processing of a Claim; and optionally account balance information, for informing the subscriber of the benefits provided.
class ExplanationOfBenefitSupportingInfo {
    /// Unique id for the element within a resource (for internal references). This may be any string value that does not contain spaces.
    String id;
    /// May be used to represent additional information that is not part of the basic definition of the element. To make the use of extensions safe and manageable, there is a strict set of governance  applied to the definition and use of extensions. Though any implementer can define an extension, there is a set of requirements that SHALL be met as part of the definition of the extension.
    List<Extension> extension;
    /// May be used to represent additional information that is not part of the basic definition of the element and that modifies the understanding of the element in which it is contained and/or the understanding of the containing element's descendants. Usually modifier elements provide negation or qualification. To make the use of extensions safe and manageable, there is a strict set of governance applied to the definition and use of extensions. Though any implementer can define an extension, there is a set of requirements that SHALL be met as part of the definition of the extension. Applications processing a resource are required to check for modifier extensions.
    /// 
    /// Modifier extensions SHALL NOT change the meaning of any elements on Resource or DomainResource (including cannot change the meaning of modifierExtension itself).
    List<Extension> modifierExtension;
    /// A number to uniquely identify supporting information entries.
    int sequence;
    /// Extensions for sequence
    Element extSequence;
    /// The general class of the information supplied: information; exception; accident, employment; onset, etc.
    CodeableConcept category;
    /// System and code pertaining to the specific information regarding special conditions relating to the setting, treatment or patient  for which care is sought.
    CodeableConcept code;
    /// Extensions for timingDate
    Element extTimingDate;
    /// The date when or period to which this information refers.
    Period timingPeriod;
    /// Extensions for valueBoolean
    Element extValueBoolean;
    /// Extensions for valueString
    Element extValueString;
    /// Additional data or information such as resources, documents, images etc. including references to the data or the actual inclusion of the data.
    Quantity valueQuantity;
    /// Additional data or information such as resources, documents, images etc. including references to the data or the actual inclusion of the data.
    Attachment valueAttachment;
    /// Additional data or information such as resources, documents, images etc. including references to the data or the actual inclusion of the data.
    Reference valueReference;
    /// Provides the reason in the situation where a reason code is required in addition to the content.
    Coding reason;
 
    ExplanationOfBenefitSupportingInfo.fromJSON( Map json ){
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
        this.sequence = json['sequence'];
        this.extSequence = json['_sequence'] == null ? null : FHIRObjectFactory.buildFromJSON('Element', json['_sequence']);
        this.category = json['category'] == null ? null : FHIRObjectFactory.buildFromJSON('CodeableConcept', json['category']);
        this.code = json['code'] == null ? null : FHIRObjectFactory.buildFromJSON('CodeableConcept', json['code']);
        this.extTimingDate = json['_timingDate'] == null ? null : FHIRObjectFactory.buildFromJSON('Element', json['_timingDate']);
        this.timingPeriod = json['timingPeriod'] == null ? null : FHIRObjectFactory.buildFromJSON('Period', json['timingPeriod']);
        this.extValueBoolean = json['_valueBoolean'] == null ? null : FHIRObjectFactory.buildFromJSON('Element', json['_valueBoolean']);
        this.extValueString = json['_valueString'] == null ? null : FHIRObjectFactory.buildFromJSON('Element', json['_valueString']);
        this.valueQuantity = json['valueQuantity'] == null ? null : FHIRObjectFactory.buildFromJSON('Quantity', json['valueQuantity']);
        this.valueAttachment = json['valueAttachment'] == null ? null : FHIRObjectFactory.buildFromJSON('Attachment', json['valueAttachment']);
        this.valueReference = json['valueReference'] == null ? null : FHIRObjectFactory.buildFromJSON('Reference', json['valueReference']);
        this.reason = json['reason'] == null ? null : FHIRObjectFactory.buildFromJSON('Coding', json['reason']);
    }
}
