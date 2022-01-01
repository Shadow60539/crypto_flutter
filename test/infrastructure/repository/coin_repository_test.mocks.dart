// Mocks generated by Mockito 5.0.17 from annotations
// in crypto_flutter/test/infrastructure/repository/coin_repository_test.dart.
// Do not manually edit this file.

import 'dart:async' as _i4;

import 'package:crypto_flutter/infrastructure/data/coin_remote_data_source.dart'
    as _i3;
import 'package:crypto_flutter/infrastructure/model/coin_meta_model.dart'
    as _i5;
import 'package:dio/dio.dart' as _i2;
import 'package:mockito/mockito.dart' as _i1;

// ignore_for_file: avoid_redundant_argument_values
// ignore_for_file: avoid_setters_without_getters
// ignore_for_file: comment_references
// ignore_for_file: implementation_imports
// ignore_for_file: invalid_use_of_visible_for_testing_member
// ignore_for_file: prefer_const_constructors
// ignore_for_file: unnecessary_parenthesis
// ignore_for_file: camel_case_types

class _FakeDio_0 extends _i1.Fake implements _i2.Dio {}

/// A class which mocks [CoinRemoteDataSource].
///
/// See the documentation for Mockito's code generation for more information.
class MockCoinRemoteDataSource extends _i1.Mock
    implements _i3.CoinRemoteDataSource {
  MockCoinRemoteDataSource() {
    _i1.throwOnMissingStub(this);
  }

  @override
  _i2.Dio get dio =>
      (super.noSuchMethod(Invocation.getter(#dio), returnValue: _FakeDio_0())
          as _i2.Dio);
  @override
  _i4.Future<List<_i5.CoinMetaModel>> getAllCoins() =>
      (super.noSuchMethod(Invocation.method(#getAllCoins, []),
              returnValue:
                  Future<List<_i5.CoinMetaModel>>.value(<_i5.CoinMetaModel>[]))
          as _i4.Future<List<_i5.CoinMetaModel>>);
}