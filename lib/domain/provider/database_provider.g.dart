// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'database_provider.dart';

// **************************************************************************
// RiverpodGenerator
// **************************************************************************

String _$isFavouriteHash() => r'724e98a75c716a156616c9e1b1982403bd3f44cd';

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

/// See also [isFavourite].
@ProviderFor(isFavourite)
const isFavouriteProvider = IsFavouriteFamily();

/// See also [isFavourite].
class IsFavouriteFamily extends Family<AsyncValue<bool>> {
  /// See also [isFavourite].
  const IsFavouriteFamily();

  /// See also [isFavourite].
  IsFavouriteProvider call(
    int recipeId,
  ) {
    return IsFavouriteProvider(
      recipeId,
    );
  }

  @override
  IsFavouriteProvider getProviderOverride(
    covariant IsFavouriteProvider provider,
  ) {
    return call(
      provider.recipeId,
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
  String? get name => r'isFavouriteProvider';
}

/// See also [isFavourite].
class IsFavouriteProvider extends AutoDisposeFutureProvider<bool> {
  /// See also [isFavourite].
  IsFavouriteProvider(
    int recipeId,
  ) : this._internal(
          (ref) => isFavourite(
            ref as IsFavouriteRef,
            recipeId,
          ),
          from: isFavouriteProvider,
          name: r'isFavouriteProvider',
          debugGetCreateSourceHash:
              const bool.fromEnvironment('dart.vm.product')
                  ? null
                  : _$isFavouriteHash,
          dependencies: IsFavouriteFamily._dependencies,
          allTransitiveDependencies:
              IsFavouriteFamily._allTransitiveDependencies,
          recipeId: recipeId,
        );

  IsFavouriteProvider._internal(
    super._createNotifier, {
    required super.name,
    required super.dependencies,
    required super.allTransitiveDependencies,
    required super.debugGetCreateSourceHash,
    required super.from,
    required this.recipeId,
  }) : super.internal();

  final int recipeId;

  @override
  Override overrideWith(
    FutureOr<bool> Function(IsFavouriteRef provider) create,
  ) {
    return ProviderOverride(
      origin: this,
      override: IsFavouriteProvider._internal(
        (ref) => create(ref as IsFavouriteRef),
        from: from,
        name: null,
        dependencies: null,
        allTransitiveDependencies: null,
        debugGetCreateSourceHash: null,
        recipeId: recipeId,
      ),
    );
  }

  @override
  AutoDisposeFutureProviderElement<bool> createElement() {
    return _IsFavouriteProviderElement(this);
  }

  @override
  bool operator ==(Object other) {
    return other is IsFavouriteProvider && other.recipeId == recipeId;
  }

  @override
  int get hashCode {
    var hash = _SystemHash.combine(0, runtimeType.hashCode);
    hash = _SystemHash.combine(hash, recipeId.hashCode);

    return _SystemHash.finish(hash);
  }
}

mixin IsFavouriteRef on AutoDisposeFutureProviderRef<bool> {
  /// The parameter `recipeId` of this provider.
  int get recipeId;
}

class _IsFavouriteProviderElement extends AutoDisposeFutureProviderElement<bool>
    with IsFavouriteRef {
  _IsFavouriteProviderElement(super.provider);

  @override
  int get recipeId => (origin as IsFavouriteProvider).recipeId;
}
// ignore_for_file: type=lint
// ignore_for_file: subtype_of_sealed_class, invalid_use_of_internal_member, invalid_use_of_visible_for_testing_member
