import 'extension.dart';
import 'fhir_object_factory.dart';
import 'element.dart';
/// Raw data describing a biological sequence.
class MolecularSequenceRoc {
    /// Unique id for the element within a resource (for internal references). This may be any string value that does not contain spaces.
    String id;
    /// May be used to represent additional information that is not part of the basic definition of the element. To make the use of extensions safe and manageable, there is a strict set of governance  applied to the definition and use of extensions. Though any implementer can define an extension, there is a set of requirements that SHALL be met as part of the definition of the extension.
    List<Extension> extension;
    /// May be used to represent additional information that is not part of the basic definition of the element and that modifies the understanding of the element in which it is contained and/or the understanding of the containing element's descendants. Usually modifier elements provide negation or qualification. To make the use of extensions safe and manageable, there is a strict set of governance applied to the definition and use of extensions. Though any implementer can define an extension, there is a set of requirements that SHALL be met as part of the definition of the extension. Applications processing a resource are required to check for modifier extensions.
    /// 
    /// Modifier extensions SHALL NOT change the meaning of any elements on Resource or DomainResource (including cannot change the meaning of modifierExtension itself).
    List<Extension> modifierExtension;
    /// Invidual data point representing the GQ (genotype quality) score threshold.
    List<int> score;
    /// Extensions for score
    List<Element> extScore;
    /// The number of true positives if the GQ score threshold was set to "score" field value.
    List<int> numTP;
    /// Extensions for numTP
    List<Element> extNumTP;
    /// The number of false positives if the GQ score threshold was set to "score" field value.
    List<int> numFP;
    /// Extensions for numFP
    List<Element> extNumFP;
    /// The number of false negatives if the GQ score threshold was set to "score" field value.
    List<int> numFN;
    /// Extensions for numFN
    List<Element> extNumFN;
    /// Calculated precision if the GQ score threshold was set to "score" field value.
    List<double> precision;
    /// Extensions for precision
    List<Element> extPrecision;
    /// Calculated sensitivity if the GQ score threshold was set to "score" field value.
    List<double> sensitivity;
    /// Extensions for sensitivity
    List<Element> extSensitivity;
    /// Calculated fScore if the GQ score threshold was set to "score" field value.
    List<double> fMeasure;
    /// Extensions for fMeasure
    List<Element> extFMeasure;
 
    MolecularSequenceRoc.fromJSON( Map json ){
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
        this.score = List<int>();
        if (json['score'] != null && json['score'].length > 0) {
          if( json['score'] is List ){
            json['score'].forEach((i){
              this.score.add(i);
            });
          } else {
            // this handles the case when the list only has one object and does not return as a list
            var i = json['score'];
            this.score.add(i);
          }          
        }
        this.extScore = List<Element>();
        if (json['_score'] != null && json['_score'].length > 0) {
          if( json['_score'] is List ){
            json['_score'].forEach((i){
              this.extScore.add(FHIRObjectFactory.buildFromJSON('Element', i));
            });
          } else {
            // this handles the case when the list only has one object and does not return as a list
            var i = json['_score'];
            this.extScore.add(FHIRObjectFactory.buildFromJSON('Element', i));
          }          
        }
        this.numTP = List<int>();
        if (json['numTP'] != null && json['numTP'].length > 0) {
          if( json['numTP'] is List ){
            json['numTP'].forEach((i){
              this.numTP.add(i);
            });
          } else {
            // this handles the case when the list only has one object and does not return as a list
            var i = json['numTP'];
            this.numTP.add(i);
          }          
        }
        this.extNumTP = List<Element>();
        if (json['_numTP'] != null && json['_numTP'].length > 0) {
          if( json['_numTP'] is List ){
            json['_numTP'].forEach((i){
              this.extNumTP.add(FHIRObjectFactory.buildFromJSON('Element', i));
            });
          } else {
            // this handles the case when the list only has one object and does not return as a list
            var i = json['_numTP'];
            this.extNumTP.add(FHIRObjectFactory.buildFromJSON('Element', i));
          }          
        }
        this.numFP = List<int>();
        if (json['numFP'] != null && json['numFP'].length > 0) {
          if( json['numFP'] is List ){
            json['numFP'].forEach((i){
              this.numFP.add(i);
            });
          } else {
            // this handles the case when the list only has one object and does not return as a list
            var i = json['numFP'];
            this.numFP.add(i);
          }          
        }
        this.extNumFP = List<Element>();
        if (json['_numFP'] != null && json['_numFP'].length > 0) {
          if( json['_numFP'] is List ){
            json['_numFP'].forEach((i){
              this.extNumFP.add(FHIRObjectFactory.buildFromJSON('Element', i));
            });
          } else {
            // this handles the case when the list only has one object and does not return as a list
            var i = json['_numFP'];
            this.extNumFP.add(FHIRObjectFactory.buildFromJSON('Element', i));
          }          
        }
        this.numFN = List<int>();
        if (json['numFN'] != null && json['numFN'].length > 0) {
          if( json['numFN'] is List ){
            json['numFN'].forEach((i){
              this.numFN.add(i);
            });
          } else {
            // this handles the case when the list only has one object and does not return as a list
            var i = json['numFN'];
            this.numFN.add(i);
          }          
        }
        this.extNumFN = List<Element>();
        if (json['_numFN'] != null && json['_numFN'].length > 0) {
          if( json['_numFN'] is List ){
            json['_numFN'].forEach((i){
              this.extNumFN.add(FHIRObjectFactory.buildFromJSON('Element', i));
            });
          } else {
            // this handles the case when the list only has one object and does not return as a list
            var i = json['_numFN'];
            this.extNumFN.add(FHIRObjectFactory.buildFromJSON('Element', i));
          }          
        }
        this.precision = List<double>();
        if (json['precision'] != null && json['precision'].length > 0) {
          if( json['precision'] is List ){
            json['precision'].forEach((i){
              this.precision.add(i);
            });
          } else {
            // this handles the case when the list only has one object and does not return as a list
            var i = json['precision'];
            this.precision.add(i);
          }          
        }
        this.extPrecision = List<Element>();
        if (json['_precision'] != null && json['_precision'].length > 0) {
          if( json['_precision'] is List ){
            json['_precision'].forEach((i){
              this.extPrecision.add(FHIRObjectFactory.buildFromJSON('Element', i));
            });
          } else {
            // this handles the case when the list only has one object and does not return as a list
            var i = json['_precision'];
            this.extPrecision.add(FHIRObjectFactory.buildFromJSON('Element', i));
          }          
        }
        this.sensitivity = List<double>();
        if (json['sensitivity'] != null && json['sensitivity'].length > 0) {
          if( json['sensitivity'] is List ){
            json['sensitivity'].forEach((i){
              this.sensitivity.add(i);
            });
          } else {
            // this handles the case when the list only has one object and does not return as a list
            var i = json['sensitivity'];
            this.sensitivity.add(i);
          }          
        }
        this.extSensitivity = List<Element>();
        if (json['_sensitivity'] != null && json['_sensitivity'].length > 0) {
          if( json['_sensitivity'] is List ){
            json['_sensitivity'].forEach((i){
              this.extSensitivity.add(FHIRObjectFactory.buildFromJSON('Element', i));
            });
          } else {
            // this handles the case when the list only has one object and does not return as a list
            var i = json['_sensitivity'];
            this.extSensitivity.add(FHIRObjectFactory.buildFromJSON('Element', i));
          }          
        }
        this.fMeasure = List<double>();
        if (json['fMeasure'] != null && json['fMeasure'].length > 0) {
          if( json['fMeasure'] is List ){
            json['fMeasure'].forEach((i){
              this.fMeasure.add(i);
            });
          } else {
            // this handles the case when the list only has one object and does not return as a list
            var i = json['fMeasure'];
            this.fMeasure.add(i);
          }          
        }
        this.extFMeasure = List<Element>();
        if (json['_fMeasure'] != null && json['_fMeasure'].length > 0) {
          if( json['_fMeasure'] is List ){
            json['_fMeasure'].forEach((i){
              this.extFMeasure.add(FHIRObjectFactory.buildFromJSON('Element', i));
            });
          } else {
            // this handles the case when the list only has one object and does not return as a list
            var i = json['_fMeasure'];
            this.extFMeasure.add(FHIRObjectFactory.buildFromJSON('Element', i));
          }          
        }
    }
}
