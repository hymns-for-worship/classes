// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'user_purchases.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

UserPurchases _$UserPurchasesFromJson(Map<String, dynamic> json) =>
    UserPurchases(
      user: json['user'] as String,
      productId: json['product_id'] as String,
      platform: json['platform'] as String?,
      amount: json['amount'] as num?,
      purchaseId: json['purchase_id'] as String?,
      id: json['id'] as String,
      created: DateTime.parse(json['created'] as String),
      updated: DateTime.parse(json['updated'] as String),
    );

Map<String, dynamic> _$UserPurchasesToJson(UserPurchases instance) {
  final val = <String, dynamic>{
    'user': instance.user,
    'product_id': instance.productId,
  };

  void writeNotNull(String key, dynamic value) {
    if (value != null) {
      val[key] = value;
    }
  }

  writeNotNull('platform', instance.platform);
  writeNotNull('amount', instance.amount);
  writeNotNull('purchase_id', instance.purchaseId);
  val['id'] = instance.id;
  val['created'] = instance.created.toIso8601String();
  val['updated'] = instance.updated.toIso8601String();
  return val;
}
