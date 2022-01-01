import 'package:crypto_flutter/core/usecase.dart';
import 'package:crypto_flutter/domain/entity/coin_meta.dart';
import 'package:crypto_flutter/domain/failures/coin_failure.dart';
import 'package:crypto_flutter/domain/repository/coin_repository.dart';
import 'package:dartz/dartz.dart';
import 'package:injectable/injectable.dart';

@injectable
@prod
class GetMetaCoinsList
    implements Usecase<CoinFailure, List<CoinMeta>, NoParams> {
  /// Usecase to fetch coins list
  ///
  /// Direct call to `ICoinRepo`
  const GetMetaCoinsList(this.repository);

  final ICoinRepo repository;

  @override
  Future<Either<CoinFailure, List<CoinMeta>>> call(NoParams _) async =>
      repository.getMetaCoinsList();
}
