import 'package:auto_route/annotations.dart';
import 'package:auto_route/auto_route.dart';
import 'package:fetchingapi/navigation/app_router.gr.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import '../utils/colors.dart';
import '../utils/meal_type_category.dart';
import '../domain/provider/recipe_provider.dart';

@RoutePage()
class MealTypeSearch extends ConsumerWidget {
  const MealTypeSearch({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    int page = 1;
    final selectedMealType = ref.watch(selectedMealTypeProvider);
    final recipes = ref.watch(fetchRecipiesByMealTypeProvider(selectedMealType, page));


    return Scaffold(
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.all(16.0),
          child: Column(
            children: [
              recipes.when(
                data: (recipe) {
                  return Expanded(
                    child: Column(
                      children: [
                        Row(children: [
                          IconButton(
                              onPressed: (){
                              context.router.back();
                          }, icon: Icon(Icons.arrow_back_ios_rounded)),
                          Text('Recipes - $selectedMealType', style: TextStyle(fontSize: 24.0, fontWeight: FontWeight.bold))
                        ]),
                        mealTypeCategory(ref, context),
                        Expanded(
                          child: GridView.builder(
                            gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                              crossAxisCount: 2,
                              mainAxisSpacing: 10.0,
                              crossAxisSpacing: 10.0,
                              childAspectRatio: 1.0,
                            ),
                            itemCount: recipe.length,
                            itemBuilder: (BuildContext context, int index) {
                              return GestureDetector(
                                onTap: (){
                                  context.router.navigate(RecipeDetailed(recipeId: recipe[index].id));
                                },
                                child: Stack(
                                  children: [
                                    FadeInImage.assetNetwork(
                                      placeholder: 'assets/placeholder.png',
                                      image: 'https://upload.wikimedia.org/wikipedia/commons/9/91/Pizza-3007395.jpg',
                                      width: double.infinity,
                                      height: double.infinity,
                                      fit: BoxFit.cover,
                                    ),
                                    Positioned(
                                      top: 16.0,
                                      left: 16.0,
                                      right: 16.0,
                                      child: Container(
                                        padding: const EdgeInsets.all(8.0),
                                        decoration: BoxDecoration(
                                          color: AppColors.secondary,
                                          borderRadius: BorderRadius.circular(20.0)
                                        ),
                                        constraints: const BoxConstraints.tightFor(width: double.infinity),
                                        child: Row(
                                          //mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                          children: [
                                            const Icon(Icons.star),
                                            Text(
                                              recipe[index].rating.toString(),
                                              style: const TextStyle(color: Colors.white),
                                            ),
                                            Text(
                                              recipe[index].reviewCount.toString(),
                                              style: const TextStyle(color: Colors.white),
                                            ),
                                          ],
                                        ),
                                      ),
                                    ),
                                  ],
                                ),
                              );
                            },
                          ),
                        ),
                      ],
                    ),
                  );
                },
                error: (e, st) => Center(
                  child: Padding(
                    padding: const EdgeInsets.all(30.0),
                    child: Text(
                      e.toString(),
                      style: Theme.of(context).textTheme.headlineMedium,
                      textAlign: TextAlign.center,
                    ),
                  ),
                ),
                loading: () => const Center(
                  child: CircularProgressIndicator(),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
