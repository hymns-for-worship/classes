import 'package:json_annotation/json_annotation.dart';
part 'user_purchases.g.dart';

@JsonSerializable()
class UserPurchases {
  UserPurchases({
    required this.user,
    required this.productId,
    this.platform,
    this.amount,
    this.purchaseId,
    required this.id,
    required this.created,
    required this.updated,
  });

  factory UserPurchases.fromJson(Map<String, dynamic> json) {
    for (final key in json.keys) {
      if (json[key] == '') json[key] = null;
    }
    return _$UserPurchasesFromJson(json);
  }

  /// relation
  @JsonKey(name: "user")
  String user;

  /// text
  @JsonKey(name: "product_id")
  String productId;

  /// text
  @JsonKey(name: "platform")
  String? platform;

  /// number
  @JsonKey(name: "amount")
  num? amount;

  /// text
  @JsonKey(name: "purchase_id")
  String? purchaseId;

  /// text
  @JsonKey(name: "id")
  String id;

  /// date
  @JsonKey(name: "created")
  DateTime created;

  /// date
  @JsonKey(name: "updated")
  DateTime updated;

  static const String $collectionId = "rrf239ox6315tys";

  static const String $collectionName = "user_purchases";

  Map<String, dynamic> toJson() {
    return _$UserPurchasesToJson(this);
  }
}
