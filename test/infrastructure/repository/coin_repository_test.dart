import 'package:crypto_flutter/domain/entity/coin_meta.dart';
import 'package:crypto_flutter/domain/failures/coin_failure.dart';
import 'package:crypto_flutter/infrastructure/data/coin_remote_data_source.dart';
import 'package:crypto_flutter/infrastructure/exception/coin_exception.dart';
import 'package:crypto_flutter/infrastructure/model/coin_meta_model.dart';
import 'package:crypto_flutter/infrastructure/repository/coin_repository.dart';
import 'package:dartz/dartz.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:mockito/annotations.dart';
import 'package:mockito/mockito.dart';

import 'coin_repository_test.mocks.dart';

@GenerateMocks([CoinRemoteDataSource])
void main() {
  late CoinRepo repo;
  late MockCoinRemoteDataSource mockRemoteDataSource;
  final List<CoinMetaModel> tCoinsMetaModel = [];
  final List<CoinMeta> tCoinsMeta = tCoinsMetaModel;

  setUp(() {
    mockRemoteDataSource = MockCoinRemoteDataSource();
    repo = CoinRepo(mockRemoteDataSource);
  });

  group('getAllCoins', () {
    test(
      'should return [Right(List<Coin>)] when call to repo is success',
      () async {
        // arrange
        when(mockRemoteDataSource.getAllCoins())
            .thenAnswer((_) async => tCoinsMetaModel);

        // act
        final result = await repo.getAllCoins();

        // assert
        expect(result, Right<CoinFailure, List<CoinMeta>>(tCoinsMeta));
        verify(mockRemoteDataSource.getAllCoins());
        verifyNoMoreInteractions(mockRemoteDataSource);
      },
    );
    test(
      'should return [Left(ClientFailure)] when [ClientException] is thrown',
      () async {
        // arrange
        when(mockRemoteDataSource.getAllCoins())
            .thenThrow(const ClientException());

        // act
        final result = await repo.getAllCoins();

        // assert
        expect(result, const Left(CoinFailure.clientFailure()));
        verify(mockRemoteDataSource.getAllCoins());
        verifyNoMoreInteractions(mockRemoteDataSource);
      },
    );

    test(
      'should return [Left(ServerFailure)] when [ServerException] is thrown',
      () async {
        // arrange
        when(mockRemoteDataSource.getAllCoins())
            .thenThrow(const ServerException());

        // act
        final result = await repo.getAllCoins();

        // assert
        expect(result, const Left(CoinFailure.serverFailure()));
        verify(mockRemoteDataSource.getAllCoins());
        verifyNoMoreInteractions(mockRemoteDataSource);
      },
    );
  });
}
