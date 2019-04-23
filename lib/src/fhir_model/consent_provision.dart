import 'extension.dart';
import 'fhir_object_factory.dart';
import 'element.dart';
import 'period.dart';
import 'consent_actor.dart';
import 'codeable_concept.dart';
import 'coding.dart';
import 'consent_data.dart';
import 'consent_provision.dart';
/// A record of a healthcare consumer’s  choices, which permits or denies identified recipient(s) or recipient role(s) to perform one or more actions within a given policy context, for specific purposes and periods of time.
class ConsentProvision {
    /// Unique id for the element within a resource (for internal references). This may be any string value that does not contain spaces.
    String id;
    /// May be used to represent additional information that is not part of the basic definition of the element. To make the use of extensions safe and manageable, there is a strict set of governance  applied to the definition and use of extensions. Though any implementer can define an extension, there is a set of requirements that SHALL be met as part of the definition of the extension.
    List<Extension> extension;
    /// May be used to represent additional information that is not part of the basic definition of the element and that modifies the understanding of the element in which it is contained and/or the understanding of the containing element's descendants. Usually modifier elements provide negation or qualification. To make the use of extensions safe and manageable, there is a strict set of governance applied to the definition and use of extensions. Though any implementer can define an extension, there is a set of requirements that SHALL be met as part of the definition of the extension. Applications processing a resource are required to check for modifier extensions.
    /// 
    /// Modifier extensions SHALL NOT change the meaning of any elements on Resource or DomainResource (including cannot change the meaning of modifierExtension itself).
    List<Extension> modifierExtension;
    /// Action  to take - permit or deny - when the rule conditions are met.  Not permitted in root rule, required in all nested rules.
    String type;
    /// Extensions for type
    Element extType;
    /// The timeframe in this rule is valid.
    Period period;
    /// Who or what is controlled by this rule. Use group to identify a set of actors by some property they share (e.g. 'admitting officers').
    List<ConsentActor> actor;
    /// Actions controlled by this Rule.
    List<CodeableConcept> action;
    /// A security label, comprised of 0..* security label fields (Privacy tags), which define which resources are controlled by this exception.
    List<Coding> securityLabel;
    /// The context of the activities a user is taking - why the user is accessing the data - that are controlled by this rule.
    List<Coding> purpose;
    /// The class of information covered by this rule. The type can be a FHIR resource type, a profile on a type, or a CDA document, or some other type that indicates what sort of information the consent relates to.
    List<Coding> class1;
    /// If this code is found in an instance, then the rule applies.
    List<CodeableConcept> code;
    /// Clinical or Operational Relevant period of time that bounds the data controlled by this rule.
    Period dataPeriod;
    /// The resources controlled by this rule if specific resources are referenced.
    List<ConsentData> data;
    /// Rules which provide exceptions to the base rule or subrules.
    List<ConsentProvision> provision;
 
    ConsentProvision.fromJSON( Map json ){
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
        this.type = json['type'];
        this.extType = json['_type'] == null ? null : FHIRObjectFactory.buildFromJSON('Element', json['_type']);
        this.period = json['period'] == null ? null : FHIRObjectFactory.buildFromJSON('Period', json['period']);
        this.actor = List<ConsentActor>();
        if (json['actor'] != null && json['actor'].length > 0) {
          if( json['actor'] is List ){
            json['actor'].forEach((i){
              this.actor.add(FHIRObjectFactory.buildFromJSON('ConsentActor', i));
            });
          } else {
            // this handles the case when the list only has one object and does not return as a list
            var i = json['actor'];
            this.actor.add(FHIRObjectFactory.buildFromJSON('ConsentActor', i));
          }          
        }
        this.action = List<CodeableConcept>();
        if (json['action'] != null && json['action'].length > 0) {
          if( json['action'] is List ){
            json['action'].forEach((i){
              this.action.add(FHIRObjectFactory.buildFromJSON('CodeableConcept', i));
            });
          } else {
            // this handles the case when the list only has one object and does not return as a list
            var i = json['action'];
            this.action.add(FHIRObjectFactory.buildFromJSON('CodeableConcept', i));
          }          
        }
        this.securityLabel = List<Coding>();
        if (json['securityLabel'] != null && json['securityLabel'].length > 0) {
          if( json['securityLabel'] is List ){
            json['securityLabel'].forEach((i){
              this.securityLabel.add(FHIRObjectFactory.buildFromJSON('Coding', i));
            });
          } else {
            // this handles the case when the list only has one object and does not return as a list
            var i = json['securityLabel'];
            this.securityLabel.add(FHIRObjectFactory.buildFromJSON('Coding', i));
          }          
        }
        this.purpose = List<Coding>();
        if (json['purpose'] != null && json['purpose'].length > 0) {
          if( json['purpose'] is List ){
            json['purpose'].forEach((i){
              this.purpose.add(FHIRObjectFactory.buildFromJSON('Coding', i));
            });
          } else {
            // this handles the case when the list only has one object and does not return as a list
            var i = json['purpose'];
            this.purpose.add(FHIRObjectFactory.buildFromJSON('Coding', i));
          }          
        }
        this.class1 = List<Coding>();
        if (json['class'] != null && json['class'].length > 0) {
          if( json['class'] is List ){
            json['class'].forEach((i){
              this.class1.add(FHIRObjectFactory.buildFromJSON('Coding', i));
            });
          } else {
            // this handles the case when the list only has one object and does not return as a list
            var i = json['class'];
            this.class1.add(FHIRObjectFactory.buildFromJSON('Coding', i));
          }          
        }
        this.code = List<CodeableConcept>();
        if (json['code'] != null && json['code'].length > 0) {
          if( json['code'] is List ){
            json['code'].forEach((i){
              this.code.add(FHIRObjectFactory.buildFromJSON('CodeableConcept', i));
            });
          } else {
            // this handles the case when the list only has one object and does not return as a list
            var i = json['code'];
            this.code.add(FHIRObjectFactory.buildFromJSON('CodeableConcept', i));
          }          
        }
        this.dataPeriod = json['dataPeriod'] == null ? null : FHIRObjectFactory.buildFromJSON('Period', json['dataPeriod']);
        this.data = List<ConsentData>();
        if (json['data'] != null && json['data'].length > 0) {
          if( json['data'] is List ){
            json['data'].forEach((i){
              this.data.add(FHIRObjectFactory.buildFromJSON('ConsentData', i));
            });
          } else {
            // this handles the case when the list only has one object and does not return as a list
            var i = json['data'];
            this.data.add(FHIRObjectFactory.buildFromJSON('ConsentData', i));
          }          
        }
        this.provision = List<ConsentProvision>();
        if (json['provision'] != null && json['provision'].length > 0) {
          if( json['provision'] is List ){
            json['provision'].forEach((i){
              this.provision.add(FHIRObjectFactory.buildFromJSON('ConsentProvision', i));
            });
          } else {
            // this handles the case when the list only has one object and does not return as a list
            var i = json['provision'];
            this.provision.add(FHIRObjectFactory.buildFromJSON('ConsentProvision', i));
          }          
        }
    }
}
