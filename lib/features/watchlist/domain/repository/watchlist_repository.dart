import '../../../../core/errors/failures.dart';
import '../entities/cryptocurrency.dart';
import 'package:dartz/dartz.dart';

abstract class WatchListRepository {
  Future<Either<Failure, CryptoCurrency>> getWatchList();
}
