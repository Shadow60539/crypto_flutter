import 'package:equatable/equatable.dart';

/*
  * Sample Coin Meta Json Response
 {
    "id": "bitcoin",
    "icon": "https://static.coinstats.app/coins/Bitcoin6l39t.png",
    "name": "Bitcoin",
    "symbol": "BTC",
    "rank": 1,
    "price": 3513196.704501858,
    "priceChange": -0.28
 */

class CoinMeta extends Equatable {
  const CoinMeta({
    required this.id,
    required this.icon,
    required this.name,
    required this.symbol,
    required this.rank,
    required this.price,
    required this.priceChange,
  });

  final String id;
  final String icon;
  final String name;
  final String symbol;
  final int rank;
  final double price;
  final double priceChange;

  CoinMeta copyWith({
    String? id,
    String? icon,
    String? name,
    String? symbol,
    int? rank,
    double? price,
    double? priceChange,
  }) =>
      CoinMeta(
        id: id ?? this.id,
        icon: icon ?? this.icon,
        name: name ?? this.name,
        symbol: symbol ?? this.symbol,
        rank: rank ?? this.rank,
        price: price ?? this.price,
        priceChange: priceChange ?? this.priceChange,
      );

  @override
  List<Object?> get props => [
        id,
        icon,
        name,
        symbol,
        rank,
        price,
        priceChange,
      ];
}
