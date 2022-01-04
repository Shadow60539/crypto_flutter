// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'coins_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more informations: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
class _$CoinsEventTearOff {
  const _$CoinsEventTearOff();

  AllCoinsEvent getAllCoins() {
    return const AllCoinsEvent();
  }
}

/// @nodoc
const $CoinsEvent = _$CoinsEventTearOff();

/// @nodoc
mixin _$CoinsEvent {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() getAllCoins,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function()? getAllCoins,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? getAllCoins,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(AllCoinsEvent value) getAllCoins,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(AllCoinsEvent value)? getAllCoins,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(AllCoinsEvent value)? getAllCoins,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $CoinsEventCopyWith<$Res> {
  factory $CoinsEventCopyWith(
          CoinsEvent value, $Res Function(CoinsEvent) then) =
      _$CoinsEventCopyWithImpl<$Res>;
}

/// @nodoc
class _$CoinsEventCopyWithImpl<$Res> implements $CoinsEventCopyWith<$Res> {
  _$CoinsEventCopyWithImpl(this._value, this._then);

  final CoinsEvent _value;
  // ignore: unused_field
  final $Res Function(CoinsEvent) _then;
}

/// @nodoc
abstract class $AllCoinsEventCopyWith<$Res> {
  factory $AllCoinsEventCopyWith(
          AllCoinsEvent value, $Res Function(AllCoinsEvent) then) =
      _$AllCoinsEventCopyWithImpl<$Res>;
}

/// @nodoc
class _$AllCoinsEventCopyWithImpl<$Res> extends _$CoinsEventCopyWithImpl<$Res>
    implements $AllCoinsEventCopyWith<$Res> {
  _$AllCoinsEventCopyWithImpl(
      AllCoinsEvent _value, $Res Function(AllCoinsEvent) _then)
      : super(_value, (v) => _then(v as AllCoinsEvent));

  @override
  AllCoinsEvent get _value => super._value as AllCoinsEvent;
}

/// @nodoc

class _$AllCoinsEvent implements AllCoinsEvent {
  const _$AllCoinsEvent();

  @override
  String toString() {
    return 'CoinsEvent.getAllCoins()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is AllCoinsEvent);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() getAllCoins,
  }) {
    return getAllCoins();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function()? getAllCoins,
  }) {
    return getAllCoins?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? getAllCoins,
    required TResult orElse(),
  }) {
    if (getAllCoins != null) {
      return getAllCoins();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(AllCoinsEvent value) getAllCoins,
  }) {
    return getAllCoins(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(AllCoinsEvent value)? getAllCoins,
  }) {
    return getAllCoins?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(AllCoinsEvent value)? getAllCoins,
    required TResult orElse(),
  }) {
    if (getAllCoins != null) {
      return getAllCoins(this);
    }
    return orElse();
  }
}

abstract class AllCoinsEvent implements CoinsEvent {
  const factory AllCoinsEvent() = _$AllCoinsEvent;
}

/// @nodoc
class _$CoinsStateTearOff {
  const _$CoinsStateTearOff();

  _coinsState call(
      {required List<CoinMeta> coins,
      required Option<Either<CoinFailure, List<CoinMeta>>> coinsOption,
      bool? isLoading}) {
    return _coinsState(
      coins: coins,
      coinsOption: coinsOption,
      isLoading: isLoading,
    );
  }
}

/// @nodoc
const $CoinsState = _$CoinsStateTearOff();

/// @nodoc
mixin _$CoinsState {
  List<CoinMeta> get coins => throw _privateConstructorUsedError;
  Option<Either<CoinFailure, List<CoinMeta>>> get coinsOption =>
      throw _privateConstructorUsedError;
  bool? get isLoading => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $CoinsStateCopyWith<CoinsState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $CoinsStateCopyWith<$Res> {
  factory $CoinsStateCopyWith(
          CoinsState value, $Res Function(CoinsState) then) =
      _$CoinsStateCopyWithImpl<$Res>;
  $Res call(
      {List<CoinMeta> coins,
      Option<Either<CoinFailure, List<CoinMeta>>> coinsOption,
      bool? isLoading});
}

/// @nodoc
class _$CoinsStateCopyWithImpl<$Res> implements $CoinsStateCopyWith<$Res> {
  _$CoinsStateCopyWithImpl(this._value, this._then);

  final CoinsState _value;
  // ignore: unused_field
  final $Res Function(CoinsState) _then;

  @override
  $Res call({
    Object? coins = freezed,
    Object? coinsOption = freezed,
    Object? isLoading = freezed,
  }) {
    return _then(_value.copyWith(
      coins: coins == freezed
          ? _value.coins
          : coins // ignore: cast_nullable_to_non_nullable
              as List<CoinMeta>,
      coinsOption: coinsOption == freezed
          ? _value.coinsOption
          : coinsOption // ignore: cast_nullable_to_non_nullable
              as Option<Either<CoinFailure, List<CoinMeta>>>,
      isLoading: isLoading == freezed
          ? _value.isLoading
          : isLoading // ignore: cast_nullable_to_non_nullable
              as bool?,
    ));
  }
}

/// @nodoc
abstract class _$coinsStateCopyWith<$Res> implements $CoinsStateCopyWith<$Res> {
  factory _$coinsStateCopyWith(
          _coinsState value, $Res Function(_coinsState) then) =
      __$coinsStateCopyWithImpl<$Res>;
  @override
  $Res call(
      {List<CoinMeta> coins,
      Option<Either<CoinFailure, List<CoinMeta>>> coinsOption,
      bool? isLoading});
}

/// @nodoc
class __$coinsStateCopyWithImpl<$Res> extends _$CoinsStateCopyWithImpl<$Res>
    implements _$coinsStateCopyWith<$Res> {
  __$coinsStateCopyWithImpl(
      _coinsState _value, $Res Function(_coinsState) _then)
      : super(_value, (v) => _then(v as _coinsState));

  @override
  _coinsState get _value => super._value as _coinsState;

  @override
  $Res call({
    Object? coins = freezed,
    Object? coinsOption = freezed,
    Object? isLoading = freezed,
  }) {
    return _then(_coinsState(
      coins: coins == freezed
          ? _value.coins
          : coins // ignore: cast_nullable_to_non_nullable
              as List<CoinMeta>,
      coinsOption: coinsOption == freezed
          ? _value.coinsOption
          : coinsOption // ignore: cast_nullable_to_non_nullable
              as Option<Either<CoinFailure, List<CoinMeta>>>,
      isLoading: isLoading == freezed
          ? _value.isLoading
          : isLoading // ignore: cast_nullable_to_non_nullable
              as bool?,
    ));
  }
}

/// @nodoc

class _$_coinsState implements _coinsState {
  const _$_coinsState(
      {required this.coins, required this.coinsOption, this.isLoading});

  @override
  final List<CoinMeta> coins;
  @override
  final Option<Either<CoinFailure, List<CoinMeta>>> coinsOption;
  @override
  final bool? isLoading;

  @override
  String toString() {
    return 'CoinsState(coins: $coins, coinsOption: $coinsOption, isLoading: $isLoading)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _coinsState &&
            const DeepCollectionEquality().equals(other.coins, coins) &&
            const DeepCollectionEquality()
                .equals(other.coinsOption, coinsOption) &&
            const DeepCollectionEquality().equals(other.isLoading, isLoading));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(coins),
      const DeepCollectionEquality().hash(coinsOption),
      const DeepCollectionEquality().hash(isLoading));

  @JsonKey(ignore: true)
  @override
  _$coinsStateCopyWith<_coinsState> get copyWith =>
      __$coinsStateCopyWithImpl<_coinsState>(this, _$identity);
}

abstract class _coinsState implements CoinsState {
  const factory _coinsState(
      {required List<CoinMeta> coins,
      required Option<Either<CoinFailure, List<CoinMeta>>> coinsOption,
      bool? isLoading}) = _$_coinsState;

  @override
  List<CoinMeta> get coins;
  @override
  Option<Either<CoinFailure, List<CoinMeta>>> get coinsOption;
  @override
  bool? get isLoading;
  @override
  @JsonKey(ignore: true)
  _$coinsStateCopyWith<_coinsState> get copyWith =>
      throw _privateConstructorUsedError;
}
