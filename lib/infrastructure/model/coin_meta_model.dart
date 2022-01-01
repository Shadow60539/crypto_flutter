import 'package:crypto_flutter/domain/entity/coin_meta.dart';

class CoinMetaModel extends CoinMeta {
  const CoinMetaModel({
    required this.id,
    required this.icon,
    required this.name,
    required this.symbol,
    required this.rank,
    required this.price,
    required this.priceChange,
  }) : super(
          id: id,
          icon: icon,
          name: name,
          symbol: symbol,
          rank: rank,
          price: price,
          priceChange: priceChange,
        );
  final String id;
  final String icon;
  final String name;
  final String symbol;
  final int rank;
  final double price;
  final double priceChange;

  factory CoinMetaModel.fromJson(Map<String, dynamic> json) => CoinMetaModel(
        id: json["id"],
        icon: json["icon"],
        name: json["name"],
        symbol: json["symbol"],
        rank: json["rank"],
        price: json["price"].toDouble(),
        priceChange: json["priceChange1h"].toDouble(),
      );
}
