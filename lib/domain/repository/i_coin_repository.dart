import 'package:crypto_flutter/domain/entity/coin_meta.dart';
import 'package:crypto_flutter/domain/failures/coin_failure.dart';
import 'package:dartz/dartz.dart';

abstract class ICoinRepo {
  // Get All Coins list
  Future<Either<CoinFailure, List<CoinMeta>>> getAllCoins();
}
