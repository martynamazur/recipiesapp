import 'dart:math';

import 'package:dio/dio.dart';
import 'package:fetchingapi/domain/provider/search_provider.dart';
import 'package:fetchingapi/domain/repositories/recipe_repository.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';
import '../../model/recipe.dart';
import 'dio_provider.dart';


part 'recipe_provider.g.dart';

@riverpod
RecipeRepository recipeRepository (RecipeRepositoryRef ref) {
  return  RecipeRepository(ref.watch(dioProvider));
}

@riverpod
Future<List<Recipe>> fetchRecipies(FetchRecipiesRef ref, int page) async {
  final cancelToken = CancelToken();
  final recipies = await ref.watch(recipeRepositoryProvider).fetchRecipes(page, cancelToken: cancelToken);
  return recipies;

}

@riverpod
Future<List<Recipe>> fetchSearchResults(FetchSearchResultsRef ref, String phrase, int page) async {
  final cancelToken = CancelToken();
  final recipies = await ref.watch(recipeRepositoryProvider).getSearchResults(phrase, page, cancelToken: cancelToken);
  return recipies;
}

@riverpod
Future<Recipe> fetchRecipe(FetchRecipeRef ref, int id) async {
  final recipe = await ref.watch(recipeRepositoryProvider).fetchRecipe(id);
  return recipe;
}

@riverpod
Future<List<Recipe>> fetchTheMostPopularRecipe(FetchTheMostPopularRecipeRef ref) async {
  final recipe = await ref.watch(recipeRepositoryProvider).fetchTheMostPopularRecipe();
  return recipe;
}

@riverpod
Future<List<Recipe>> fetchRecipiesByMealType(FetchRecipiesByMealTypeRef ref, String mealType, int page) async {
  final cancelToken = CancelToken();
  final recipies = await ref.watch(recipeRepositoryProvider).fetchRecipiesByMealType(mealType, cancelToken: cancelToken, page);
  return recipies;
}

final selectedMealTypeProvider = StateProvider<String>((ref) => '');

