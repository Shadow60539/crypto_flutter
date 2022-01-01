import 'package:crypto_flutter/infrastructure/data/api_end_points.dart';
import 'package:crypto_flutter/infrastructure/data/coin_remote_data_source.dart';
import 'package:crypto_flutter/infrastructure/exception/coin_exception.dart';
import 'package:crypto_flutter/infrastructure/model/coin_meta_model.dart';
import 'package:dio/dio.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:mockito/annotations.dart';
import 'package:mockito/mockito.dart';

import 'coin_remote_data_source_test.mocks.dart';

@GenerateMocks([Dio])
void main() {
  late MockDio mockDio;
  late CoinRemoteDataSource dataSource;
  late List<CoinMetaModel> tCoinModel;

  setUp(() {
    tCoinModel = const [
      CoinMetaModel(
        id: "bitcoin",
        icon:
            "https://api.coin-stats.com/api/files/812fde17aea65fbb9f1fd8a478547bde/f3738cc5df5f59afb57111d67d951170_1.png",
        name: "Bitcoin",
        symbol: "BTC",
        price: 0.0,
        priceChange: 0.0,
        rank: 1,
      )
    ];
    mockDio = MockDio();
    dataSource = CoinRemoteDataSource(mockDio);
  });

  void setUpMockHttpClientSuccess200() {
    when(mockDio.get(any)).thenAnswer(
      (_) async => Response(data: {
        "coins": [
          {
            "id": "bitcoin",
            "icon":
                "https://api.coin-stats.com/api/files/812fde17aea65fbb9f1fd8a478547bde/f3738cc5df5f59afb57111d67d951170_1.png",
            "name": "Bitcoin",
            "symbol": "BTC",
            "price": 0.0,
            "priceChange1h": 0.0,
            "rank": 1,
          },
        ],
      }, statusCode: 200, requestOptions: RequestOptions(path: "any")),
    );
  }

  void setUpMockHttpClientNullResponse() {
    when(mockDio.get(any)).thenAnswer((_) async => Response(
        data: null,
        statusCode: 200,
        requestOptions: RequestOptions(path: "any")));
  }

  void setUpMockHttpClientFailure404() {
    when(mockDio.get(any)).thenAnswer((_) async => Response(
        data: 'Something went wrong',
        statusCode: 404,
        requestOptions: RequestOptions(path: "any")));
  }

  group('getAllCoins', () {
    test('should throw [ServerException] when 404', () async {
      // arrange
      setUpMockHttpClientFailure404();
      // act
      final result = dataSource.getAllCoins();
      // assert
      expect(() => result, throwsA(const TypeMatcher<ServerException>()));
      verify(mockDio.get(ApiEndPoints.getAllCoins));
    });
    test('should throw [ClientException] when 404', () async {
      // arrange
      setUpMockHttpClientNullResponse();
      // act
      final result = dataSource.getAllCoins();
      // assert
      expect(() => result, throwsA(const TypeMatcher<ClientException>()));
      verify(mockDio.get(ApiEndPoints.getAllCoins));
    });

    test('should return [List<CoinMetaModel>] on success', () async {
      // arrange
      setUpMockHttpClientSuccess200();
      // act
      final result = await dataSource.getAllCoins();
      // assert
      expect(result, tCoinModel);
      verify(mockDio.get(ApiEndPoints.getAllCoins));
    });
  });
}
