// GENERATED CODE - DO NOT MODIFY BY HAND

// **************************************************************************
// AutoRouterGenerator
// **************************************************************************

// ignore_for_file: type=lint
// coverage:ignore-file

// ignore_for_file: no_leading_underscores_for_library_prefixes
import 'package:auto_route/auto_route.dart' as _i11;
import 'package:fetchingapi/presentation/add_new_recipe.dart' as _i5;
import 'package:fetchingapi/presentation/favourite.dart' as _i1;
import 'package:fetchingapi/presentation/home.dart' as _i3;
import 'package:fetchingapi/presentation/home_page.dart' as _i2;
import 'package:fetchingapi/presentation/meal_type_search.dart' as _i4;
import 'package:fetchingapi/presentation/profil.dart' as _i6;
import 'package:fetchingapi/presentation/recipe_detailed.dart' as _i7;
import 'package:fetchingapi/presentation/search.dart' as _i8;
import 'package:fetchingapi/presentation/search_ingredients.dart' as _i9;
import 'package:fetchingapi/presentation/user_recipies.dart' as _i10;

abstract class $AppRouter extends _i11.RootStackRouter {
  $AppRouter({super.navigatorKey});

  @override
  final Map<String, _i11.PageFactory> pagesMap = {
    Favourite.name: (routeData) {
      return _i11.AutoRoutePage<dynamic>(
        routeData: routeData,
        child: const _i1.Favourite(),
      );
    },
    Home.name: (routeData) {
      return _i11.AutoRoutePage<dynamic>(
        routeData: routeData,
        child: const _i2.Home(),
      );
    },
    HomeTest.name: (routeData) {
      return _i11.AutoRoutePage<dynamic>(
        routeData: routeData,
        child: const _i3.HomeTest(),
      );
    },
    MealTypeSearch.name: (routeData) {
      return _i11.AutoRoutePage<dynamic>(
        routeData: routeData,
        child: const _i4.MealTypeSearch(),
      );
    },
    NewRecipe.name: (routeData) {
      return _i11.AutoRoutePage<dynamic>(
        routeData: routeData,
        child: const _i5.NewRecipe(),
      );
    },
    Profile.name: (routeData) {
      return _i11.AutoRoutePage<dynamic>(
        routeData: routeData,
        child: const _i6.Profile(),
      );
    },
    RecipeDetailed.name: (routeData) {
      final args = routeData.argsAs<RecipeDetailedArgs>();
      return _i11.AutoRoutePage<dynamic>(
        routeData: routeData,
        child: _i7.RecipeDetailed(args.recipeId),
      );
    },
    Search.name: (routeData) {
      return _i11.AutoRoutePage<dynamic>(
        routeData: routeData,
        child: const _i8.Search(),
      );
    },
    SearchIngredients.name: (routeData) {
      return _i11.AutoRoutePage<dynamic>(
        routeData: routeData,
        child: const _i9.SearchIngredients(),
      );
    },
    UserRecipies.name: (routeData) {
      return _i11.AutoRoutePage<dynamic>(
        routeData: routeData,
        child: const _i10.UserRecipies(),
      );
    },
  };
}

/// generated route for
/// [_i1.Favourite]
class Favourite extends _i11.PageRouteInfo<void> {
  const Favourite({List<_i11.PageRouteInfo>? children})
      : super(
          Favourite.name,
          initialChildren: children,
        );

  static const String name = 'Favourite';

  static const _i11.PageInfo<void> page = _i11.PageInfo<void>(name);
}

/// generated route for
/// [_i2.Home]
class Home extends _i11.PageRouteInfo<void> {
  const Home({List<_i11.PageRouteInfo>? children})
      : super(
          Home.name,
          initialChildren: children,
        );

  static const String name = 'Home';

  static const _i11.PageInfo<void> page = _i11.PageInfo<void>(name);
}

/// generated route for
/// [_i3.HomeTest]
class HomeTest extends _i11.PageRouteInfo<void> {
  const HomeTest({List<_i11.PageRouteInfo>? children})
      : super(
          HomeTest.name,
          initialChildren: children,
        );

  static const String name = 'HomeTest';

  static const _i11.PageInfo<void> page = _i11.PageInfo<void>(name);
}

/// generated route for
/// [_i4.MealTypeSearch]
class MealTypeSearch extends _i11.PageRouteInfo<void> {
  const MealTypeSearch({List<_i11.PageRouteInfo>? children})
      : super(
          MealTypeSearch.name,
          initialChildren: children,
        );

  static const String name = 'MealTypeSearch';

  static const _i11.PageInfo<void> page = _i11.PageInfo<void>(name);
}

/// generated route for
/// [_i5.NewRecipe]
class NewRecipe extends _i11.PageRouteInfo<void> {
  const NewRecipe({List<_i11.PageRouteInfo>? children})
      : super(
          NewRecipe.name,
          initialChildren: children,
        );

  static const String name = 'NewRecipe';

  static const _i11.PageInfo<void> page = _i11.PageInfo<void>(name);
}

/// generated route for
/// [_i6.Profile]
class Profile extends _i11.PageRouteInfo<void> {
  const Profile({List<_i11.PageRouteInfo>? children})
      : super(
          Profile.name,
          initialChildren: children,
        );

  static const String name = 'Profile';

  static const _i11.PageInfo<void> page = _i11.PageInfo<void>(name);
}

/// generated route for
/// [_i7.RecipeDetailed]
class RecipeDetailed extends _i11.PageRouteInfo<RecipeDetailedArgs> {
  RecipeDetailed({
    required int recipeId,
    List<_i11.PageRouteInfo>? children,
  }) : super(
          RecipeDetailed.name,
          args: RecipeDetailedArgs(recipeId: recipeId),
          initialChildren: children,
        );

  static const String name = 'RecipeDetailed';

  static const _i11.PageInfo<RecipeDetailedArgs> page =
      _i11.PageInfo<RecipeDetailedArgs>(name);
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
/// [_i8.Search]
class Search extends _i11.PageRouteInfo<void> {
  const Search({List<_i11.PageRouteInfo>? children})
      : super(
          Search.name,
          initialChildren: children,
        );

  static const String name = 'Search';

  static const _i11.PageInfo<void> page = _i11.PageInfo<void>(name);
}

/// generated route for
/// [_i9.SearchIngredients]
class SearchIngredients extends _i11.PageRouteInfo<void> {
  const SearchIngredients({List<_i11.PageRouteInfo>? children})
      : super(
          SearchIngredients.name,
          initialChildren: children,
        );

  static const String name = 'SearchIngredients';

  static const _i11.PageInfo<void> page = _i11.PageInfo<void>(name);
}

/// generated route for
/// [_i10.UserRecipies]
class UserRecipies extends _i11.PageRouteInfo<void> {
  const UserRecipies({List<_i11.PageRouteInfo>? children})
      : super(
          UserRecipies.name,
          initialChildren: children,
        );

  static const String name = 'UserRecipies';

  static const _i11.PageInfo<void> page = _i11.PageInfo<void>(name);
}
