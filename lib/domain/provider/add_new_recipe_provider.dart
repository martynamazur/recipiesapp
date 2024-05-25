import 'package:flutter_riverpod/flutter_riverpod.dart';

import '../../model/ingredient.dart';
import 'ingredient_list_provider.dart';

final selectedDifficultyProvider = StateProvider<String?>((ref) => null);
final instructionsProvider = StateProvider<List<String>>((ref) => []);
final searchPhrase = StateProvider<String>((ref) => "water");

final ingredientListProvider = StateNotifierProvider<IngredientList, List<Ingredient>>((ref) {
  return IngredientList();
});
