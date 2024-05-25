// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'ingredient_provider.dart';

// **************************************************************************
// RiverpodGenerator
// **************************************************************************

String _$ingredientRepositoryHash() =>
    r'8a90571c443347a0da51186ac4f5ab554d83902c';

/// See also [ingredientRepository].
@ProviderFor(ingredientRepository)
final ingredientRepositoryProvider =
    AutoDisposeProvider<IngredientRepository>.internal(
  ingredientRepository,
  name: r'ingredientRepositoryProvider',
  debugGetCreateSourceHash: const bool.fromEnvironment('dart.vm.product')
      ? null
      : _$ingredientRepositoryHash,
  dependencies: null,
  allTransitiveDependencies: null,
);

typedef IngredientRepositoryRef = AutoDisposeProviderRef<IngredientRepository>;
String _$fetchIngredientsHash() => r'487b5ea6c97558b43331a918689e2fda975251c4';

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

/// See also [fetchIngredients].
@ProviderFor(fetchIngredients)
const fetchIngredientsProvider = FetchIngredientsFamily();

/// See also [fetchIngredients].
class FetchIngredientsFamily extends Family<AsyncValue<List<Ingredient>>> {
  /// See also [fetchIngredients].
  const FetchIngredientsFamily();

  /// See also [fetchIngredients].
  FetchIngredientsProvider call(
    String phrase,
  ) {
    return FetchIngredientsProvider(
      phrase,
    );
  }

  @override
  FetchIngredientsProvider getProviderOverride(
    covariant FetchIngredientsProvider provider,
  ) {
    return call(
      provider.phrase,
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
  String? get name => r'fetchIngredientsProvider';
}

/// See also [fetchIngredients].
class FetchIngredientsProvider
    extends AutoDisposeFutureProvider<List<Ingredient>> {
  /// See also [fetchIngredients].
  FetchIngredientsProvider(
    String phrase,
  ) : this._internal(
          (ref) => fetchIngredients(
            ref as FetchIngredientsRef,
            phrase,
          ),
          from: fetchIngredientsProvider,
          name: r'fetchIngredientsProvider',
          debugGetCreateSourceHash:
              const bool.fromEnvironment('dart.vm.product')
                  ? null
                  : _$fetchIngredientsHash,
          dependencies: FetchIngredientsFamily._dependencies,
          allTransitiveDependencies:
              FetchIngredientsFamily._allTransitiveDependencies,
          phrase: phrase,
        );

  FetchIngredientsProvider._internal(
    super._createNotifier, {
    required super.name,
    required super.dependencies,
    required super.allTransitiveDependencies,
    required super.debugGetCreateSourceHash,
    required super.from,
    required this.phrase,
  }) : super.internal();

  final String phrase;

  @override
  Override overrideWith(
    FutureOr<List<Ingredient>> Function(FetchIngredientsRef provider) create,
  ) {
    return ProviderOverride(
      origin: this,
      override: FetchIngredientsProvider._internal(
        (ref) => create(ref as FetchIngredientsRef),
        from: from,
        name: null,
        dependencies: null,
        allTransitiveDependencies: null,
        debugGetCreateSourceHash: null,
        phrase: phrase,
      ),
    );
  }

  @override
  AutoDisposeFutureProviderElement<List<Ingredient>> createElement() {
    return _FetchIngredientsProviderElement(this);
  }

  @override
  bool operator ==(Object other) {
    return other is FetchIngredientsProvider && other.phrase == phrase;
  }

  @override
  int get hashCode {
    var hash = _SystemHash.combine(0, runtimeType.hashCode);
    hash = _SystemHash.combine(hash, phrase.hashCode);

    return _SystemHash.finish(hash);
  }
}

mixin FetchIngredientsRef on AutoDisposeFutureProviderRef<List<Ingredient>> {
  /// The parameter `phrase` of this provider.
  String get phrase;
}

class _FetchIngredientsProviderElement
    extends AutoDisposeFutureProviderElement<List<Ingredient>>
    with FetchIngredientsRef {
  _FetchIngredientsProviderElement(super.provider);

  @override
  String get phrase => (origin as FetchIngredientsProvider).phrase;
}
// ignore_for_file: type=lint
// ignore_for_file: subtype_of_sealed_class, invalid_use_of_internal_member, invalid_use_of_visible_for_testing_member
