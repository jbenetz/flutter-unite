import 'extension.dart';
import 'fhir_object_factory.dart';
import 'quantity.dart';
import 'element.dart';
/// A series of measurements taken by a device, with upper and lower limits. There may be more than one dimension in the data.
class SampledData {
    /// Unique id for the element within a resource (for internal references). This may be any string value that does not contain spaces.
    String id;
    /// May be used to represent additional information that is not part of the basic definition of the element. To make the use of extensions safe and manageable, there is a strict set of governance  applied to the definition and use of extensions. Though any implementer can define an extension, there is a set of requirements that SHALL be met as part of the definition of the extension.
    List<Extension> extension;
    /// The base quantity that a measured value of zero represents. In addition, this provides the units of the entire measurement series.
    Quantity origin;
    /// The length of time between sampling times, measured in milliseconds.
    double period;
    /// Extensions for period
    Element extPeriod;
    /// A correction factor that is applied to the sampled data points before they are added to the origin.
    double factor;
    /// Extensions for factor
    Element extFactor;
    /// The lower limit of detection of the measured points. This is needed if any of the data points have the value "L" (lower than detection limit).
    double lowerLimit;
    /// Extensions for lowerLimit
    Element extLowerLimit;
    /// The upper limit of detection of the measured points. This is needed if any of the data points have the value "U" (higher than detection limit).
    double upperLimit;
    /// Extensions for upperLimit
    Element extUpperLimit;
    /// The number of sample points at each time point. If this value is greater than one, then the dimensions will be interlaced - all the sample points for a point in time will be recorded at once.
    int dimensions;
    /// Extensions for dimensions
    Element extDimensions;
    /// A series of data points which are decimal values separated by a single space (character u20). The special values "E" (error), "L" (below detection limit) and "U" (above detection limit) can also be used in place of a decimal value.
    String data;
    /// Extensions for data
    Element extData;
 
    SampledData.fromJSON( Map json ){
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
        this.origin = json['origin'] == null ? null : FHIRObjectFactory.buildFromJSON('Quantity', json['origin']);
        if( json['period'] != null && json['period'] is int ) {
          this.period = json['period'].toDouble();
        } else {
          this.period = json['period'];
        }
    
        this.extPeriod = json['_period'] == null ? null : FHIRObjectFactory.buildFromJSON('Element', json['_period']);
        if( json['factor'] != null && json['factor'] is int ) {
          this.factor = json['factor'].toDouble();
        } else {
          this.factor = json['factor'];
        }
    
        this.extFactor = json['_factor'] == null ? null : FHIRObjectFactory.buildFromJSON('Element', json['_factor']);
        if( json['lowerLimit'] != null && json['lowerLimit'] is int ) {
          this.lowerLimit = json['lowerLimit'].toDouble();
        } else {
          this.lowerLimit = json['lowerLimit'];
        }
    
        this.extLowerLimit = json['_lowerLimit'] == null ? null : FHIRObjectFactory.buildFromJSON('Element', json['_lowerLimit']);
        if( json['upperLimit'] != null && json['upperLimit'] is int ) {
          this.upperLimit = json['upperLimit'].toDouble();
        } else {
          this.upperLimit = json['upperLimit'];
        }
    
        this.extUpperLimit = json['_upperLimit'] == null ? null : FHIRObjectFactory.buildFromJSON('Element', json['_upperLimit']);
        this.dimensions = json['dimensions'];
        this.extDimensions = json['_dimensions'] == null ? null : FHIRObjectFactory.buildFromJSON('Element', json['_dimensions']);
        this.data = json['data'];
        this.extData = json['_data'] == null ? null : FHIRObjectFactory.buildFromJSON('Element', json['_data']);
    }
}
