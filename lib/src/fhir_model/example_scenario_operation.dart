import 'extension.dart';
import 'fhir_object_factory.dart';
import 'element.dart';
import 'example_scenario_contained_instance.dart';
/// Example of workflow instance.
class ExampleScenarioOperation {
    /// Unique id for the element within a resource (for internal references). This may be any string value that does not contain spaces.
    String id;
    /// May be used to represent additional information that is not part of the basic definition of the element. To make the use of extensions safe and manageable, there is a strict set of governance  applied to the definition and use of extensions. Though any implementer can define an extension, there is a set of requirements that SHALL be met as part of the definition of the extension.
    List<Extension> extension;
    /// May be used to represent additional information that is not part of the basic definition of the element and that modifies the understanding of the element in which it is contained and/or the understanding of the containing element's descendants. Usually modifier elements provide negation or qualification. To make the use of extensions safe and manageable, there is a strict set of governance applied to the definition and use of extensions. Though any implementer can define an extension, there is a set of requirements that SHALL be met as part of the definition of the extension. Applications processing a resource are required to check for modifier extensions.
    /// 
    /// Modifier extensions SHALL NOT change the meaning of any elements on Resource or DomainResource (including cannot change the meaning of modifierExtension itself).
    List<Extension> modifierExtension;
    /// The sequential number of the interaction, e.g. 1.2.5.
    String number;
    /// Extensions for number
    Element extNumber;
    /// The type of operation - CRUD.
    String type;
    /// Extensions for type
    Element extType;
    /// The human-friendly name of the interaction.
    String name;
    /// Extensions for name
    Element extName;
    /// Who starts the transaction.
    String initiator;
    /// Extensions for initiator
    Element extInitiator;
    /// Who receives the transaction.
    String receiver;
    /// Extensions for receiver
    Element extReceiver;
    /// A comment to be inserted in the diagram.
    String description;
    /// Extensions for description
    Element extDescription;
    /// Whether the initiator is deactivated right after the transaction.
    bool initiatorActive;
    /// Extensions for initiatorActive
    Element extInitiatorActive;
    /// Whether the receiver is deactivated right after the transaction.
    bool receiverActive;
    /// Extensions for receiverActive
    Element extReceiverActive;
    /// Each resource instance used by the initiator.
    ExampleScenarioContainedInstance request;
    /// Each resource instance used by the responder.
    ExampleScenarioContainedInstance response;
 
    ExampleScenarioOperation.fromJSON( Map json ){
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
        this.number = json['number'];
        this.extNumber = json['_number'] == null ? null : FHIRObjectFactory.buildFromJSON('Element', json['_number']);
        this.type = json['type'];
        this.extType = json['_type'] == null ? null : FHIRObjectFactory.buildFromJSON('Element', json['_type']);
        this.name = json['name'];
        this.extName = json['_name'] == null ? null : FHIRObjectFactory.buildFromJSON('Element', json['_name']);
        this.initiator = json['initiator'];
        this.extInitiator = json['_initiator'] == null ? null : FHIRObjectFactory.buildFromJSON('Element', json['_initiator']);
        this.receiver = json['receiver'];
        this.extReceiver = json['_receiver'] == null ? null : FHIRObjectFactory.buildFromJSON('Element', json['_receiver']);
        this.description = json['description'];
        this.extDescription = json['_description'] == null ? null : FHIRObjectFactory.buildFromJSON('Element', json['_description']);
        this.initiatorActive = json['initiatorActive'];
        this.extInitiatorActive = json['_initiatorActive'] == null ? null : FHIRObjectFactory.buildFromJSON('Element', json['_initiatorActive']);
        this.receiverActive = json['receiverActive'];
        this.extReceiverActive = json['_receiverActive'] == null ? null : FHIRObjectFactory.buildFromJSON('Element', json['_receiverActive']);
        this.request = json['request'] == null ? null : FHIRObjectFactory.buildFromJSON('ExampleScenarioContainedInstance', json['request']);
        this.response = json['response'] == null ? null : FHIRObjectFactory.buildFromJSON('ExampleScenarioContainedInstance', json['response']);
    }
}
