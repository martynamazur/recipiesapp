import 'package:flutter_riverpod/flutter_riverpod.dart';
import '../../model/ingredient.dart';


class IngredientList extends StateNotifier<List<Ingredient>> {
  IngredientList() : super([]);

  void addIngredient(Ingredient ingredient) {
    state = [...state, ingredient];
  }

  void removeIngredient(Ingredient ingredient) {
    state = state.where((i) => i != ingredient).toList();
  }
}
