// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'current_location_providers.dart';

// **************************************************************************
// RiverpodGenerator
// **************************************************************************

String _$currentLocationHash() => r'f078e388ac2e52ea2936310a6eabe5dcb7177294';

/// See also [CurrentLocation].
@ProviderFor(CurrentLocation)
final currentLocationProvider = AutoDisposeAsyncNotifierProvider<
    CurrentLocation, OpenStreetMapResponse>.internal(
  CurrentLocation.new,
  name: r'currentLocationProvider',
  debugGetCreateSourceHash: const bool.fromEnvironment('dart.vm.product')
      ? null
      : _$currentLocationHash,
  dependencies: null,
  allTransitiveDependencies: null,
);

typedef _$CurrentLocation = AutoDisposeAsyncNotifier<OpenStreetMapResponse>;
// ignore_for_file: unnecessary_raw_strings, subtype_of_sealed_class, invalid_use_of_internal_member, do_not_use_environment, prefer_const_constructors, public_member_api_docs, avoid_private_typedef_functions
