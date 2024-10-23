abstract class Helpers {

  /// used in multiple spots.
  static String periodHelper(Map<String, String> period){
    String? start = period['start'];
    String? end = period['end'];

    String periodString = '';

    if (start != null){
      periodString += 'Start: $start';
    }
    if (start != null && end != null){
      periodString += ', ';
    }
    if (end != null){
      periodString += 'End: $end';
    }
  return periodString;
  }
}