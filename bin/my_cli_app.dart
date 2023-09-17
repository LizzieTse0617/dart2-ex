
import 'dart:io';
import '../lib/my_cli_app.dart';

void main(List<String> arguments) {
 

  for (final name in arguments) {
    final capitalizedName = _capitalizeName(name);
    final lucky = Lucky(); 
    print('Hello $capitalizedName. Your lucky number is ${lucky.randomNumber}');
  }
}

String _capitalizeName(String name) {
  return name[0].toUpperCase() + name.substring(1);
}






