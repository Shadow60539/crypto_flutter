import 'package:freezed_annotation/freezed_annotation.dart';
part 'coin_exception.freezed.dart';

@freezed
class CoinException with _$CoinException {
  const factory CoinException.serverException() = ServerException;
  const factory CoinException.clientException() = ClientException;
}
