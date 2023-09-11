import 'dart:convert';

import 'package:consumo_adviced_slip_dio/models/result.dart';

class Character {
  List<Result> results;
  Character({
    required this.results,
  });

  Map<String, dynamic> toMap() {
    return {
      'results': results.map((x) => x.toMap()).toList(),
    };
  }

  factory Character.fromMap(Map<String, dynamic> map) {
    return Character(
      results: List<Result>.from(map['results']?.map((x) => Result.fromMap(x))),
    );
  }

  String toJson() => json.encode(toMap());

  factory Character.fromJson(String source) =>
      Character.fromMap(json.decode(source));
}
