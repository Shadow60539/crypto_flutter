import 'package:crypto_flutter/domain/entity/coin_meta.dart';
import 'package:crypto_flutter/domain/failures/coin_failure.dart';
import 'package:crypto_flutter/domain/repository/i_coin_repository.dart';
import 'package:crypto_flutter/infrastructure/data/coin_remote_data_source.dart';
import 'package:crypto_flutter/infrastructure/exception/coin_exception.dart';
import 'package:dartz/dartz.dart';
import 'package:injectable/injectable.dart';

@Injectable(as: ICoinRepo)
@prod
class CoinRepo extends ICoinRepo {
  final ICoinRemoteDataSource remoteDataSource;

  CoinRepo(this.remoteDataSource);

  @override
  Future<Either<CoinFailure, List<CoinMeta>>> getAllCoins() async {
    try {
      final List<CoinMeta> places = await remoteDataSource.getAllCoins();
      return Right(places);
    } on ServerException {
      return const Left(CoinFailure.serverFailure());
    } on ClientException {
      return const Left(CoinFailure.clientFailure());
    }
  }
}
