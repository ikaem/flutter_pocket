// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'provider.dart';

// **************************************************************************
// RiverpodGenerator
// **************************************************************************

String _$swPersonGeneratedHash() => r'cb9e596463fde96ddd54eeb064571c0a11432b1f';

/// Copied from Dart SDK
class _SystemHash {
  _SystemHash._();

  static int combine(int hash, int value) {
    // ignore: parameter_assignments
    hash = 0x1fffffff & (hash + value);
    // ignore: parameter_assignments
    hash = 0x1fffffff & (hash + ((0x0007ffff & hash) << 10));
    return hash ^ (hash >> 6);
  }

  static int finish(int hash) {
    // ignore: parameter_assignments
    hash = 0x1fffffff & (hash + ((0x03ffffff & hash) << 3));
    // ignore: parameter_assignments
    hash = hash ^ (hash >> 11);
    return 0x1fffffff & (hash + ((0x00003fff & hash) << 15));
  }
}

typedef SwPersonGeneratedRef = AutoDisposeFutureProviderRef<SwPerson>;

/// See also [swPersonGenerated].
@ProviderFor(swPersonGenerated)
const swPersonGeneratedProvider = SwPersonGeneratedFamily();

/// See also [swPersonGenerated].
class SwPersonGeneratedFamily extends Family<AsyncValue<SwPerson>> {
  /// See also [swPersonGenerated].
  const SwPersonGeneratedFamily();

  /// See also [swPersonGenerated].
  SwPersonGeneratedProvider call({
    required String id,
  }) {
    return SwPersonGeneratedProvider(
      id: id,
    );
  }

  @override
  SwPersonGeneratedProvider getProviderOverride(
    covariant SwPersonGeneratedProvider provider,
  ) {
    return call(
      id: provider.id,
    );
  }

  static const Iterable<ProviderOrFamily>? _dependencies = null;

  @override
  Iterable<ProviderOrFamily>? get dependencies => _dependencies;

  static const Iterable<ProviderOrFamily>? _allTransitiveDependencies = null;

  @override
  Iterable<ProviderOrFamily>? get allTransitiveDependencies =>
      _allTransitiveDependencies;

  @override
  String? get name => r'swPersonGeneratedProvider';
}

/// See also [swPersonGenerated].
class SwPersonGeneratedProvider extends AutoDisposeFutureProvider<SwPerson> {
  /// See also [swPersonGenerated].
  SwPersonGeneratedProvider({
    required this.id,
  }) : super.internal(
          (ref) => swPersonGenerated(
            ref,
            id: id,
          ),
          from: swPersonGeneratedProvider,
          name: r'swPersonGeneratedProvider',
          debugGetCreateSourceHash:
              const bool.fromEnvironment('dart.vm.product')
                  ? null
                  : _$swPersonGeneratedHash,
          dependencies: SwPersonGeneratedFamily._dependencies,
          allTransitiveDependencies:
              SwPersonGeneratedFamily._allTransitiveDependencies,
        );

  final String id;

  @override
  bool operator ==(Object other) {
    return other is SwPersonGeneratedProvider && other.id == id;
  }

  @override
  int get hashCode {
    var hash = _SystemHash.combine(0, runtimeType.hashCode);
    hash = _SystemHash.combine(hash, id.hashCode);

    return _SystemHash.finish(hash);
  }
}
// ignore_for_file: unnecessary_raw_strings, subtype_of_sealed_class, invalid_use_of_internal_member, do_not_use_environment, prefer_const_constructors, public_member_api_docs, avoid_private_typedef_functions
