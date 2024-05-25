
import 'dart:developer';

import 'package:fetchingapi/domain/provider/dio_spoonacular.dart';
import 'package:fetchingapi/domain/repositories/ingredient_repository.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';

import '../../model/ingredient.dart';

part 'ingredient_provider.g.dart';

@riverpod
IngredientRepository ingredientRepository (IngredientRepositoryRef ref){
return IngredientRepository(ref.watch(dioSpoonacularProvider));
}

@riverpod
Future<List<Ingredient>> fetchIngredients(FetchIngredientsRef ref, String phrase) async {
  final ingredients = await ref.watch(ingredientRepositoryProvider).autoCompleteSearch(phrase);
  log('test');
  log(ingredients.length.toString());
  return ingredients;
}
