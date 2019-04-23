import 'extension.dart';
import 'fhir_object_factory.dart';
import 'duration.dart';
import 'range.dart';
import 'period.dart';
import 'element.dart';
/// Specifies an event that may occur multiple times. Timing schedules are used to record when things are planned, expected or requested to occur. The most common usage is in dosage instructions for medications. They are also used when planning care of various kinds, and may be used for reporting the schedule to which past regular activities were carried out.
class TimingRepeat {
    /// Unique id for the element within a resource (for internal references). This may be any string value that does not contain spaces.
    String id;
    /// May be used to represent additional information that is not part of the basic definition of the element. To make the use of extensions safe and manageable, there is a strict set of governance  applied to the definition and use of extensions. Though any implementer can define an extension, there is a set of requirements that SHALL be met as part of the definition of the extension.
    List<Extension> extension;
    /// May be used to represent additional information that is not part of the basic definition of the element and that modifies the understanding of the element in which it is contained and/or the understanding of the containing element's descendants. Usually modifier elements provide negation or qualification. To make the use of extensions safe and manageable, there is a strict set of governance applied to the definition and use of extensions. Though any implementer can define an extension, there is a set of requirements that SHALL be met as part of the definition of the extension. Applications processing a resource are required to check for modifier extensions.
    /// 
    /// Modifier extensions SHALL NOT change the meaning of any elements on Resource or DomainResource (including cannot change the meaning of modifierExtension itself).
    List<Extension> modifierExtension;
    /// Either a duration for the length of the timing schedule, a range of possible length, or outer bounds for start and/or end limits of the timing schedule.
    Duration boundsDuration;
    /// Either a duration for the length of the timing schedule, a range of possible length, or outer bounds for start and/or end limits of the timing schedule.
    Range boundsRange;
    /// Either a duration for the length of the timing schedule, a range of possible length, or outer bounds for start and/or end limits of the timing schedule.
    Period boundsPeriod;
    /// A total count of the desired number of repetitions across the duration of the entire timing specification. If countMax is present, this element indicates the lower bound of the allowed range of count values.
    int count;
    /// Extensions for count
    Element extCount;
    /// If present, indicates that the count is a range - so to perform the action between [count] and [countMax] times.
    int countMax;
    /// Extensions for countMax
    Element extCountMax;
    /// How long this thing happens for when it happens. If durationMax is present, this element indicates the lower bound of the allowed range of the duration.
    double duration;
    /// Extensions for duration
    Element extDuration;
    /// If present, indicates that the duration is a range - so to perform the action between [duration] and [durationMax] time length.
    double durationMax;
    /// Extensions for durationMax
    Element extDurationMax;
    /// The units of time for the duration, in UCUM units.
    String durationUnit;
    /// Extensions for durationUnit
    Element extDurationUnit;
    /// The number of times to repeat the action within the specified period. If frequencyMax is present, this element indicates the lower bound of the allowed range of the frequency.
    int frequency;
    /// Extensions for frequency
    Element extFrequency;
    /// If present, indicates that the frequency is a range - so to repeat between [frequency] and [frequencyMax] times within the period or period range.
    int frequencyMax;
    /// Extensions for frequencyMax
    Element extFrequencyMax;
    /// Indicates the duration of time over which repetitions are to occur; e.g. to express "3 times per day", 3 would be the frequency and "1 day" would be the period. If periodMax is present, this element indicates the lower bound of the allowed range of the period length.
    double period;
    /// Extensions for period
    Element extPeriod;
    /// If present, indicates that the period is a range from [period] to [periodMax], allowing expressing concepts such as "do this once every 3-5 days.
    double periodMax;
    /// Extensions for periodMax
    Element extPeriodMax;
    /// The units of time for the period in UCUM units.
    String periodUnit;
    /// Extensions for periodUnit
    Element extPeriodUnit;
    /// If one or more days of week is provided, then the action happens only on the specified day(s).
    List<String> dayOfWeek;
    /// Extensions for dayOfWeek
    List<Element> extDayOfWeek;
    /// Specified time of day for action to take place.
    List<String> timeOfDay;
    /// Extensions for timeOfDay
    List<Element> extTimeOfDay;
    /// Extensions for when
    List<Element> extWhen;
    /// The number of minutes from the event. If the event code does not indicate whether the minutes is before or after the event, then the offset is assumed to be after the event.
    int offset;
    /// Extensions for offset
    Element extOffset;
 
    TimingRepeat.fromJSON( Map json ){
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
        this.boundsDuration = json['boundsDuration'] == null ? null : FHIRObjectFactory.buildFromJSON('Duration', json['boundsDuration']);
        this.boundsRange = json['boundsRange'] == null ? null : FHIRObjectFactory.buildFromJSON('Range', json['boundsRange']);
        this.boundsPeriod = json['boundsPeriod'] == null ? null : FHIRObjectFactory.buildFromJSON('Period', json['boundsPeriod']);
        this.count = json['count'];
        this.extCount = json['_count'] == null ? null : FHIRObjectFactory.buildFromJSON('Element', json['_count']);
        this.countMax = json['countMax'];
        this.extCountMax = json['_countMax'] == null ? null : FHIRObjectFactory.buildFromJSON('Element', json['_countMax']);
        if( json['duration'] != null && json['duration'] is int ) {
          this.duration = json['duration'].toDouble();
        } else {
          this.duration = json['duration'];
        }
    
        this.extDuration = json['_duration'] == null ? null : FHIRObjectFactory.buildFromJSON('Element', json['_duration']);
        if( json['durationMax'] != null && json['durationMax'] is int ) {
          this.durationMax = json['durationMax'].toDouble();
        } else {
          this.durationMax = json['durationMax'];
        }
    
        this.extDurationMax = json['_durationMax'] == null ? null : FHIRObjectFactory.buildFromJSON('Element', json['_durationMax']);
        this.durationUnit = json['durationUnit'];
        this.extDurationUnit = json['_durationUnit'] == null ? null : FHIRObjectFactory.buildFromJSON('Element', json['_durationUnit']);
        this.frequency = json['frequency'];
        this.extFrequency = json['_frequency'] == null ? null : FHIRObjectFactory.buildFromJSON('Element', json['_frequency']);
        this.frequencyMax = json['frequencyMax'];
        this.extFrequencyMax = json['_frequencyMax'] == null ? null : FHIRObjectFactory.buildFromJSON('Element', json['_frequencyMax']);
        if( json['period'] != null && json['period'] is int ) {
          this.period = json['period'].toDouble();
        } else {
          this.period = json['period'];
        }
    
        this.extPeriod = json['_period'] == null ? null : FHIRObjectFactory.buildFromJSON('Element', json['_period']);
        if( json['periodMax'] != null && json['periodMax'] is int ) {
          this.periodMax = json['periodMax'].toDouble();
        } else {
          this.periodMax = json['periodMax'];
        }
    
        this.extPeriodMax = json['_periodMax'] == null ? null : FHIRObjectFactory.buildFromJSON('Element', json['_periodMax']);
        this.periodUnit = json['periodUnit'];
        this.extPeriodUnit = json['_periodUnit'] == null ? null : FHIRObjectFactory.buildFromJSON('Element', json['_periodUnit']);
        this.dayOfWeek = List<String>();
        if (json['dayOfWeek'] != null && json['dayOfWeek'].length > 0) {
          if( json['dayOfWeek'] is List ){
            json['dayOfWeek'].forEach((i){
              this.dayOfWeek.add(i);
            });
          } else {
            // this handles the case when the list only has one object and does not return as a list
            var i = json['dayOfWeek'];
            this.dayOfWeek.add(i);
          }          
        }
        this.extDayOfWeek = List<Element>();
        if (json['_dayOfWeek'] != null && json['_dayOfWeek'].length > 0) {
          if( json['_dayOfWeek'] is List ){
            json['_dayOfWeek'].forEach((i){
              this.extDayOfWeek.add(FHIRObjectFactory.buildFromJSON('Element', i));
            });
          } else {
            // this handles the case when the list only has one object and does not return as a list
            var i = json['_dayOfWeek'];
            this.extDayOfWeek.add(FHIRObjectFactory.buildFromJSON('Element', i));
          }          
        }
        this.timeOfDay = List<String>();
        if (json['timeOfDay'] != null && json['timeOfDay'].length > 0) {
          if( json['timeOfDay'] is List ){
            json['timeOfDay'].forEach((i){
              this.timeOfDay.add(i);
            });
          } else {
            // this handles the case when the list only has one object and does not return as a list
            var i = json['timeOfDay'];
            this.timeOfDay.add(i);
          }          
        }
        this.extTimeOfDay = List<Element>();
        if (json['_timeOfDay'] != null && json['_timeOfDay'].length > 0) {
          if( json['_timeOfDay'] is List ){
            json['_timeOfDay'].forEach((i){
              this.extTimeOfDay.add(FHIRObjectFactory.buildFromJSON('Element', i));
            });
          } else {
            // this handles the case when the list only has one object and does not return as a list
            var i = json['_timeOfDay'];
            this.extTimeOfDay.add(FHIRObjectFactory.buildFromJSON('Element', i));
          }          
        }
        this.extWhen = List<Element>();
        if (json['_when'] != null && json['_when'].length > 0) {
          if( json['_when'] is List ){
            json['_when'].forEach((i){
              this.extWhen.add(FHIRObjectFactory.buildFromJSON('Element', i));
            });
          } else {
            // this handles the case when the list only has one object and does not return as a list
            var i = json['_when'];
            this.extWhen.add(FHIRObjectFactory.buildFromJSON('Element', i));
          }          
        }
        this.offset = json['offset'];
        this.extOffset = json['_offset'] == null ? null : FHIRObjectFactory.buildFromJSON('Element', json['_offset']);
    }
}
