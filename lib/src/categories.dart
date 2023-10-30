import 'package:json_annotation/json_annotation.dart';
part 'categories.g.dart';

@JsonSerializable()
class Categories {
  Categories({
    this.name,
    this.description,
    this.price,
    this.limited,
    required this.id,
    required this.created,
    required this.updated,
  });

  factory Categories.fromJson(Map<String, dynamic> json) {
    for (final key in json.keys) {
      if (json[key] == '') json[key] = null;
    }
    return _$CategoriesFromJson(json);
  }

  /// text
  @JsonKey(name: "name")
  String? name;

  /// editor
  @JsonKey(name: "description")
  String? description;

  /// number
  @JsonKey(name: "price")
  num? price;

  /// bool
  @JsonKey(name: "limited")
  bool? limited;

  /// text
  @JsonKey(name: "id")
  String id;

  /// date
  @JsonKey(name: "created")
  DateTime created;

  /// date
  @JsonKey(name: "updated")
  DateTime updated;

  static const String $collectionId = "cx54t54rtmas815";

  static const String $collectionName = "categories";

  Map<String, dynamic> toJson() {
    return _$CategoriesToJson(this);
  }
}
