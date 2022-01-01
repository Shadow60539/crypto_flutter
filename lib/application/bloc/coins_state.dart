part of 'coins_bloc.dart';

@freezed
class CoinsState with _$CoinsState {
  const factory CoinsState({
    required List<CoinMeta> coins,
    required Option<Either<CoinFailure, List<CoinMeta>>> coinsOption,
    bool? isLoading,
  }) = _coinsState;

  factory CoinsState.initial() {
    return const CoinsState(
      coins: [],
      isLoading: true,
      coinsOption: None(),
    );
  }
}
