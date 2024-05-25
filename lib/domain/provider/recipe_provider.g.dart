// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'recipe_provider.dart';

// **************************************************************************
// RiverpodGenerator
// **************************************************************************

String _$recipeRepositoryHash() => r'c3bfacf4d90e3fd49c420c25fd9b9b14a7ca84da';

/// See also [recipeRepository].
@ProviderFor(recipeRepository)
final recipeRepositoryProvider = AutoDisposeProvider<RecipeRepository>.internal(
  recipeRepository,
  name: r'recipeRepositoryProvider',
  debugGetCreateSourceHash: const bool.fromEnvironment('dart.vm.product')
      ? null
      : _$recipeRepositoryHash,
  dependencies: null,
  allTransitiveDependencies: null,
);

typedef RecipeRepositoryRef = AutoDisposeProviderRef<RecipeRepository>;
String _$fetchRecipiesHash() => r'1be7b89aa2da492dc04b5191f734f2dcdf53a6cd';

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

/// See also [fetchRecipies].
@ProviderFor(fetchRecipies)
const fetchRecipiesProvider = FetchRecipiesFamily();

/// See also [fetchRecipies].
class FetchRecipiesFamily extends Family<AsyncValue<List<Recipe>>> {
  /// See also [fetchRecipies].
  const FetchRecipiesFamily();

  /// See also [fetchRecipies].
  FetchRecipiesProvider call(
    int page,
  ) {
    return FetchRecipiesProvider(
      page,
    );
  }

  @override
  FetchRecipiesProvider getProviderOverride(
    covariant FetchRecipiesProvider provider,
  ) {
    return call(
      provider.page,
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
  String? get name => r'fetchRecipiesProvider';
}

/// See also [fetchRecipies].
class FetchRecipiesProvider extends AutoDisposeFutureProvider<List<Recipe>> {
  /// See also [fetchRecipies].
  FetchRecipiesProvider(
    int page,
  ) : this._internal(
          (ref) => fetchRecipies(
            ref as FetchRecipiesRef,
            page,
          ),
          from: fetchRecipiesProvider,
          name: r'fetchRecipiesProvider',
          debugGetCreateSourceHash:
              const bool.fromEnvironment('dart.vm.product')
                  ? null
                  : _$fetchRecipiesHash,
          dependencies: FetchRecipiesFamily._dependencies,
          allTransitiveDependencies:
              FetchRecipiesFamily._allTransitiveDependencies,
          page: page,
        );

  FetchRecipiesProvider._internal(
    super._createNotifier, {
    required super.name,
    required super.dependencies,
    required super.allTransitiveDependencies,
    required super.debugGetCreateSourceHash,
    required super.from,
    required this.page,
  }) : super.internal();

  final int page;

  @override
  Override overrideWith(
    FutureOr<List<Recipe>> Function(FetchRecipiesRef provider) create,
  ) {
    return ProviderOverride(
      origin: this,
      override: FetchRecipiesProvider._internal(
        (ref) => create(ref as FetchRecipiesRef),
        from: from,
        name: null,
        dependencies: null,
        allTransitiveDependencies: null,
        debugGetCreateSourceHash: null,
        page: page,
      ),
    );
  }

  @override
  AutoDisposeFutureProviderElement<List<Recipe>> createElement() {
    return _FetchRecipiesProviderElement(this);
  }

  @override
  bool operator ==(Object other) {
    return other is FetchRecipiesProvider && other.page == page;
  }

  @override
  int get hashCode {
    var hash = _SystemHash.combine(0, runtimeType.hashCode);
    hash = _SystemHash.combine(hash, page.hashCode);

    return _SystemHash.finish(hash);
  }
}

mixin FetchRecipiesRef on AutoDisposeFutureProviderRef<List<Recipe>> {
  /// The parameter `page` of this provider.
  int get page;
}

class _FetchRecipiesProviderElement
    extends AutoDisposeFutureProviderElement<List<Recipe>>
    with FetchRecipiesRef {
  _FetchRecipiesProviderElement(super.provider);

  @override
  int get page => (origin as FetchRecipiesProvider).page;
}

String _$fetchSearchResultsHash() =>
    r'15012e13c0e7cba41d8df88accf6c3c220cbdb35';

/// See also [fetchSearchResults].
@ProviderFor(fetchSearchResults)
const fetchSearchResultsProvider = FetchSearchResultsFamily();

/// See also [fetchSearchResults].
class FetchSearchResultsFamily extends Family<AsyncValue<List<Recipe>>> {
  /// See also [fetchSearchResults].
  const FetchSearchResultsFamily();

  /// See also [fetchSearchResults].
  FetchSearchResultsProvider call(
    String phrase,
    int page,
  ) {
    return FetchSearchResultsProvider(
      phrase,
      page,
    );
  }

  @override
  FetchSearchResultsProvider getProviderOverride(
    covariant FetchSearchResultsProvider provider,
  ) {
    return call(
      provider.phrase,
      provider.page,
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
  String? get name => r'fetchSearchResultsProvider';
}

/// See also [fetchSearchResults].
class FetchSearchResultsProvider
    extends AutoDisposeFutureProvider<List<Recipe>> {
  /// See also [fetchSearchResults].
  FetchSearchResultsProvider(
    String phrase,
    int page,
  ) : this._internal(
          (ref) => fetchSearchResults(
            ref as FetchSearchResultsRef,
            phrase,
            page,
          ),
          from: fetchSearchResultsProvider,
          name: r'fetchSearchResultsProvider',
          debugGetCreateSourceHash:
              const bool.fromEnvironment('dart.vm.product')
                  ? null
                  : _$fetchSearchResultsHash,
          dependencies: FetchSearchResultsFamily._dependencies,
          allTransitiveDependencies:
              FetchSearchResultsFamily._allTransitiveDependencies,
          phrase: phrase,
          page: page,
        );

  FetchSearchResultsProvider._internal(
    super._createNotifier, {
    required super.name,
    required super.dependencies,
    required super.allTransitiveDependencies,
    required super.debugGetCreateSourceHash,
    required super.from,
    required this.phrase,
    required this.page,
  }) : super.internal();

  final String phrase;
  final int page;

  @override
  Override overrideWith(
    FutureOr<List<Recipe>> Function(FetchSearchResultsRef provider) create,
  ) {
    return ProviderOverride(
      origin: this,
      override: FetchSearchResultsProvider._internal(
        (ref) => create(ref as FetchSearchResultsRef),
        from: from,
        name: null,
        dependencies: null,
        allTransitiveDependencies: null,
        debugGetCreateSourceHash: null,
        phrase: phrase,
        page: page,
      ),
    );
  }

  @override
  AutoDisposeFutureProviderElement<List<Recipe>> createElement() {
    return _FetchSearchResultsProviderElement(this);
  }

  @override
  bool operator ==(Object other) {
    return other is FetchSearchResultsProvider &&
        other.phrase == phrase &&
        other.page == page;
  }

  @override
  int get hashCode {
    var hash = _SystemHash.combine(0, runtimeType.hashCode);
    hash = _SystemHash.combine(hash, phrase.hashCode);
    hash = _SystemHash.combine(hash, page.hashCode);

    return _SystemHash.finish(hash);
  }
}

mixin FetchSearchResultsRef on AutoDisposeFutureProviderRef<List<Recipe>> {
  /// The parameter `phrase` of this provider.
  String get phrase;

  /// The parameter `page` of this provider.
  int get page;
}

class _FetchSearchResultsProviderElement
    extends AutoDisposeFutureProviderElement<List<Recipe>>
    with FetchSearchResultsRef {
  _FetchSearchResultsProviderElement(super.provider);

  @override
  String get phrase => (origin as FetchSearchResultsProvider).phrase;
  @override
  int get page => (origin as FetchSearchResultsProvider).page;
}

String _$fetchRecipeHash() => r'2d17e9a90ebdaaf46d65b5ec9fa469b62340cab8';

/// See also [fetchRecipe].
@ProviderFor(fetchRecipe)
const fetchRecipeProvider = FetchRecipeFamily();

/// See also [fetchRecipe].
class FetchRecipeFamily extends Family<AsyncValue<Recipe>> {
  /// See also [fetchRecipe].
  const FetchRecipeFamily();

  /// See also [fetchRecipe].
  FetchRecipeProvider call(
    int id,
  ) {
    return FetchRecipeProvider(
      id,
    );
  }

  @override
  FetchRecipeProvider getProviderOverride(
    covariant FetchRecipeProvider provider,
  ) {
    return call(
      provider.id,
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
  String? get name => r'fetchRecipeProvider';
}

/// See also [fetchRecipe].
class FetchRecipeProvider extends AutoDisposeFutureProvider<Recipe> {
  /// See also [fetchRecipe].
  FetchRecipeProvider(
    int id,
  ) : this._internal(
          (ref) => fetchRecipe(
            ref as FetchRecipeRef,
            id,
          ),
          from: fetchRecipeProvider,
          name: r'fetchRecipeProvider',
          debugGetCreateSourceHash:
              const bool.fromEnvironment('dart.vm.product')
                  ? null
                  : _$fetchRecipeHash,
          dependencies: FetchRecipeFamily._dependencies,
          allTransitiveDependencies:
              FetchRecipeFamily._allTransitiveDependencies,
          id: id,
        );

  FetchRecipeProvider._internal(
    super._createNotifier, {
    required super.name,
    required super.dependencies,
    required super.allTransitiveDependencies,
    required super.debugGetCreateSourceHash,
    required super.from,
    required this.id,
  }) : super.internal();

  final int id;

  @override
  Override overrideWith(
    FutureOr<Recipe> Function(FetchRecipeRef provider) create,
  ) {
    return ProviderOverride(
      origin: this,
      override: FetchRecipeProvider._internal(
        (ref) => create(ref as FetchRecipeRef),
        from: from,
        name: null,
        dependencies: null,
        allTransitiveDependencies: null,
        debugGetCreateSourceHash: null,
        id: id,
      ),
    );
  }

  @override
  AutoDisposeFutureProviderElement<Recipe> createElement() {
    return _FetchRecipeProviderElement(this);
  }

  @override
  bool operator ==(Object other) {
    return other is FetchRecipeProvider && other.id == id;
  }

  @override
  int get hashCode {
    var hash = _SystemHash.combine(0, runtimeType.hashCode);
    hash = _SystemHash.combine(hash, id.hashCode);

    return _SystemHash.finish(hash);
  }
}

mixin FetchRecipeRef on AutoDisposeFutureProviderRef<Recipe> {
  /// The parameter `id` of this provider.
  int get id;
}

class _FetchRecipeProviderElement
    extends AutoDisposeFutureProviderElement<Recipe> with FetchRecipeRef {
  _FetchRecipeProviderElement(super.provider);

  @override
  int get id => (origin as FetchRecipeProvider).id;
}

String _$fetchTheMostPopularRecipeHash() =>
    r'134f697cbfea333e8066be42be97e3637a71e0bd';

/// See also [fetchTheMostPopularRecipe].
@ProviderFor(fetchTheMostPopularRecipe)
final fetchTheMostPopularRecipeProvider =
    AutoDisposeFutureProvider<List<Recipe>>.internal(
  fetchTheMostPopularRecipe,
  name: r'fetchTheMostPopularRecipeProvider',
  debugGetCreateSourceHash: const bool.fromEnvironment('dart.vm.product')
      ? null
      : _$fetchTheMostPopularRecipeHash,
  dependencies: null,
  allTransitiveDependencies: null,
);

typedef FetchTheMostPopularRecipeRef
    = AutoDisposeFutureProviderRef<List<Recipe>>;
String _$fetchRecipiesByMealTypeHash() =>
    r'2925da21ad5b30cbf90c83006538dc0e0fd8c662';

/// See also [fetchRecipiesByMealType].
@ProviderFor(fetchRecipiesByMealType)
const fetchRecipiesByMealTypeProvider = FetchRecipiesByMealTypeFamily();

/// See also [fetchRecipiesByMealType].
class FetchRecipiesByMealTypeFamily extends Family<AsyncValue<List<Recipe>>> {
  /// See also [fetchRecipiesByMealType].
  const FetchRecipiesByMealTypeFamily();

  /// See also [fetchRecipiesByMealType].
  FetchRecipiesByMealTypeProvider call(
    String mealType,
    int page,
  ) {
    return FetchRecipiesByMealTypeProvider(
      mealType,
      page,
    );
  }

  @override
  FetchRecipiesByMealTypeProvider getProviderOverride(
    covariant FetchRecipiesByMealTypeProvider provider,
  ) {
    return call(
      provider.mealType,
      provider.page,
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
  String? get name => r'fetchRecipiesByMealTypeProvider';
}

/// See also [fetchRecipiesByMealType].
class FetchRecipiesByMealTypeProvider
    extends AutoDisposeFutureProvider<List<Recipe>> {
  /// See also [fetchRecipiesByMealType].
  FetchRecipiesByMealTypeProvider(
    String mealType,
    int page,
  ) : this._internal(
          (ref) => fetchRecipiesByMealType(
            ref as FetchRecipiesByMealTypeRef,
            mealType,
            page,
          ),
          from: fetchRecipiesByMealTypeProvider,
          name: r'fetchRecipiesByMealTypeProvider',
          debugGetCreateSourceHash:
              const bool.fromEnvironment('dart.vm.product')
                  ? null
                  : _$fetchRecipiesByMealTypeHash,
          dependencies: FetchRecipiesByMealTypeFamily._dependencies,
          allTransitiveDependencies:
              FetchRecipiesByMealTypeFamily._allTransitiveDependencies,
          mealType: mealType,
          page: page,
        );

  FetchRecipiesByMealTypeProvider._internal(
    super._createNotifier, {
    required super.name,
    required super.dependencies,
    required super.allTransitiveDependencies,
    required super.debugGetCreateSourceHash,
    required super.from,
    required this.mealType,
    required this.page,
  }) : super.internal();

  final String mealType;
  final int page;

  @override
  Override overrideWith(
    FutureOr<List<Recipe>> Function(FetchRecipiesByMealTypeRef provider) create,
  ) {
    return ProviderOverride(
      origin: this,
      override: FetchRecipiesByMealTypeProvider._internal(
        (ref) => create(ref as FetchRecipiesByMealTypeRef),
        from: from,
        name: null,
        dependencies: null,
        allTransitiveDependencies: null,
        debugGetCreateSourceHash: null,
        mealType: mealType,
        page: page,
      ),
    );
  }

  @override
  AutoDisposeFutureProviderElement<List<Recipe>> createElement() {
    return _FetchRecipiesByMealTypeProviderElement(this);
  }

  @override
  bool operator ==(Object other) {
    return other is FetchRecipiesByMealTypeProvider &&
        other.mealType == mealType &&
        other.page == page;
  }

  @override
  int get hashCode {
    var hash = _SystemHash.combine(0, runtimeType.hashCode);
    hash = _SystemHash.combine(hash, mealType.hashCode);
    hash = _SystemHash.combine(hash, page.hashCode);

    return _SystemHash.finish(hash);
  }
}

mixin FetchRecipiesByMealTypeRef on AutoDisposeFutureProviderRef<List<Recipe>> {
  /// The parameter `mealType` of this provider.
  String get mealType;

  /// The parameter `page` of this provider.
  int get page;
}

class _FetchRecipiesByMealTypeProviderElement
    extends AutoDisposeFutureProviderElement<List<Recipe>>
    with FetchRecipiesByMealTypeRef {
  _FetchRecipiesByMealTypeProviderElement(super.provider);

  @override
  String get mealType => (origin as FetchRecipiesByMealTypeProvider).mealType;
  @override
  int get page => (origin as FetchRecipiesByMealTypeProvider).page;
}
// ignore_for_file: type=lint
// ignore_for_file: subtype_of_sealed_class, invalid_use_of_internal_member, invalid_use_of_visible_for_testing_member
