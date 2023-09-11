import 'package:dio/dio.dart';
import 'package:flutter/material.dart';

class GetDataController extends ChangeNotifier {
  var jsonList;

  void getData() async {
    var response = await Dio().get('https://rickandmortyapi.com/api/character');
    jsonList = response.data;
    notifyListeners();
  }
}
