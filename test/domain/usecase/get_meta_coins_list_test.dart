import 'package:crypto_flutter/core/usecase.dart';
import 'package:crypto_flutter/domain/entity/coin_meta.dart';
import 'package:crypto_flutter/domain/repository/coin_repository.dart';
import 'package:crypto_flutter/domain/usecase/get_meta_coins_list.dart';
import 'package:dartz/dartz.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:mockito/annotations.dart';
import 'package:mockito/mockito.dart';

import 'get_meta_coins_list_test.mocks.dart';

@GenerateMocks([ICoinRepo])
void main() {
  late GetMetaCoinsList usecase;
  late MockICoinRepo coinRepo;

  const List<CoinMeta> tCoinsList = [];

  setUp(() {
    coinRepo = MockICoinRepo();
    usecase = GetMetaCoinsList(coinRepo);
  });

  test('should call [getMetaCoinsList] on the repository', () async {
    // arrange
    when(coinRepo.getMetaCoinsList())
        .thenAnswer((_) async => const Right(tCoinsList));

    // act
    final result = await usecase(const NoParams());

    // assert
    expect(result, const Right(tCoinsList));
    verify(coinRepo.getMetaCoinsList());
    verifyNoMoreInteractions(coinRepo);
  });
}
