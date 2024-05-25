import 'package:dio/dio.dart';
import 'package:fetchingapi/model/recipe.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';

import '../provider/dio_provider.dart';


//part 'recipe_repository.g.dart';

const int limit = 10;
int totalProducts = 0;
int totalPages = 1;

class RecipeRepository {
  final Dio dio;

  RecipeRepository(this.dio);

  Future<List<Recipe>> fetchRecipes(int page, {CancelToken? cancelToken}) async {
    try {
      final Response response = await dio.get('/recipes',
          queryParameters: {'limit': limit, 'skip': (page - 1) * limit},
          cancelToken: cancelToken);

      if (response.statusCode != 200) {
        throw 'Failed to fetch recipes';
      }

      final List recipesList = response.data['recipes'];
      totalProducts = response.data['total'];
      totalPages = (totalProducts / limit).ceil();

      final recipes = [
        for (final recipe in recipesList) Recipe.fromJson(recipe)
      ];

      return recipes;
    } catch (e) {
      rethrow;
    }
  }

  Future<Recipe> fetchRecipe(int id) async {
    try {
      final Response response = await dio.get('/recipes/$id');

      if (response.statusCode != 200) {
        throw 'Failed to fetch recipe';
      }

      final Recipe recipe = Recipe.fromJson(response.data);

      return recipe;
    } catch (e) {
      rethrow;
    }
  }

  Future<List<Recipe>> getSearchResults(String phrase, int page, {CancelToken? cancelToken}) async {
    try {
      final Response response = await dio.get('/recipes/search?q=$phrase',
          queryParameters: {'limit': limit, 'skip': (page - 1) * limit},
          cancelToken: cancelToken);

      if (response.statusCode != 200) {
        throw 'Failed to fetch recipes';
      }

      final List recipesList = response.data['recipes'];
      totalProducts = response.data['total'];
      totalPages = (totalProducts / limit).ceil();

      final recipes = [
        for (final recipe in recipesList) Recipe.fromJson(recipe)
      ];

      return recipes;
    } catch (e) {
      rethrow;
    }
  }

  Future<List<Recipe>> fetchRecipiesByMealType(String mealType, int page, {CancelToken? cancelToken}) async {
    try {
      final Response response = await dio.get('/recipes/meal-type/$mealType',
          queryParameters: {'limit': limit, 'skip': (page - 1) * limit},
          cancelToken: cancelToken);

      if (response.statusCode != 200) {
        throw 'Failed to fetch recipes';
      }

      final List recipesList = response.data['recipes'];
      totalProducts = response.data['total'];
      totalPages = (totalProducts / limit).ceil();

      // Adjusting the limit to fetch all available recipes if there are fewer than 10
      int adjustedLimit = limit;
      if (recipesList.length < limit && totalProducts > recipesList.length) {
        adjustedLimit = totalProducts - (page - 1) * limit;
      }

      final recipes = [
        for (final recipe in recipesList.take(adjustedLimit)) Recipe.fromJson(recipe)
      ];

      return recipes;
    } catch (e) {
      rethrow;
    }
  }

  Future<List<Recipe>> fetchTheMostPopularRecipe() async{
    try{
      final Response response = await dio.get('/recipes');
      final List recipesList = response.data['recipes'];
      final recipes = [
        for (final recipe in recipesList) Recipe.fromJson(recipe)
      ]..sort((a,b) => b.rating.compareTo(a.rating));
      return recipes;
    }catch(e){
      rethrow;
    }
  }
  

}
