import 'package:equatable/equatable.dart';

class CryptoCurrency extends Equatable {
  final String id;
  final String icon;
  final String name;
  final String symbol;
  final int rank;
  final double price;
  final double priceBtc;
  final double marketCap;
  final double priceChange1h;
  final double priceChange1d;
  final double priceChange1w;

  const CryptoCurrency({
    required this.id,
    required this.icon,
    required this.name,
    required this.symbol,
    required this.rank,
    required this.price,
    required this.priceBtc,
    required this.marketCap,
    required this.priceChange1h,
    required this.priceChange1d,
    required this.priceChange1w,
  });

  @override
  List<Object?> get props => [
        id,
        icon,
        name,
        symbol,
        rank,
        price,
        priceBtc,
        marketCap,
        priceChange1h,
        priceChange1d,
        priceChange1w,
      ];
}
