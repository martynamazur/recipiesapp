import 'dart:ui';

import 'package:auto_route/annotations.dart';
import 'package:auto_route/auto_route.dart';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:fetchingapi/navigation/app_router.gr.dart';
import '../domain/provider/recipe_provider.dart';
import '../domain/provider/search_provider.dart';
import '../utils/colors.dart';
import '../utils/meal_type_category.dart';


@RoutePage()
class HomeTest extends ConsumerWidget {
  const HomeTest({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    int page = 1;
    final phrase = ref.watch(searchPhrase);
    final recipies = ref.watch(fetchSearchResultsProvider(phrase, page));
    final theMostPopularRecipe = ref.watch(fetchTheMostPopularRecipeProvider);

    return Scaffold(
      body: SafeArea(
        child: Column(
          children: [
            Container(
                decoration: BoxDecoration(
                    color: AppColors.primaryVariant,
                    borderRadius: BorderRadius.only(
                        bottomLeft: Radius.circular(20.0),
                        bottomRight: Radius.circular(20.0)
                    )
                ),
                child: Column(
                  children: [
                    const Row(
                      children: [
                        Icon(Icons.person),
                        Column(children: [
                          Text('Hello, Jenny', style: TextStyle(fontSize: 18.0,
                              fontWeight: FontWeight.bold,
                              color: AppColors.gray50)),
                          Text('Check amazing recipies..', style: TextStyle(
                              fontSize: 12.0, color: AppColors.gray50))
                        ]),
                        Spacer(),
                        Icon(Icons.notifications)
                      ],
                    ),
                    const SizedBox(height: 12),
                    _searchBar(ref),
                  ],
                )
            ),

            const SizedBox(height: 32),
            const Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,

              children: [
                Text('Meal Type'),
                Text('See all', style: TextStyle(
                    fontSize: 14.0, color: AppColors.primaryVariant)),
              ],
            ),
            mealTypeCategory(ref, context),
            const SizedBox(height: 32),
            const Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text('Popular Recipes'),
                Text('See all', style: TextStyle(
                    fontSize: 14.0, color: AppColors.primaryVariant)),
              ],
            ),
            theMostPopularRecipe.when(
              data: (data) {
                return Stack(
                  children: [
                    Container(
                      height: 200.0,
                      width: double.infinity,
                      child: FadeInImage.assetNetwork(
                        placeholder: 'assets/placeholder.png',
                        image:
                        'https://upload.wikimedia.org/wikipedia/commons/9/91/Pizza-3007395.jpg',
                        //data.image, The format of images from the DummyApi is not supported so I won't show up
                        width: double.infinity,
                        height: double.infinity,
                        fit: BoxFit.cover,
                      ),
                    ),
                    Positioned(
                      top: 16.0,
                      left: 16.0,
                      right: 16.0,
                      child: Container(
                        padding: EdgeInsets.all(8.0),
                        color: Colors.black54,
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Text(
                              data[0].rating.toString(),
                              style: TextStyle(color: Colors.white),
                            ),
                            Text(
                              data[0].reviewCount.toString(),
                              style: TextStyle(color: Colors.white),
                            ),
                          ],
                        ),
                      ),
                    ),
                  ],
                );
              },
              error: (e, st) =>
                  Center(
                    child: Padding(
                      padding: const EdgeInsets.all(30.0),
                      child: Text(
                        e.toString(),
                        style: Theme
                            .of(context)
                            .textTheme
                            .headlineMedium,
                        textAlign: TextAlign.center,
                      ),
                    ),
                  ),
              loading: () =>
              const Center(
                child: CircularProgressIndicator(),
              ),
            ),
          ],
        ),
      ),
    );
  }

  Widget _searchBar(WidgetRef ref) {
    TextEditingController controller = TextEditingController();
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: TextField(
        decoration: InputDecoration(
          filled: true,
          fillColor: Colors.white,
          hintText: "Search...",
          hintStyle: TextStyle(color: Colors.grey),
          prefixIcon: Icon(Icons.search),
          suffixIcon: IconButton(
            icon: const Icon(Icons.clear),
            onPressed: () {
              controller.clear();
              ref
                  .read(searchPhrase.notifier)
                  .state = "";
            },
          ),
          border: OutlineInputBorder(
            borderRadius: BorderRadius.circular(20.0),
            borderSide: BorderSide.none,
          ),
          focusedBorder: OutlineInputBorder(
            borderRadius: BorderRadius.circular(20.0),
            borderSide: BorderSide(color: Colors.blue, width: 2.0),
          ),
          contentPadding: EdgeInsets.symmetric(
              vertical: 12.0, horizontal: 16.0),
        ),
        textInputAction: TextInputAction.search,
        controller: controller,
        onSubmitted: (_) {
          ref
              .read(searchPhrase.notifier)
              .state = controller.text;
        },
      ),
    );
  }


/*
  Widget _mealTypeCategory(WidgetRef ref, BuildContext context) {
    return Container(
      height: 120.0,
      child: ListView(
        scrollDirection: Axis.horizontal,
        children: <Widget>[
          _buildCircleAvatar(context, ref,'assets/breakfast.jpg', 'Breakfast'),
          _buildCircleAvatar(context, ref,'assets/lunch.jpg', 'Dinner'),
          _buildCircleAvatar(context,ref,'assets/dinner.jpg', 'Lunch'),
          _buildCircleAvatar(context,ref,'assets/dessert.jpg', 'Dessert'),
          _buildCircleAvatar(context,ref,'assets/snack.jpg', 'Snack'),
        ],
      ),
    );
  }

  Widget _buildCircleAvatar(BuildContext context, WidgetRef ref, String imagePath, String label) {
    return GestureDetector(
      onTap: (){
        ref.read(selectedMealTypeProvider.notifier).state = label.toLowerCase();
        //context.router.push(MealTypeSearch());
        context.router.navigate(MealTypeSearch());


      },
      child: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Column(
          children: [
            CircleAvatar(
              radius: 30.0,
              backgroundImage: AssetImage(imagePath),
            ),
            const SizedBox(height: 5.0),
            Text(label),
          ],

   */
}