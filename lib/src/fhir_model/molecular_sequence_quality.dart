import 'extension.dart';
import 'fhir_object_factory.dart';
import 'element.dart';
import 'codeable_concept.dart';
import 'quantity.dart';
import 'molecular_sequence_roc.dart';
/// Raw data describing a biological sequence.
class MolecularSequenceQuality {
    /// Unique id for the element within a resource (for internal references). This may be any string value that does not contain spaces.
    String id;
    /// May be used to represent additional information that is not part of the basic definition of the element. To make the use of extensions safe and manageable, there is a strict set of governance  applied to the definition and use of extensions. Though any implementer can define an extension, there is a set of requirements that SHALL be met as part of the definition of the extension.
    List<Extension> extension;
    /// May be used to represent additional information that is not part of the basic definition of the element and that modifies the understanding of the element in which it is contained and/or the understanding of the containing element's descendants. Usually modifier elements provide negation or qualification. To make the use of extensions safe and manageable, there is a strict set of governance applied to the definition and use of extensions. Though any implementer can define an extension, there is a set of requirements that SHALL be met as part of the definition of the extension. Applications processing a resource are required to check for modifier extensions.
    /// 
    /// Modifier extensions SHALL NOT change the meaning of any elements on Resource or DomainResource (including cannot change the meaning of modifierExtension itself).
    List<Extension> modifierExtension;
    /// INDEL / SNP / Undefined variant.
    String type;
    /// Extensions for type
    Element extType;
    /// Gold standard sequence used for comparing against.
    CodeableConcept standardSequence;
    /// Start position of the sequence. If the coordinate system is either 0-based or 1-based, then start position is inclusive.
    int start;
    /// Extensions for start
    Element extStart;
    /// End position of the sequence. If the coordinate system is 0-based then end is exclusive and does not include the last position. If the coordinate system is 1-base, then end is inclusive and includes the last position.
    int end;
    /// Extensions for end
    Element extEnd;
    /// The score of an experimentally derived feature such as a p-value ([SO:0001685](http://www.sequenceontology.org/browser/current_svn/term/SO:0001685)).
    Quantity score;
    /// Which method is used to get sequence quality.
    CodeableConcept method;
    /// True positives, from the perspective of the truth data, i.e. the number of sites in the Truth Call Set for which there are paths through the Query Call Set that are consistent with all of the alleles at this site, and for which there is an accurate genotype call for the event.
    double truthTP;
    /// Extensions for truthTP
    Element extTruthTP;
    /// True positives, from the perspective of the query data, i.e. the number of sites in the Query Call Set for which there are paths through the Truth Call Set that are consistent with all of the alleles at this site, and for which there is an accurate genotype call for the event.
    double queryTP;
    /// Extensions for queryTP
    Element extQueryTP;
    /// False negatives, i.e. the number of sites in the Truth Call Set for which there is no path through the Query Call Set that is consistent with all of the alleles at this site, or sites for which there is an inaccurate genotype call for the event. Sites with correct variant but incorrect genotype are counted here.
    double truthFN;
    /// Extensions for truthFN
    Element extTruthFN;
    /// False positives, i.e. the number of sites in the Query Call Set for which there is no path through the Truth Call Set that is consistent with this site. Sites with correct variant but incorrect genotype are counted here.
    double queryFP;
    /// Extensions for queryFP
    Element extQueryFP;
    /// The number of false positives where the non-REF alleles in the Truth and Query Call Sets match (i.e. cases where the truth is 1/1 and the query is 0/1 or similar).
    double gtFP;
    /// Extensions for gtFP
    Element extGtFP;
    /// QUERY.TP / (QUERY.TP + QUERY.FP).
    double precision;
    /// Extensions for precision
    Element extPrecision;
    /// TRUTH.TP / (TRUTH.TP + TRUTH.FN).
    double recall;
    /// Extensions for recall
    Element extRecall;
    /// Harmonic mean of Recall and Precision, computed as: 2 * precision * recall / (precision + recall).
    double fScore;
    /// Extensions for fScore
    Element extFScore;
    /// Receiver Operator Characteristic (ROC) Curve  to give sensitivity/specificity tradeoff.
    MolecularSequenceRoc roc;
 
    MolecularSequenceQuality.fromJSON( Map json ){
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
        this.standardSequence = json['standardSequence'] == null ? null : FHIRObjectFactory.buildFromJSON('CodeableConcept', json['standardSequence']);
        this.start = json['start'];
        this.extStart = json['_start'] == null ? null : FHIRObjectFactory.buildFromJSON('Element', json['_start']);
        this.end = json['end'];
        this.extEnd = json['_end'] == null ? null : FHIRObjectFactory.buildFromJSON('Element', json['_end']);
        this.score = json['score'] == null ? null : FHIRObjectFactory.buildFromJSON('Quantity', json['score']);
        this.method = json['method'] == null ? null : FHIRObjectFactory.buildFromJSON('CodeableConcept', json['method']);
        if( json['truthTP'] != null && json['truthTP'] is int ) {
          this.truthTP = json['truthTP'].toDouble();
        } else {
          this.truthTP = json['truthTP'];
        }
    
        this.extTruthTP = json['_truthTP'] == null ? null : FHIRObjectFactory.buildFromJSON('Element', json['_truthTP']);
        if( json['queryTP'] != null && json['queryTP'] is int ) {
          this.queryTP = json['queryTP'].toDouble();
        } else {
          this.queryTP = json['queryTP'];
        }
    
        this.extQueryTP = json['_queryTP'] == null ? null : FHIRObjectFactory.buildFromJSON('Element', json['_queryTP']);
        if( json['truthFN'] != null && json['truthFN'] is int ) {
          this.truthFN = json['truthFN'].toDouble();
        } else {
          this.truthFN = json['truthFN'];
        }
    
        this.extTruthFN = json['_truthFN'] == null ? null : FHIRObjectFactory.buildFromJSON('Element', json['_truthFN']);
        if( json['queryFP'] != null && json['queryFP'] is int ) {
          this.queryFP = json['queryFP'].toDouble();
        } else {
          this.queryFP = json['queryFP'];
        }
    
        this.extQueryFP = json['_queryFP'] == null ? null : FHIRObjectFactory.buildFromJSON('Element', json['_queryFP']);
        if( json['gtFP'] != null && json['gtFP'] is int ) {
          this.gtFP = json['gtFP'].toDouble();
        } else {
          this.gtFP = json['gtFP'];
        }
    
        this.extGtFP = json['_gtFP'] == null ? null : FHIRObjectFactory.buildFromJSON('Element', json['_gtFP']);
        if( json['precision'] != null && json['precision'] is int ) {
          this.precision = json['precision'].toDouble();
        } else {
          this.precision = json['precision'];
        }
    
        this.extPrecision = json['_precision'] == null ? null : FHIRObjectFactory.buildFromJSON('Element', json['_precision']);
        if( json['recall'] != null && json['recall'] is int ) {
          this.recall = json['recall'].toDouble();
        } else {
          this.recall = json['recall'];
        }
    
        this.extRecall = json['_recall'] == null ? null : FHIRObjectFactory.buildFromJSON('Element', json['_recall']);
        if( json['fScore'] != null && json['fScore'] is int ) {
          this.fScore = json['fScore'].toDouble();
        } else {
          this.fScore = json['fScore'];
        }
    
        this.extFScore = json['_fScore'] == null ? null : FHIRObjectFactory.buildFromJSON('Element', json['_fScore']);
        this.roc = json['roc'] == null ? null : FHIRObjectFactory.buildFromJSON('MolecularSequenceRoc', json['roc']);
    }
}
