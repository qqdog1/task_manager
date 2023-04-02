import 'dart:convert';

class Bar {
  final String name;
  final int total;
  final int completed;
  final String unit;

  Bar(this.name, this.total, this.completed, this.unit);

  factory Bar.fromJson(dynamic json) {
    return Bar(json['name'], json['total'], json['completed'], json['unit']);
  }

  Map<String, dynamic> toJson() {
    return {
      'name': name,
      'total': total,
      'completed': completed,
      'unit': unit,
    };
  }

  @override
  String toString() {
    return jsonEncode(toJson());
  }
}