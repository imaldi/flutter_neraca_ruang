// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'async_state_auth_providers.dart';

// **************************************************************************
// RiverpodGenerator
// **************************************************************************

String _$authStatusHash() => r'0013fa4518b79f10c220a0b4d69e94567d2be296';

/// TODO, nanti pisahkn method register dan login,
/// TODO serta buat method init yg pertama2 ngambil dari box, lalu alihkam ke login page kalau null
///
/// Copied from [AuthStatus].
@ProviderFor(AuthStatus)
final authStatusProvider =
    AutoDisposeAsyncNotifierProvider<AuthStatus, AuthResponse?>.internal(
  AuthStatus.new,
  name: r'authStatusProvider',
  debugGetCreateSourceHash:
      const bool.fromEnvironment('dart.vm.product') ? null : _$authStatusHash,
  dependencies: null,
  allTransitiveDependencies: null,
);

typedef _$AuthStatus = AutoDisposeAsyncNotifier<AuthResponse?>;
// ignore_for_file: unnecessary_raw_strings, subtype_of_sealed_class, invalid_use_of_internal_member, do_not_use_environment, prefer_const_constructors, public_member_api_docs, avoid_private_typedef_functions
