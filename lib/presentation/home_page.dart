import 'package:auto_route/annotations.dart';
import 'package:auto_route/auto_route.dart';
import 'package:fetchingapi/domain/provider/recipe_provider.dart';
import 'package:fetchingapi/navigation/app_router.gr.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

import 'package:flutter/src/widgets/framework.dart';

import 'package:flutter/material.dart';

import '../app_states/nav_state/bottombar.dart';

@RoutePage()
class Home extends ConsumerWidget {
  const Home({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    int page = 1;
    final recipies = ref.watch(fetchRecipiesProvider(page));

    return SafeArea(child: Scaffold(
      body: recipies.when(
          data: (data) {
            return ListView.separated(

                itemBuilder: (BuildContext context, int index){
                  final recipe = data[index];
                  return GestureDetector(
                    onTap: (){
                      context.router.navigate(RecipeDetailed(recipeId: recipe.id));
                    },
                    child: ListTile(
                      title: Text(recipe.name),
                    ),
                  );
                },
                separatorBuilder: (BuildContext context, int index){return Divider();},
                itemCount: data.length
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
    ));
      //bottomNavigationBar: BottomBar(),
  }
}
