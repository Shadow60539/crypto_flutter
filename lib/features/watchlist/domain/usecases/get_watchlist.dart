import 'package:crypto_flutter/core/errors/failures.dart';
import 'package:crypto_flutter/features/watchlist/domain/entities/cryptocurrency.dart';
import 'package:dartz/dartz.dart';
import '../repository/watchlist_repository.dart';

class GetWatchList {
  final WatchListRepository repository;

  GetWatchList(this.repository);

  Future<Either<Failure , CryptoCurrency>> execute()async{

    return await repository.getWatchList();
  }
}
