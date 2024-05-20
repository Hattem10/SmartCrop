import 'package:flutter/services.dart';
import 'package:tflite_flutter/tflite_flutter.dart' as tfl;

class Classifier {
  var interpreter;
  List<String> labels = [];
  List<double> means = [
    50.55181818,
    53.36272727,
    48.14909091,
    25.61624385,
    71.48177922,
    6.46948007,
    103.46365542
  ];
  List<double> std = [
    36.90894258,
    32.97838509,
    50.63641835,
    5.06259762,
    22.25875106,
    0.77376177,
    54.94589656
  ];
  Future<void> loadModel() async {
    interpreter = await tfl.Interpreter.fromAsset(
        'assets/models/crop_recommendation_model.tflite');
    final s = await rootBundle.loadString('assets/models/labels.txt');
    labels = s.split('\n').map((name) => name.trim()).toList();
    labels.removeWhere((name) => name.isEmpty);
  }

  Future<Map<String, double>> runModel({required List<double> input}) async {
    Map<String, double> result = {};
    for (int i = 0; i < input.length; i++) {
      input[i] = (input[i] - means[i]) / std[i];
    }

    var output = List.filled(1 * 22, 0).reshape([1, 22]);

    if (interpreter != null) {
      interpreter.run([input], output);
    }

    if (labels.isNotEmpty) {
      int index = 0;
      for (String label in labels) {
        final percentage = output[0][index] * 100.0 as double;
        result.addEntries({label: percentage}.entries);
        index++;
      }
    }

    return result;
  }
}
