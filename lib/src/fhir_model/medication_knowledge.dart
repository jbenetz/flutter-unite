import 'meta.dart';
import 'fhir_object_factory.dart';
import 'element.dart';
import 'narrative.dart';
import 'extension.dart';
import 'codeable_concept.dart';
import 'reference.dart';
import 'quantity.dart';
import 'medication_knowledge_related_medication_knowledge.dart';
import 'medication_knowledge_monograph.dart';
import 'medication_knowledge_ingredient.dart';
import 'medication_knowledge_cost.dart';
import 'medication_knowledge_monitoring_program.dart';
import 'medication_knowledge_administration_guidelines.dart';
import 'medication_knowledge_medicine_classification.dart';
import 'medication_knowledge_packaging.dart';
import 'medication_knowledge_drug_characteristic.dart';
import 'medication_knowledge_regulatory.dart';
import 'medication_knowledge_kinetics.dart';
/// Information about a medication that is used to support knowledge.
class MedicationKnowledge {
    /// The logical id of the resource, as used in the URL for the resource. Once assigned, this value never changes.
    String id;
    /// The metadata about the resource. This is content that is maintained by the infrastructure. Changes to the content might not always be associated with version changes to the resource.
    Meta meta;
    /// A reference to a set of rules that were followed when the resource was constructed, and which must be understood when processing the content. Often, this is a reference to an implementation guide that defines the special rules along with other profiles etc.
    String implicitRules;
    /// Extensions for implicitRules
    Element extImplicitRules;
    /// The base language in which the resource is written.
    String language;
    /// Extensions for language
    Element extLanguage;
    /// A human-readable narrative that contains a summary of the resource and can be used to represent the content of the resource to a human. The narrative need not encode all the structured data, but is required to contain sufficient detail to make it "clinically safe" for a human to just read the narrative. Resource definitions may define what content should be represented in the narrative to ensure clinical safety.
    Narrative text;
    /// May be used to represent additional information that is not part of the basic definition of the resource. To make the use of extensions safe and manageable, there is a strict set of governance  applied to the definition and use of extensions. Though any implementer can define an extension, there is a set of requirements that SHALL be met as part of the definition of the extension.
    List<Extension> extension;
    /// May be used to represent additional information that is not part of the basic definition of the resource and that modifies the understanding of the element that contains it and/or the understanding of the containing element's descendants. Usually modifier elements provide negation or qualification. To make the use of extensions safe and manageable, there is a strict set of governance applied to the definition and use of extensions. Though any implementer is allowed to define an extension, there is a set of requirements that SHALL be met as part of the definition of the extension. Applications processing a resource are required to check for modifier extensions.
    /// 
    /// Modifier extensions SHALL NOT change the meaning of any elements on Resource or DomainResource (including cannot change the meaning of modifierExtension itself).
    List<Extension> modifierExtension;
    /// A code that specifies this medication, or a textual description if no code is available. Usage note: This could be a standard medication code such as a code from RxNorm, SNOMED CT, IDMP etc. It could also be a national or local formulary code, optionally with translations to other code systems.
    CodeableConcept code;
    /// A code to indicate if the medication is in active use.  The status refers to the validity about the information of the medication and not to its medicinal properties.
    String status;
    /// Extensions for status
    Element extStatus;
    /// Describes the details of the manufacturer of the medication product.  This is not intended to represent the distributor of a medication product.
    Reference manufacturer;
    /// Describes the form of the item.  Powder; tablets; capsule.
    CodeableConcept doseForm;
    /// Specific amount of the drug in the packaged product.  For example, when specifying a product that has the same strength (For example, Insulin glargine 100 unit per mL solution for injection), this attribute provides additional clarification of the package amount (For example, 3 mL, 10mL, etc.).
    Quantity amount;
    /// Additional names for a medication, for example, the name(s) given to a medication in different countries.  For example, acetaminophen and paracetamol or salbutamol and albuterol.
    List<String> synonym;
    /// Extensions for synonym
    List<Element> extSynonym;
    /// Associated or related knowledge about a medication.
    List<MedicationKnowledgeRelatedMedicationKnowledge> relatedMedicationKnowledge;
    /// Associated or related medications.  For example, if the medication is a branded product (e.g. Crestor), this is the Therapeutic Moeity (e.g. Rosuvastatin) or if this is a generic medication (e.g. Rosuvastatin), this would link to a branded product (e.g. Crestor).
    List<Reference> associatedMedication;
    /// Category of the medication or product (e.g. branded product, therapeutic moeity, generic product, innovator product, etc.).
    List<CodeableConcept> productType;
    /// Associated documentation about the medication.
    List<MedicationKnowledgeMonograph> monograph;
    /// Identifies a particular constituent of interest in the product.
    List<MedicationKnowledgeIngredient> ingredient;
    /// The instructions for preparing the medication.
    String preparationInstruction;
    /// Extensions for preparationInstruction
    Element extPreparationInstruction;
    /// The intended or approved route of administration.
    List<CodeableConcept> intendedRoute;
    /// The price of the medication.
    List<MedicationKnowledgeCost> cost;
    /// The program under which the medication is reviewed.
    List<MedicationKnowledgeMonitoringProgram> monitoringProgram;
    /// Guidelines for the administration of the medication.
    List<MedicationKnowledgeAdministrationGuidelines> administrationGuidelines;
    /// Categorization of the medication within a formulary or classification system.
    List<MedicationKnowledgeMedicineClassification> medicineClassification;
    /// Information that only applies to packages (not products).
    MedicationKnowledgePackaging packaging;
    /// Specifies descriptive properties of the medicine, such as color, shape, imprints, etc.
    List<MedicationKnowledgeDrugCharacteristic> drugCharacteristic;
    /// Potential clinical issue with or between medication(s) (for example, drug-drug interaction, drug-disease contraindication, drug-allergy interaction, etc.).
    List<Reference> contraindication;
    /// Regulatory information about a medication.
    List<MedicationKnowledgeRegulatory> regulatory;
    /// The time course of drug absorption, distribution, metabolism and excretion of a medication from the body.
    List<MedicationKnowledgeKinetics> kinetics;
 
    MedicationKnowledge.fromJSON( Map json ){
        this.id = json['id'];
        this.meta = json['meta'] == null ? null : FHIRObjectFactory.buildFromJSON('Meta', json['meta']);
        this.implicitRules = json['implicitRules'];
        this.extImplicitRules = json['_implicitRules'] == null ? null : FHIRObjectFactory.buildFromJSON('Element', json['_implicitRules']);
        this.language = json['language'];
        this.extLanguage = json['_language'] == null ? null : FHIRObjectFactory.buildFromJSON('Element', json['_language']);
        this.text = json['text'] == null ? null : FHIRObjectFactory.buildFromJSON('Narrative', json['text']);
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
        this.code = json['code'] == null ? null : FHIRObjectFactory.buildFromJSON('CodeableConcept', json['code']);
        this.status = json['status'];
        this.extStatus = json['_status'] == null ? null : FHIRObjectFactory.buildFromJSON('Element', json['_status']);
        this.manufacturer = json['manufacturer'] == null ? null : FHIRObjectFactory.buildFromJSON('Reference', json['manufacturer']);
        this.doseForm = json['doseForm'] == null ? null : FHIRObjectFactory.buildFromJSON('CodeableConcept', json['doseForm']);
        this.amount = json['amount'] == null ? null : FHIRObjectFactory.buildFromJSON('Quantity', json['amount']);
        this.synonym = List<String>();
        if (json['synonym'] != null && json['synonym'].length > 0) {
          if( json['synonym'] is List ){
            json['synonym'].forEach((i){
              this.synonym.add(i);
            });
          } else {
            // this handles the case when the list only has one object and does not return as a list
            var i = json['synonym'];
            this.synonym.add(i);
          }          
        }
        this.extSynonym = List<Element>();
        if (json['_synonym'] != null && json['_synonym'].length > 0) {
          if( json['_synonym'] is List ){
            json['_synonym'].forEach((i){
              this.extSynonym.add(FHIRObjectFactory.buildFromJSON('Element', i));
            });
          } else {
            // this handles the case when the list only has one object and does not return as a list
            var i = json['_synonym'];
            this.extSynonym.add(FHIRObjectFactory.buildFromJSON('Element', i));
          }          
        }
        this.relatedMedicationKnowledge = List<MedicationKnowledgeRelatedMedicationKnowledge>();
        if (json['relatedMedicationKnowledge'] != null && json['relatedMedicationKnowledge'].length > 0) {
          if( json['relatedMedicationKnowledge'] is List ){
            json['relatedMedicationKnowledge'].forEach((i){
              this.relatedMedicationKnowledge.add(FHIRObjectFactory.buildFromJSON('MedicationKnowledgeRelatedMedicationKnowledge', i));
            });
          } else {
            // this handles the case when the list only has one object and does not return as a list
            var i = json['relatedMedicationKnowledge'];
            this.relatedMedicationKnowledge.add(FHIRObjectFactory.buildFromJSON('MedicationKnowledgeRelatedMedicationKnowledge', i));
          }          
        }
        this.associatedMedication = List<Reference>();
        if (json['associatedMedication'] != null && json['associatedMedication'].length > 0) {
          if( json['associatedMedication'] is List ){
            json['associatedMedication'].forEach((i){
              this.associatedMedication.add(FHIRObjectFactory.buildFromJSON('Reference', i));
            });
          } else {
            // this handles the case when the list only has one object and does not return as a list
            var i = json['associatedMedication'];
            this.associatedMedication.add(FHIRObjectFactory.buildFromJSON('Reference', i));
          }          
        }
        this.productType = List<CodeableConcept>();
        if (json['productType'] != null && json['productType'].length > 0) {
          if( json['productType'] is List ){
            json['productType'].forEach((i){
              this.productType.add(FHIRObjectFactory.buildFromJSON('CodeableConcept', i));
            });
          } else {
            // this handles the case when the list only has one object and does not return as a list
            var i = json['productType'];
            this.productType.add(FHIRObjectFactory.buildFromJSON('CodeableConcept', i));
          }          
        }
        this.monograph = List<MedicationKnowledgeMonograph>();
        if (json['monograph'] != null && json['monograph'].length > 0) {
          if( json['monograph'] is List ){
            json['monograph'].forEach((i){
              this.monograph.add(FHIRObjectFactory.buildFromJSON('MedicationKnowledgeMonograph', i));
            });
          } else {
            // this handles the case when the list only has one object and does not return as a list
            var i = json['monograph'];
            this.monograph.add(FHIRObjectFactory.buildFromJSON('MedicationKnowledgeMonograph', i));
          }          
        }
        this.ingredient = List<MedicationKnowledgeIngredient>();
        if (json['ingredient'] != null && json['ingredient'].length > 0) {
          if( json['ingredient'] is List ){
            json['ingredient'].forEach((i){
              this.ingredient.add(FHIRObjectFactory.buildFromJSON('MedicationKnowledgeIngredient', i));
            });
          } else {
            // this handles the case when the list only has one object and does not return as a list
            var i = json['ingredient'];
            this.ingredient.add(FHIRObjectFactory.buildFromJSON('MedicationKnowledgeIngredient', i));
          }          
        }
        this.preparationInstruction = json['preparationInstruction'];
        this.extPreparationInstruction = json['_preparationInstruction'] == null ? null : FHIRObjectFactory.buildFromJSON('Element', json['_preparationInstruction']);
        this.intendedRoute = List<CodeableConcept>();
        if (json['intendedRoute'] != null && json['intendedRoute'].length > 0) {
          if( json['intendedRoute'] is List ){
            json['intendedRoute'].forEach((i){
              this.intendedRoute.add(FHIRObjectFactory.buildFromJSON('CodeableConcept', i));
            });
          } else {
            // this handles the case when the list only has one object and does not return as a list
            var i = json['intendedRoute'];
            this.intendedRoute.add(FHIRObjectFactory.buildFromJSON('CodeableConcept', i));
          }          
        }
        this.cost = List<MedicationKnowledgeCost>();
        if (json['cost'] != null && json['cost'].length > 0) {
          if( json['cost'] is List ){
            json['cost'].forEach((i){
              this.cost.add(FHIRObjectFactory.buildFromJSON('MedicationKnowledgeCost', i));
            });
          } else {
            // this handles the case when the list only has one object and does not return as a list
            var i = json['cost'];
            this.cost.add(FHIRObjectFactory.buildFromJSON('MedicationKnowledgeCost', i));
          }          
        }
        this.monitoringProgram = List<MedicationKnowledgeMonitoringProgram>();
        if (json['monitoringProgram'] != null && json['monitoringProgram'].length > 0) {
          if( json['monitoringProgram'] is List ){
            json['monitoringProgram'].forEach((i){
              this.monitoringProgram.add(FHIRObjectFactory.buildFromJSON('MedicationKnowledgeMonitoringProgram', i));
            });
          } else {
            // this handles the case when the list only has one object and does not return as a list
            var i = json['monitoringProgram'];
            this.monitoringProgram.add(FHIRObjectFactory.buildFromJSON('MedicationKnowledgeMonitoringProgram', i));
          }          
        }
        this.administrationGuidelines = List<MedicationKnowledgeAdministrationGuidelines>();
        if (json['administrationGuidelines'] != null && json['administrationGuidelines'].length > 0) {
          if( json['administrationGuidelines'] is List ){
            json['administrationGuidelines'].forEach((i){
              this.administrationGuidelines.add(FHIRObjectFactory.buildFromJSON('MedicationKnowledgeAdministrationGuidelines', i));
            });
          } else {
            // this handles the case when the list only has one object and does not return as a list
            var i = json['administrationGuidelines'];
            this.administrationGuidelines.add(FHIRObjectFactory.buildFromJSON('MedicationKnowledgeAdministrationGuidelines', i));
          }          
        }
        this.medicineClassification = List<MedicationKnowledgeMedicineClassification>();
        if (json['medicineClassification'] != null && json['medicineClassification'].length > 0) {
          if( json['medicineClassification'] is List ){
            json['medicineClassification'].forEach((i){
              this.medicineClassification.add(FHIRObjectFactory.buildFromJSON('MedicationKnowledgeMedicineClassification', i));
            });
          } else {
            // this handles the case when the list only has one object and does not return as a list
            var i = json['medicineClassification'];
            this.medicineClassification.add(FHIRObjectFactory.buildFromJSON('MedicationKnowledgeMedicineClassification', i));
          }          
        }
        this.packaging = json['packaging'] == null ? null : FHIRObjectFactory.buildFromJSON('MedicationKnowledgePackaging', json['packaging']);
        this.drugCharacteristic = List<MedicationKnowledgeDrugCharacteristic>();
        if (json['drugCharacteristic'] != null && json['drugCharacteristic'].length > 0) {
          if( json['drugCharacteristic'] is List ){
            json['drugCharacteristic'].forEach((i){
              this.drugCharacteristic.add(FHIRObjectFactory.buildFromJSON('MedicationKnowledgeDrugCharacteristic', i));
            });
          } else {
            // this handles the case when the list only has one object and does not return as a list
            var i = json['drugCharacteristic'];
            this.drugCharacteristic.add(FHIRObjectFactory.buildFromJSON('MedicationKnowledgeDrugCharacteristic', i));
          }          
        }
        this.contraindication = List<Reference>();
        if (json['contraindication'] != null && json['contraindication'].length > 0) {
          if( json['contraindication'] is List ){
            json['contraindication'].forEach((i){
              this.contraindication.add(FHIRObjectFactory.buildFromJSON('Reference', i));
            });
          } else {
            // this handles the case when the list only has one object and does not return as a list
            var i = json['contraindication'];
            this.contraindication.add(FHIRObjectFactory.buildFromJSON('Reference', i));
          }          
        }
        this.regulatory = List<MedicationKnowledgeRegulatory>();
        if (json['regulatory'] != null && json['regulatory'].length > 0) {
          if( json['regulatory'] is List ){
            json['regulatory'].forEach((i){
              this.regulatory.add(FHIRObjectFactory.buildFromJSON('MedicationKnowledgeRegulatory', i));
            });
          } else {
            // this handles the case when the list only has one object and does not return as a list
            var i = json['regulatory'];
            this.regulatory.add(FHIRObjectFactory.buildFromJSON('MedicationKnowledgeRegulatory', i));
          }          
        }
        this.kinetics = List<MedicationKnowledgeKinetics>();
        if (json['kinetics'] != null && json['kinetics'].length > 0) {
          if( json['kinetics'] is List ){
            json['kinetics'].forEach((i){
              this.kinetics.add(FHIRObjectFactory.buildFromJSON('MedicationKnowledgeKinetics', i));
            });
          } else {
            // this handles the case when the list only has one object and does not return as a list
            var i = json['kinetics'];
            this.kinetics.add(FHIRObjectFactory.buildFromJSON('MedicationKnowledgeKinetics', i));
          }          
        }
    }
}
