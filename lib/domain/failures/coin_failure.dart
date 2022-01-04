import 'package:freezed_annotation/freezed_annotation.dart';
part 'coin_failure.freezed.dart';

@freezed
class CoinFailure with _$CoinFailure {
  const factory CoinFailure.serverFailure() = _ServerFailure;
  const factory CoinFailure.clientFailure() = _ClientFailure;
}