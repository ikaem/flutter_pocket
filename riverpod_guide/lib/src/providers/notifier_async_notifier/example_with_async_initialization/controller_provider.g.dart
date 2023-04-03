// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'controller_provider.dart';

// **************************************************************************
// RiverpodGenerator
// **************************************************************************

String _$someControllerHash() => r'da31ae1b7fb85902fdcb6f4c1de2c72347ac73f9';

/// See also [SomeController].
@ProviderFor(SomeController)
final someControllerProvider =
    AutoDisposeAsyncNotifierProvider<SomeController, String>.internal(
  SomeController.new,
  name: r'someControllerProvider',
  debugGetCreateSourceHash: const bool.fromEnvironment('dart.vm.product')
      ? null
      : _$someControllerHash,
  dependencies: null,
  allTransitiveDependencies: null,
);

typedef _$SomeController = AutoDisposeAsyncNotifier<String>;
String _$someControllerWithArgumentsHash() =>
    r'45b9471dd6781c642ae5418026a6ab605a3c4258';

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

abstract class _$SomeControllerWithArguments
    extends BuildlessAutoDisposeAsyncNotifier<String> {
  late final String someValue;

  Future<String> build(
    String someValue,
  );
}

/// See also [SomeControllerWithArguments].
@ProviderFor(SomeControllerWithArguments)
const someControllerWithArgumentsProvider = SomeControllerWithArgumentsFamily();

/// See also [SomeControllerWithArguments].
class SomeControllerWithArgumentsFamily extends Family<AsyncValue<String>> {
  /// See also [SomeControllerWithArguments].
  const SomeControllerWithArgumentsFamily();

  /// See also [SomeControllerWithArguments].
  SomeControllerWithArgumentsProvider call(
    String someValue,
  ) {
    return SomeControllerWithArgumentsProvider(
      someValue,
    );
  }

  @override
  SomeControllerWithArgumentsProvider getProviderOverride(
    covariant SomeControllerWithArgumentsProvider provider,
  ) {
    return call(
      provider.someValue,
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
  String? get name => r'someControllerWithArgumentsProvider';
}

/// See also [SomeControllerWithArguments].
class SomeControllerWithArgumentsProvider
    extends AutoDisposeAsyncNotifierProviderImpl<SomeControllerWithArguments,
        String> {
  /// See also [SomeControllerWithArguments].
  SomeControllerWithArgumentsProvider(
    this.someValue,
  ) : super.internal(
          () => SomeControllerWithArguments()..someValue = someValue,
          from: someControllerWithArgumentsProvider,
          name: r'someControllerWithArgumentsProvider',
          debugGetCreateSourceHash:
              const bool.fromEnvironment('dart.vm.product')
                  ? null
                  : _$someControllerWithArgumentsHash,
          dependencies: SomeControllerWithArgumentsFamily._dependencies,
          allTransitiveDependencies:
              SomeControllerWithArgumentsFamily._allTransitiveDependencies,
        );

  final String someValue;

  @override
  bool operator ==(Object other) {
    return other is SomeControllerWithArgumentsProvider &&
        other.someValue == someValue;
  }

  @override
  int get hashCode {
    var hash = _SystemHash.combine(0, runtimeType.hashCode);
    hash = _SystemHash.combine(hash, someValue.hashCode);

    return _SystemHash.finish(hash);
  }

  @override
  Future<String> runNotifierBuild(
    covariant SomeControllerWithArguments notifier,
  ) {
    return notifier.build(
      someValue,
    );
  }
}
// ignore_for_file: unnecessary_raw_strings, subtype_of_sealed_class, invalid_use_of_internal_member, do_not_use_environment, prefer_const_constructors, public_member_api_docs, avoid_private_typedef_functions
