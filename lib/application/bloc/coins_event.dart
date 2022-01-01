part of 'coins_bloc.dart';

@freezed
class CoinsEvent with _$CoinsEvent {
  const factory CoinsEvent.getAllCoins() = AllCoinsEvent;
}
