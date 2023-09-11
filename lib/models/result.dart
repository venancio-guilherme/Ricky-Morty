import 'dart:convert';

class Result {
  int id;
  String name;
  String species;
  String image;
  Result({
    required this.id,
    required this.name,
    required this.species,
    required this.image,
  });

  Map<String, dynamic> toMap() {
    return {
      'id': id,
      'name': name,
      'species': species,
      'image': image,
    };
  }

  factory Result.fromMap(Map<String, dynamic> map) {
    return Result(
      id: map['id']?.toInt() ?? 0,
      name: map['name'] ?? '',
      species: map['species'] ?? '',
      image: map['image'] ?? '',
    );
  }

  String toJson() => json.encode(toMap());

  factory Result.fromJson(String source) => Result.fromMap(json.decode(source));
}
