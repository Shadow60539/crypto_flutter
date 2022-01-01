import 'package:bloc/bloc.dart';
import 'package:crypto_flutter/core/usecase.dart';
import 'package:crypto_flutter/domain/entity/coin_meta.dart';
import 'package:crypto_flutter/domain/failures/coin_failure.dart';
import 'package:crypto_flutter/domain/usecase/get_meta_coins_list.dart';
import 'package:dartz/dartz.dart';
import 'package:injectable/injectable.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'coins_bloc.freezed.dart';
part 'coins_event.dart';
part 'coins_state.dart';

@injectable
@prod
class CoinsBloc extends Bloc<CoinsEvent, CoinsState> {
  final GetAllCoins getAllCoinsUsecase;
  CoinsBloc(this.getAllCoinsUsecase) : super(CoinsState.initial());

  @override
  Stream<CoinsState> mapEventToState(
    CoinsEvent event,
  ) async* {
    yield* event.map(
      getAllCoins: (e) async* {
        yield state.copyWith(isLoading: true);
        final Either<CoinFailure, List<CoinMeta>> CoinsOption =
            await getAllCoinsUsecase(const NoParams());

        yield CoinsOption.fold(
          (l) => state.copyWith(
            isLoading: false,
            coinsOption: Some(Left(l)),
          ),
          (r) => state.copyWith(
            isLoading: false,
            coins: r,
            coinsOption: Some(Right(r)),
          ),
        );
      },
    );
  }
}
