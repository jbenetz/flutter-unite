import 'extension.dart';
import 'fhir_object_factory.dart';
import 'identifier.dart';
import 'codeable_concept.dart';
import 'quantity.dart';
import 'reference.dart';
import 'prod_characteristic.dart';
import 'product_shelf_life.dart';

/// A medicinal product in a container or package.
class MedicinalProductPackagedPackageItem {
  /// Unique id for the element within a resource (for internal references). This may be any string value that does not contain spaces.
  String id;

  /// May be used to represent additional information that is not part of the basic definition of the element. To make the use of extensions safe and manageable, there is a strict set of governance  applied to the definition and use of extensions. Though any implementer can define an extension, there is a set of requirements that SHALL be met as part of the definition of the extension.
  List<Extension> extension;

  /// May be used to represent additional information that is not part of the basic definition of the element and that modifies the understanding of the element in which it is contained and/or the understanding of the containing element's descendants. Usually modifier elements provide negation or qualification. To make the use of extensions safe and manageable, there is a strict set of governance applied to the definition and use of extensions. Though any implementer can define an extension, there is a set of requirements that SHALL be met as part of the definition of the extension. Applications processing a resource are required to check for modifier extensions.
  ///
  /// Modifier extensions SHALL NOT change the meaning of any elements on Resource or DomainResource (including cannot change the meaning of modifierExtension itself).
  List<Extension> modifierExtension;

  /// Including possibly Data Carrier Identifier.
  List<Identifier> identifier;

  /// The physical type of the container of the medicine.
  CodeableConcept type;

  /// The quantity of this package in the medicinal product, at the current level of packaging. The outermost is always 1.
  Quantity quantity;

  /// Material type of the package item.
  List<CodeableConcept> material;

  /// A possible alternate material for the packaging.
  List<CodeableConcept> alternateMaterial;

  /// A device accompanying a medicinal product.
  List<Reference> device;

  /// The manufactured item as contained in the packaged medicinal product.
  List<Reference> manufacturedItem;

  /// Allows containers within containers.
  List<MedicinalProductPackagedPackageItem> packageItem;

  /// Dimensions, color etc.
  ProdCharacteristic physicalCharacteristics;

  /// Other codeable characteristics.
  List<CodeableConcept> otherCharacteristics;

  /// Shelf Life and storage information.
  List<ProductShelfLife> shelfLifeStorage;

  /// Manufacturer of this Package Item.
  List<Reference> manufacturer;

  MedicinalProductPackagedPackageItem.fromJSON(Map json) {
    this.id = json['id'];
    this.extension = List<Extension>();
    if (json['extension'] != null && json['extension'].length > 0) {
      if (json['extension'] is List) {
        json['extension'].forEach((i) {
          this.extension.add(FHIRObjectFactory.buildFromJSON('Extension', i));
        });
      } else {
        // this handles the case when the list only has one object and does not return as a list
        var i = json['extension'];
        this.extension.add(FHIRObjectFactory.buildFromJSON('Extension', i));
      }
    }
    this.modifierExtension = List<Extension>();
    if (json['modifierExtension'] != null &&
        json['modifierExtension'].length > 0) {
      if (json['modifierExtension'] is List) {
        json['modifierExtension'].forEach((i) {
          this
              .modifierExtension
              .add(FHIRObjectFactory.buildFromJSON('Extension', i));
        });
      } else {
        // this handles the case when the list only has one object and does not return as a list
        var i = json['modifierExtension'];
        this
            .modifierExtension
            .add(FHIRObjectFactory.buildFromJSON('Extension', i));
      }
    }
    this.identifier = List<Identifier>();
    if (json['identifier'] != null && json['identifier'].length > 0) {
      if (json['identifier'] is List) {
        json['identifier'].forEach((i) {
          this.identifier.add(FHIRObjectFactory.buildFromJSON('Identifier', i));
        });
      } else {
        // this handles the case when the list only has one object and does not return as a list
        var i = json['identifier'];
        this.identifier.add(FHIRObjectFactory.buildFromJSON('Identifier', i));
      }
    }
    this.type = json['type'] == null
        ? null
        : FHIRObjectFactory.buildFromJSON('CodeableConcept', json['type']);
    this.quantity = json['quantity'] == null
        ? null
        : FHIRObjectFactory.buildFromJSON('Quantity', json['quantity']);
    this.material = List<CodeableConcept>();
    if (json['material'] != null && json['material'].length > 0) {
      if (json['material'] is List) {
        json['material'].forEach((i) {
          this
              .material
              .add(FHIRObjectFactory.buildFromJSON('CodeableConcept', i));
        });
      } else {
        // this handles the case when the list only has one object and does not return as a list
        var i = json['material'];
        this
            .material
            .add(FHIRObjectFactory.buildFromJSON('CodeableConcept', i));
      }
    }
    this.alternateMaterial = List<CodeableConcept>();
    if (json['alternateMaterial'] != null &&
        json['alternateMaterial'].length > 0) {
      if (json['alternateMaterial'] is List) {
        json['alternateMaterial'].forEach((i) {
          this
              .alternateMaterial
              .add(FHIRObjectFactory.buildFromJSON('CodeableConcept', i));
        });
      } else {
        // this handles the case when the list only has one object and does not return as a list
        var i = json['alternateMaterial'];
        this
            .alternateMaterial
            .add(FHIRObjectFactory.buildFromJSON('CodeableConcept', i));
      }
    }
    this.device = List<Reference>();
    if (json['device'] != null && json['device'].length > 0) {
      if (json['device'] is List) {
        json['device'].forEach((i) {
          this.device.add(FHIRObjectFactory.buildFromJSON('Reference', i));
        });
      } else {
        // this handles the case when the list only has one object and does not return as a list
        var i = json['device'];
        this.device.add(FHIRObjectFactory.buildFromJSON('Reference', i));
      }
    }
    this.manufacturedItem = List<Reference>();
    if (json['manufacturedItem'] != null &&
        json['manufacturedItem'].length > 0) {
      if (json['manufacturedItem'] is List) {
        json['manufacturedItem'].forEach((i) {
          this
              .manufacturedItem
              .add(FHIRObjectFactory.buildFromJSON('Reference', i));
        });
      } else {
        // this handles the case when the list only has one object and does not return as a list
        var i = json['manufacturedItem'];
        this
            .manufacturedItem
            .add(FHIRObjectFactory.buildFromJSON('Reference', i));
      }
    }
    this.packageItem = List<MedicinalProductPackagedPackageItem>();
    if (json['packageItem'] != null && json['packageItem'].length > 0) {
      if (json['packageItem'] is List) {
        json['packageItem'].forEach((i) {
          this.packageItem.add(FHIRObjectFactory.buildFromJSON(
              'MedicinalProductPackagedPackageItem', i));
        });
      } else {
        // this handles the case when the list only has one object and does not return as a list
        var i = json['packageItem'];
        this.packageItem.add(FHIRObjectFactory.buildFromJSON(
            'MedicinalProductPackagedPackageItem', i));
      }
    }
    this.physicalCharacteristics = json['physicalCharacteristics'] == null
        ? null
        : FHIRObjectFactory.buildFromJSON(
            'ProdCharacteristic', json['physicalCharacteristics']);
    this.otherCharacteristics = List<CodeableConcept>();
    if (json['otherCharacteristics'] != null &&
        json['otherCharacteristics'].length > 0) {
      if (json['otherCharacteristics'] is List) {
        json['otherCharacteristics'].forEach((i) {
          this
              .otherCharacteristics
              .add(FHIRObjectFactory.buildFromJSON('CodeableConcept', i));
        });
      } else {
        // this handles the case when the list only has one object and does not return as a list
        var i = json['otherCharacteristics'];
        this
            .otherCharacteristics
            .add(FHIRObjectFactory.buildFromJSON('CodeableConcept', i));
      }
    }
    this.shelfLifeStorage = List<ProductShelfLife>();
    if (json['shelfLifeStorage'] != null &&
        json['shelfLifeStorage'].length > 0) {
      if (json['shelfLifeStorage'] is List) {
        json['shelfLifeStorage'].forEach((i) {
          this
              .shelfLifeStorage
              .add(FHIRObjectFactory.buildFromJSON('ProductShelfLife', i));
        });
      } else {
        // this handles the case when the list only has one object and does not return as a list
        var i = json['shelfLifeStorage'];
        this
            .shelfLifeStorage
            .add(FHIRObjectFactory.buildFromJSON('ProductShelfLife', i));
      }
    }
    this.manufacturer = List<Reference>();
    if (json['manufacturer'] != null && json['manufacturer'].length > 0) {
      if (json['manufacturer'] is List) {
        json['manufacturer'].forEach((i) {
          this
              .manufacturer
              .add(FHIRObjectFactory.buildFromJSON('Reference', i));
        });
      } else {
        // this handles the case when the list only has one object and does not return as a list
        var i = json['manufacturer'];
        this.manufacturer.add(FHIRObjectFactory.buildFromJSON('Reference', i));
      }
    }
  }
}
