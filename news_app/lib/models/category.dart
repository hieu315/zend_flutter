import 'dart:convert';

class Category {
  int id;
  String name;
  String link;
  Category({
    required this.id,
    required this.name,
    required this.link,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'id': id,
      'name': name,
      'link': link,
    };
  }

  factory Category.fromMap(Map<String, dynamic> map) {
    return Category(
      id: map['id'] as int,
      name: map['name'] as String,
      link: map['link'] as String,
    );
  }
}
