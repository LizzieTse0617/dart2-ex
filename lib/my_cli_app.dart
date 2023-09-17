import 'dart:io';
import 'dart:math';

class Lucky {
  late int _randomNumber;

  Lucky() {
    final minEnv = Platform.environment['MIN'];
    final maxEnv = Platform.environment['MAX'];

    if (minEnv == null || maxEnv == null) {
      throw ArgumentError('Environment variables MIN and MAX must be set.');
    }

    final min = int.tryParse(minEnv);
    final max = int.tryParse(maxEnv);

    if (min == null || max == null) {
      throw ArgumentError('MIN and MAX must be valid integers.');
    }

    if (min >= max) {
      throw ArgumentError('MIN must be less than MAX.');
    }

    final random = Random();
    _randomNumber = min + random.nextInt(max - min + 1);
  }

  int get randomNumber => _randomNumber;
}
