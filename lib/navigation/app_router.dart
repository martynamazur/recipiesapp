import 'package:auto_route/auto_route.dart';


import 'app_router.gr.dart';

@AutoRouterConfig()
class AppRouter extends $AppRouter {
  @override
  RouteType get defaultRouteType => const RouteType.material();

  @override
  List<AutoRoute> get routes => [
    MaterialRoute(page: HomeTest.page, ),
    //MaterialRoute(page: Home.page, initial: true),
    MaterialRoute(page: RecipeDetailed.page),
    MaterialRoute(page: Search.page),
    MaterialRoute(page: Favourite.page),
    MaterialRoute(page: MealTypeSearch.page),
    MaterialRoute(page: NewRecipe.page, initial:  true),
    MaterialRoute(page: SearchIngredients.page)

  ];
}