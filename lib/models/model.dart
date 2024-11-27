abstract class Model {
  int? id;

  Map<String, dynamic> toMap();
  static fromMap(Map<String, dynamic> map) {}
}
