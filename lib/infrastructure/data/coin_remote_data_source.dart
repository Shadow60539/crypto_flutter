import 'package:crypto_flutter/infrastructure/exception/coin_exception.dart';
import 'package:crypto_flutter/infrastructure/model/coin_meta_model.dart';
import 'package:dio/dio.dart';
import 'package:injectable/injectable.dart';

import 'api_end_points.dart';

abstract class ICoinRemoteDataSource {
  Future<List<CoinMetaModel>> getAllCoins();
}

@Injectable(as: ICoinRemoteDataSource)
@prod
class CoinRemoteDataSource extends ICoinRemoteDataSource {
  final Dio dio;

  CoinRemoteDataSource(this.dio);
  @override
  Future<List<CoinMetaModel>> getAllCoins() async {
    try {
      final Response response = await dio.get(ApiEndPoints.getAllCoins);
      if (response.statusCode == 200 || response.statusCode == 201) {
        final List<CoinMetaModel> coins = [];

        for (final raw in response.data["coins"]) {
          coins.add(CoinMetaModel.fromJson(raw as Map<String, dynamic>));
        }

        return coins;
      } else {
        throw const ServerException();
      }
    } on ServerException {
      throw const ServerException();
    } catch (e) {
      throw const ClientException();
    }
  }
}
