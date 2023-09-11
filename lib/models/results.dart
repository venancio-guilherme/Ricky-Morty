import 'dart:convert';

import 'package:consumo_adviced_slip_dio/models/result.dart';

class Results {
  List<Result> results;
  Results({
    required this.results,
  });

  Map<String, dynamic> toMap() {
    return {
      'results': results.map((x) => x.toMap()).toList(),
    };
  }

  factory Results.fromMap(Map<String, dynamic> map) {
    return Results(
      results: List<Result>.from(map['results']?.map((x) => Result.fromMap(x))),
    );
  }

  String toJson() => json.encode(toMap());

  factory Results.fromJson(String source) =>
      Results.fromMap(json.decode(source));
}
