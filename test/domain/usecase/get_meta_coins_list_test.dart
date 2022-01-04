import 'package:crypto_flutter/core/usecase.dart';
import 'package:crypto_flutter/domain/entity/coin_meta.dart';
import 'package:crypto_flutter/domain/repository/i_coin_repository.dart';
import 'package:crypto_flutter/domain/usecase/get_meta_coins_list.dart';
import 'package:dartz/dartz.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:mockito/annotations.dart';
import 'package:mockito/mockito.dart';

import 'get_meta_coins_list_test.mocks.dart';

@GenerateMocks([ICoinRepo])
void main() {
  late GetAllCoins usecase;
  late MockICoinRepo coinRepo;

  const List<CoinMeta> tCoinsList = [];

  setUp(() {
    coinRepo = MockICoinRepo();
    usecase = GetAllCoins(coinRepo);
  });

  test('should call [getAllCoins] on the repository', () async {
    // arrange
    when(coinRepo.getAllCoins())
        .thenAnswer((_) async => const Right(tCoinsList));

    // act
    final result = await usecase(const NoParams());

    // assert
    expect(result, const Right(tCoinsList));
    verify(coinRepo.getAllCoins());
    verifyNoMoreInteractions(coinRepo);
  });
}
