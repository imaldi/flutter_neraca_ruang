// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'comment_providers.dart';

// **************************************************************************
// RiverpodGenerator
// **************************************************************************

String _$commentsHash() => r'07a7845de4872d6786288c4f1aad419976738668';

/// See also [Comments].
@ProviderFor(Comments)
final commentsProvider =
    AutoDisposeAsyncNotifierProvider<Comments, List<CommentModel>>.internal(
  Comments.new,
  name: r'commentsProvider',
  debugGetCreateSourceHash:
      const bool.fromEnvironment('dart.vm.product') ? null : _$commentsHash,
  dependencies: null,
  allTransitiveDependencies: null,
);

typedef _$Comments = AutoDisposeAsyncNotifier<List<CommentModel>>;
// ignore_for_file: unnecessary_raw_strings, subtype_of_sealed_class, invalid_use_of_internal_member, do_not_use_environment, prefer_const_constructors, public_member_api_docs, avoid_private_typedef_functions
