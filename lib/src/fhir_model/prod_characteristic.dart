import 'extension.dart';
import 'fhir_object_factory.dart';
import 'quantity.dart';
import 'element.dart';
import 'attachment.dart';
import 'codeable_concept.dart';
/// The marketing status describes the date when a medicinal product is actually put on the market or the date as of which it is no longer available.
class ProdCharacteristic {
    /// Unique id for the element within a resource (for internal references). This may be any string value that does not contain spaces.
    String id;
    /// May be used to represent additional information that is not part of the basic definition of the element. To make the use of extensions safe and manageable, there is a strict set of governance  applied to the definition and use of extensions. Though any implementer can define an extension, there is a set of requirements that SHALL be met as part of the definition of the extension.
    List<Extension> extension;
    /// May be used to represent additional information that is not part of the basic definition of the element and that modifies the understanding of the element in which it is contained and/or the understanding of the containing element's descendants. Usually modifier elements provide negation or qualification. To make the use of extensions safe and manageable, there is a strict set of governance applied to the definition and use of extensions. Though any implementer can define an extension, there is a set of requirements that SHALL be met as part of the definition of the extension. Applications processing a resource are required to check for modifier extensions.
    /// 
    /// Modifier extensions SHALL NOT change the meaning of any elements on Resource or DomainResource (including cannot change the meaning of modifierExtension itself).
    List<Extension> modifierExtension;
    /// Where applicable, the height can be specified using a numerical value and its unit of measurement The unit of measurement shall be specified in accordance with ISO 11240 and the resulting terminology The symbol and the symbol identifier shall be used.
    Quantity height;
    /// Where applicable, the width can be specified using a numerical value and its unit of measurement The unit of measurement shall be specified in accordance with ISO 11240 and the resulting terminology The symbol and the symbol identifier shall be used.
    Quantity width;
    /// Where applicable, the depth can be specified using a numerical value and its unit of measurement The unit of measurement shall be specified in accordance with ISO 11240 and the resulting terminology The symbol and the symbol identifier shall be used.
    Quantity depth;
    /// Where applicable, the weight can be specified using a numerical value and its unit of measurement The unit of measurement shall be specified in accordance with ISO 11240 and the resulting terminology The symbol and the symbol identifier shall be used.
    Quantity weight;
    /// Where applicable, the nominal volume can be specified using a numerical value and its unit of measurement The unit of measurement shall be specified in accordance with ISO 11240 and the resulting terminology The symbol and the symbol identifier shall be used.
    Quantity nominalVolume;
    /// Where applicable, the external diameter can be specified using a numerical value and its unit of measurement The unit of measurement shall be specified in accordance with ISO 11240 and the resulting terminology The symbol and the symbol identifier shall be used.
    Quantity externalDiameter;
    /// Where applicable, the shape can be specified An appropriate controlled vocabulary shall be used The term and the term identifier shall be used.
    String shape;
    /// Extensions for shape
    Element extShape;
    /// Where applicable, the color can be specified An appropriate controlled vocabulary shall be used The term and the term identifier shall be used.
    List<String> color;
    /// Extensions for color
    List<Element> extColor;
    /// Where applicable, the imprint can be specified as text.
    List<String> imprint;
    /// Extensions for imprint
    List<Element> extImprint;
    /// Where applicable, the image can be provided The format of the image attachment shall be specified by regional implementations.
    List<Attachment> image;
    /// Where applicable, the scoring can be specified An appropriate controlled vocabulary shall be used The term and the term identifier shall be used.
    CodeableConcept scoring;
 
    ProdCharacteristic.fromJSON( Map json ){
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
        this.height = json['height'] == null ? null : FHIRObjectFactory.buildFromJSON('Quantity', json['height']);
        this.width = json['width'] == null ? null : FHIRObjectFactory.buildFromJSON('Quantity', json['width']);
        this.depth = json['depth'] == null ? null : FHIRObjectFactory.buildFromJSON('Quantity', json['depth']);
        this.weight = json['weight'] == null ? null : FHIRObjectFactory.buildFromJSON('Quantity', json['weight']);
        this.nominalVolume = json['nominalVolume'] == null ? null : FHIRObjectFactory.buildFromJSON('Quantity', json['nominalVolume']);
        this.externalDiameter = json['externalDiameter'] == null ? null : FHIRObjectFactory.buildFromJSON('Quantity', json['externalDiameter']);
        this.shape = json['shape'];
        this.extShape = json['_shape'] == null ? null : FHIRObjectFactory.buildFromJSON('Element', json['_shape']);
        this.color = List<String>();
        if (json['color'] != null && json['color'].length > 0) {
          if( json['color'] is List ){
            json['color'].forEach((i){
              this.color.add(i);
            });
          } else {
            // this handles the case when the list only has one object and does not return as a list
            var i = json['color'];
            this.color.add(i);
          }          
        }
        this.extColor = List<Element>();
        if (json['_color'] != null && json['_color'].length > 0) {
          if( json['_color'] is List ){
            json['_color'].forEach((i){
              this.extColor.add(FHIRObjectFactory.buildFromJSON('Element', i));
            });
          } else {
            // this handles the case when the list only has one object and does not return as a list
            var i = json['_color'];
            this.extColor.add(FHIRObjectFactory.buildFromJSON('Element', i));
          }          
        }
        this.imprint = List<String>();
        if (json['imprint'] != null && json['imprint'].length > 0) {
          if( json['imprint'] is List ){
            json['imprint'].forEach((i){
              this.imprint.add(i);
            });
          } else {
            // this handles the case when the list only has one object and does not return as a list
            var i = json['imprint'];
            this.imprint.add(i);
          }          
        }
        this.extImprint = List<Element>();
        if (json['_imprint'] != null && json['_imprint'].length > 0) {
          if( json['_imprint'] is List ){
            json['_imprint'].forEach((i){
              this.extImprint.add(FHIRObjectFactory.buildFromJSON('Element', i));
            });
          } else {
            // this handles the case when the list only has one object and does not return as a list
            var i = json['_imprint'];
            this.extImprint.add(FHIRObjectFactory.buildFromJSON('Element', i));
          }          
        }
        this.image = List<Attachment>();
        if (json['image'] != null && json['image'].length > 0) {
          if( json['image'] is List ){
            json['image'].forEach((i){
              this.image.add(FHIRObjectFactory.buildFromJSON('Attachment', i));
            });
          } else {
            // this handles the case when the list only has one object and does not return as a list
            var i = json['image'];
            this.image.add(FHIRObjectFactory.buildFromJSON('Attachment', i));
          }          
        }
        this.scoring = json['scoring'] == null ? null : FHIRObjectFactory.buildFromJSON('CodeableConcept', json['scoring']);
    }
}
