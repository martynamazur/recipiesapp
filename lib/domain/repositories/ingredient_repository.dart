import 'package:dio/dio.dart';
import 'package:fetchingapi/model/ingredient.dart';

class IngredientRepository {
  final Dio dio;

  IngredientRepository(this.dio);

  Future<List<Ingredient>> autoCompleteSearch(String phrase) async {
    try {

      final Response response = await dio.get(
          '/food/ingredients/autocomplete',
          queryParameters: {'query': phrase});
          

      //final Response response = await Dio().get('https://api.spoonacular.com/food/ingredients/autocomplete?query=appl&apiKey=e100928119054a16a7c7fbfee372e4a8');
      final ingredients = [
        for (final ingredient in response.data) Ingredient.fromJson(ingredient)
      ];
      return ingredients;
    } catch (e) {
      print(e);
      rethrow;
    }
  }
}
