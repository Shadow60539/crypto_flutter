import 'package:crypto_flutter/features/watchlist/domain/entities/cryptocurrency.dart';
import 'package:crypto_flutter/features/watchlist/domain/repository/watchlist_repository.dart';
import 'package:crypto_flutter/features/watchlist/domain/usecases/get_watchlist.dart';
import 'package:dartz/dartz.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:mocktail/mocktail.dart';

class MockWatchlistRepository extends Mock implements WatchListRepository {}

void main() {
  late GetWatchList usecase;
  late MockWatchlistRepository mockWatchlistRepository;

  setUp(() {
    mockWatchlistRepository = MockWatchlistRepository();
    usecase = GetWatchList(mockWatchlistRepository);
  });

  const tWatchList = CryptoCurrency(
      id: "bitcoin",
      icon: "https://static.coinstats.app/coins/Bitcoin6l39t.png",
      name: "Bitcoin",
      symbol: "BTC",
      rank: 1,
      price: 3490345.221512467,
      priceBtc: 1,
      marketCap: 66019618089016.7,
      priceChange1h: 0,
      priceChange1d: -1.22,
      priceChange1w: -2.92);

  test('should get watchlist from the repository', () async {
    //arrange
    when(() => mockWatchlistRepository.getWatchList())
        .thenAnswer((_) async => const Right(tWatchList));
    //act
    final result = await usecase.execute();
    //assert
    expect(result, const Right(tWatchList));
    verify(mockWatchlistRepository.getWatchList);
    verifyNoMoreInteractions(mockWatchlistRepository);
  });
}
