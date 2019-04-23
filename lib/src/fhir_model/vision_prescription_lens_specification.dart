import 'extension.dart';
import 'fhir_object_factory.dart';
import 'codeable_concept.dart';
import 'element.dart';
import 'vision_prescription_prism.dart';
import 'quantity.dart';
import 'annotation.dart';
/// An authorization for the provision of glasses and/or contact lenses to a patient.
class VisionPrescriptionLensSpecification {
    /// Unique id for the element within a resource (for internal references). This may be any string value that does not contain spaces.
    String id;
    /// May be used to represent additional information that is not part of the basic definition of the element. To make the use of extensions safe and manageable, there is a strict set of governance  applied to the definition and use of extensions. Though any implementer can define an extension, there is a set of requirements that SHALL be met as part of the definition of the extension.
    List<Extension> extension;
    /// May be used to represent additional information that is not part of the basic definition of the element and that modifies the understanding of the element in which it is contained and/or the understanding of the containing element's descendants. Usually modifier elements provide negation or qualification. To make the use of extensions safe and manageable, there is a strict set of governance applied to the definition and use of extensions. Though any implementer can define an extension, there is a set of requirements that SHALL be met as part of the definition of the extension. Applications processing a resource are required to check for modifier extensions.
    /// 
    /// Modifier extensions SHALL NOT change the meaning of any elements on Resource or DomainResource (including cannot change the meaning of modifierExtension itself).
    List<Extension> modifierExtension;
    /// Identifies the type of vision correction product which is required for the patient.
    CodeableConcept product;
    /// The eye for which the lens specification applies.
    String eye;
    /// Extensions for eye
    Element extEye;
    /// Lens power measured in dioptres (0.25 units).
    double sphere;
    /// Extensions for sphere
    Element extSphere;
    /// Power adjustment for astigmatism measured in dioptres (0.25 units).
    double cylinder;
    /// Extensions for cylinder
    Element extCylinder;
    /// Adjustment for astigmatism measured in integer degrees.
    int axis;
    /// Extensions for axis
    Element extAxis;
    /// Allows for adjustment on two axis.
    List<VisionPrescriptionPrism> prism;
    /// Power adjustment for multifocal lenses measured in dioptres (0.25 units).
    double add;
    /// Extensions for add
    Element extAdd;
    /// Contact lens power measured in dioptres (0.25 units).
    double power;
    /// Extensions for power
    Element extPower;
    /// Back curvature measured in millimetres.
    double backCurve;
    /// Extensions for backCurve
    Element extBackCurve;
    /// Contact lens diameter measured in millimetres.
    double diameter;
    /// Extensions for diameter
    Element extDiameter;
    /// The recommended maximum wear period for the lens.
    Quantity duration;
    /// Special color or pattern.
    String color;
    /// Extensions for color
    Element extColor;
    /// Brand recommendations or restrictions.
    String brand;
    /// Extensions for brand
    Element extBrand;
    /// Notes for special requirements such as coatings and lens materials.
    List<Annotation> note;
 
    VisionPrescriptionLensSpecification.fromJSON( Map json ){
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
        this.product = json['product'] == null ? null : FHIRObjectFactory.buildFromJSON('CodeableConcept', json['product']);
        this.eye = json['eye'];
        this.extEye = json['_eye'] == null ? null : FHIRObjectFactory.buildFromJSON('Element', json['_eye']);
        if( json['sphere'] != null && json['sphere'] is int ) {
          this.sphere = json['sphere'].toDouble();
        } else {
          this.sphere = json['sphere'];
        }
    
        this.extSphere = json['_sphere'] == null ? null : FHIRObjectFactory.buildFromJSON('Element', json['_sphere']);
        if( json['cylinder'] != null && json['cylinder'] is int ) {
          this.cylinder = json['cylinder'].toDouble();
        } else {
          this.cylinder = json['cylinder'];
        }
    
        this.extCylinder = json['_cylinder'] == null ? null : FHIRObjectFactory.buildFromJSON('Element', json['_cylinder']);
        this.axis = json['axis'];
        this.extAxis = json['_axis'] == null ? null : FHIRObjectFactory.buildFromJSON('Element', json['_axis']);
        this.prism = List<VisionPrescriptionPrism>();
        if (json['prism'] != null && json['prism'].length > 0) {
          if( json['prism'] is List ){
            json['prism'].forEach((i){
              this.prism.add(FHIRObjectFactory.buildFromJSON('VisionPrescriptionPrism', i));
            });
          } else {
            // this handles the case when the list only has one object and does not return as a list
            var i = json['prism'];
            this.prism.add(FHIRObjectFactory.buildFromJSON('VisionPrescriptionPrism', i));
          }          
        }
        if( json['add'] != null && json['add'] is int ) {
          this.add = json['add'].toDouble();
        } else {
          this.add = json['add'];
        }
    
        this.extAdd = json['_add'] == null ? null : FHIRObjectFactory.buildFromJSON('Element', json['_add']);
        if( json['power'] != null && json['power'] is int ) {
          this.power = json['power'].toDouble();
        } else {
          this.power = json['power'];
        }
    
        this.extPower = json['_power'] == null ? null : FHIRObjectFactory.buildFromJSON('Element', json['_power']);
        if( json['backCurve'] != null && json['backCurve'] is int ) {
          this.backCurve = json['backCurve'].toDouble();
        } else {
          this.backCurve = json['backCurve'];
        }
    
        this.extBackCurve = json['_backCurve'] == null ? null : FHIRObjectFactory.buildFromJSON('Element', json['_backCurve']);
        if( json['diameter'] != null && json['diameter'] is int ) {
          this.diameter = json['diameter'].toDouble();
        } else {
          this.diameter = json['diameter'];
        }
    
        this.extDiameter = json['_diameter'] == null ? null : FHIRObjectFactory.buildFromJSON('Element', json['_diameter']);
        this.duration = json['duration'] == null ? null : FHIRObjectFactory.buildFromJSON('Quantity', json['duration']);
        this.color = json['color'];
        this.extColor = json['_color'] == null ? null : FHIRObjectFactory.buildFromJSON('Element', json['_color']);
        this.brand = json['brand'];
        this.extBrand = json['_brand'] == null ? null : FHIRObjectFactory.buildFromJSON('Element', json['_brand']);
        this.note = List<Annotation>();
        if (json['note'] != null && json['note'].length > 0) {
          if( json['note'] is List ){
            json['note'].forEach((i){
              this.note.add(FHIRObjectFactory.buildFromJSON('Annotation', i));
            });
          } else {
            // this handles the case when the list only has one object and does not return as a list
            var i = json['note'];
            this.note.add(FHIRObjectFactory.buildFromJSON('Annotation', i));
          }          
        }
    }
}
