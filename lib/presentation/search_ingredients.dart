import 'package:auto_route/auto_route.dart';
import 'package:fetchingapi/domain/provider/add_new_recipe_provider.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:flutter_typeahead/flutter_typeahead.dart';
import '../domain/provider/ingredient_provider.dart';
import '../domain/provider/search_provider.dart';
import '../model/ingredient.dart';

@RoutePage()
class SearchIngredients extends ConsumerWidget {
  const SearchIngredients({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final ingredients = ref.watch(ingredientListProvider);

    return Scaffold(
      appBar: AppBar(
        title: Text('Add ingredients'),
        actions: [
          IconButton(
            icon: Icon(Icons.check_box_sharp),
            onPressed: () {
              // Handle save action
            },
          ),
        ],
      ),
      body: SafeArea(
        child: Column(
          children: [
            TypeAheadField<Ingredient>(
              suggestionsCallback: (search) async {
                if (search.isEmpty) {
                  return [];
                }
                final results = await ref.read(fetchIngredientsProvider(search).future);
                print('Fetched ingredients: $results');
                return results;
              },
              itemBuilder: (context, ingredient) {
                return ListTile(
                  title: Text(ingredient.name),
                );
              },
              onSelected: (Ingredient value) {
                ref.read(ingredientListProvider.notifier).addIngredient(value);
              },
            ),
            SizedBox(height: 48.0),
            Expanded(
              child: ListView.builder(
                itemCount: ingredients.length ,
                itemBuilder: (context, index){
                  final ingredient = ingredients[index];
                  return Row(
                    children: [
                      Text(ingredient.name),
                      Text(ingredient.image)
                    ],
                  );
              },
              ),
            )
          ],
        ),
      ),
    );
  }
}
