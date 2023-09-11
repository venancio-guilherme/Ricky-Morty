// This is a basic Flutter widget test.
//
// To perform an interaction with a widget in your test, use the WidgetTester
// utility in the flutter_test package. For example, you can send tap and scroll
// gestures. You can also use WidgetTester to find child widgets in the widget
// tree, read text, and verify that the values of widget properties are correct.

import 'package:consumo_adviced_slip_dio/models/character.dart';
import 'package:dio/dio.dart';
import 'package:flutter_test/flutter_test.dart';

void main() {
  test('teste do que vamos receber', () async {
    var response = await Dio().get('https://rickandmortyapi.com/api/character');
    var jsonList = response.data;
    var resultados = Character.fromMap(jsonList).results[0];
    var nome = resultados.name;
    var image = resultados.image;
    var species = resultados.species;
    print(nome);
    print(image);
    print(species);
  });
}
