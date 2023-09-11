import 'dart:convert';

class Info {
  int count;
  int pages;
  String next;
  Info({
    required this.count,
    required this.pages,
    required this.next,
  });

  Map<String, dynamic> toMap() {
    return {
      'count': count,
      'pages': pages,
      'next': next,
    };
  }

  factory Info.fromMap(Map<String, dynamic> map) {
    return Info(
      count: map['count']?.toInt() ?? 0,
      pages: map['pages']?.toInt() ?? 0,
      next: map['next'] ?? '',
    );
  }

  String toJson() => json.encode(toMap());

  factory Info.fromJson(String source) => Info.fromMap(json.decode(source));
}
