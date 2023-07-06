// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'all_content_list_providers.dart';

// **************************************************************************
// RiverpodGenerator
// **************************************************************************

String _$contentsHash() => r'76256d63d8e86fe49e6f16cdbd2ba8284ac76ccb';

/// NOTE penting, jadi, kalau mau pakai (Async)NotifierProvider, kalau butuh "parameter" di
/// build method nya,
/// jangan pakai parameter di functionnya,
/// tapi sediakan StateProvider/FutureProvider yang menjadi state tersendiri
/// yang di evaluasi jika terjadi perubahan di suatu tempat (misal merubah state 'keyword' ketika button search di tekan dll)
///
/// Copied from [Contents].
@ProviderFor(Contents)
final contentsProvider =
    AutoDisposeAsyncNotifierProvider<Contents, List<Datum>?>.internal(
  Contents.new,
  name: r'contentsProvider',
  debugGetCreateSourceHash:
      const bool.fromEnvironment('dart.vm.product') ? null : _$contentsHash,
  dependencies: null,
  allTransitiveDependencies: null,
);

typedef _$Contents = AutoDisposeAsyncNotifier<List<Datum>?>;
// ignore_for_file: unnecessary_raw_strings, subtype_of_sealed_class, invalid_use_of_internal_member, do_not_use_environment, prefer_const_constructors, public_member_api_docs, avoid_private_typedef_functions
