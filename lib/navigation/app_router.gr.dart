// GENERATED CODE - DO NOT MODIFY BY HAND

// **************************************************************************
// AutoRouterGenerator
// **************************************************************************

// ignore_for_file: type=lint
// coverage:ignore-file

// ignore_for_file: no_leading_underscores_for_library_prefixes
import 'package:auto_route/auto_route.dart' as _i9;
import 'package:fetchingapi/presentation/add_new_recipe.dart' as _i5;
import 'package:fetchingapi/presentation/favourite.dart' as _i1;
import 'package:fetchingapi/presentation/home.dart' as _i3;
import 'package:fetchingapi/presentation/home_page.dart' as _i2;
import 'package:fetchingapi/presentation/meal_type_search.dart' as _i4;
import 'package:fetchingapi/presentation/recipe_detailed.dart' as _i6;
import 'package:fetchingapi/presentation/search.dart' as _i7;
import 'package:fetchingapi/presentation/search_ingredients.dart' as _i8;

abstract class $AppRouter extends _i9.RootStackRouter {
  $AppRouter({super.navigatorKey});

  @override
  final Map<String, _i9.PageFactory> pagesMap = {
    Favourite.name: (routeData) {
      return _i9.AutoRoutePage<dynamic>(
        routeData: routeData,
        child: const _i1.Favourite(),
      );
    },
    Home.name: (routeData) {
      return _i9.AutoRoutePage<dynamic>(
        routeData: routeData,
        child: const _i2.Home(),
      );
    },
    HomeTest.name: (routeData) {
      return _i9.AutoRoutePage<dynamic>(
        routeData: routeData,
        child: const _i3.HomeTest(),
      );
    },
    MealTypeSearch.name: (routeData) {
      return _i9.AutoRoutePage<dynamic>(
        routeData: routeData,
        child: const _i4.MealTypeSearch(),
      );
    },
    NewRecipe.name: (routeData) {
      return _i9.AutoRoutePage<dynamic>(
        routeData: routeData,
        child: const _i5.NewRecipe(),
      );
    },
    RecipeDetailed.name: (routeData) {
      final args = routeData.argsAs<RecipeDetailedArgs>();
      return _i9.AutoRoutePage<dynamic>(
        routeData: routeData,
        child: _i6.RecipeDetailed(args.recipeId),
      );
    },
    Search.name: (routeData) {
      return _i9.AutoRoutePage<dynamic>(
        routeData: routeData,
        child: const _i7.Search(),
      );
    },
    SearchIngredients.name: (routeData) {
      return _i9.AutoRoutePage<dynamic>(
        routeData: routeData,
        child: const _i8.SearchIngredients(),
      );
    },
  };
}

/// generated route for
/// [_i1.Favourite]
class Favourite extends _i9.PageRouteInfo<void> {
  const Favourite({List<_i9.PageRouteInfo>? children})
      : super(
          Favourite.name,
          initialChildren: children,
        );

  static const String name = 'Favourite';

  static const _i9.PageInfo<void> page = _i9.PageInfo<void>(name);
}

/// generated route for
/// [_i2.Home]
class Home extends _i9.PageRouteInfo<void> {
  const Home({List<_i9.PageRouteInfo>? children})
      : super(
          Home.name,
          initialChildren: children,
        );

  static const String name = 'Home';

  static const _i9.PageInfo<void> page = _i9.PageInfo<void>(name);
}

/// generated route for
/// [_i3.HomeTest]
class HomeTest extends _i9.PageRouteInfo<void> {
  const HomeTest({List<_i9.PageRouteInfo>? children})
      : super(
          HomeTest.name,
          initialChildren: children,
        );

  static const String name = 'HomeTest';

  static const _i9.PageInfo<void> page = _i9.PageInfo<void>(name);
}

/// generated route for
/// [_i4.MealTypeSearch]
class MealTypeSearch extends _i9.PageRouteInfo<void> {
  const MealTypeSearch({List<_i9.PageRouteInfo>? children})
      : super(
          MealTypeSearch.name,
          initialChildren: children,
        );

  static const String name = 'MealTypeSearch';

  static const _i9.PageInfo<void> page = _i9.PageInfo<void>(name);
}

/// generated route for
/// [_i5.NewRecipe]
class NewRecipe extends _i9.PageRouteInfo<void> {
  const NewRecipe({List<_i9.PageRouteInfo>? children})
      : super(
          NewRecipe.name,
          initialChildren: children,
        );

  static const String name = 'NewRecipe';

  static const _i9.PageInfo<void> page = _i9.PageInfo<void>(name);
}

/// generated route for
/// [_i6.RecipeDetailed]
class RecipeDetailed extends _i9.PageRouteInfo<RecipeDetailedArgs> {
  RecipeDetailed({
    required int recipeId,
    List<_i9.PageRouteInfo>? children,
  }) : super(
          RecipeDetailed.name,
          args: RecipeDetailedArgs(recipeId: recipeId),
          initialChildren: children,
        );

  static const String name = 'RecipeDetailed';

  static const _i9.PageInfo<RecipeDetailedArgs> page =
      _i9.PageInfo<RecipeDetailedArgs>(name);
}

class RecipeDetailedArgs {
  const RecipeDetailedArgs({required this.recipeId});

  final int recipeId;

  @override
  String toString() {
    return 'RecipeDetailedArgs{recipeId: $recipeId}';
  }
}

/// generated route for
/// [_i7.Search]
class Search extends _i9.PageRouteInfo<void> {
  const Search({List<_i9.PageRouteInfo>? children})
      : super(
          Search.name,
          initialChildren: children,
        );

  static const String name = 'Search';

  static const _i9.PageInfo<void> page = _i9.PageInfo<void>(name);
}

/// generated route for
/// [_i8.SearchIngredients]
class SearchIngredients extends _i9.PageRouteInfo<void> {
  const SearchIngredients({List<_i9.PageRouteInfo>? children})
      : super(
          SearchIngredients.name,
          initialChildren: children,
        );

  static const String name = 'SearchIngredients';

  static const _i9.PageInfo<void> page = _i9.PageInfo<void>(name);
}
