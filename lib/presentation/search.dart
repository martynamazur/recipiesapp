import 'dart:developer';

import 'package:auto_route/annotations.dart';
import 'package:fetchingapi/domain/provider/recipe_provider.dart';
import 'package:fetchingapi/domain/provider/search_provider.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:flutter/material.dart';

import '../app_states/nav_state/bottombar.dart';
import '../model/recipe.dart';



enum Tag {
  Tag1,
  Tag2,
  Tag3,
  Tag4,
}

@RoutePage()
class Search extends ConsumerWidget {
  const Search({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    int page = 1;

    final phrase = ref.watch(searchPhrase);
    final recipies = ref.watch(fetchSearchResultsProvider(phrase,page));

    return Scaffold(
      body: SafeArea(
        child: Column(
          children: [
            const Text('Recipies',
                style: const TextStyle(
                    fontSize: 16.0,
                    fontWeight: FontWeight.w300,
                    color: Colors.black54)),
            _searchBar(ref),
            _tagBar(),
            recipies.when(
              data: (data) {
                if (data.isEmpty) {
                  return _emptyList();
                } else {
                  return _searchResults(data);
                }
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
            )
          ],
        ),
      ),
    );
  }

  Widget _tagBar(){
    return SingleChildScrollView(
      scrollDirection: Axis.horizontal,
      child: Row(
        children: Tag.values.map((tag) {
          return GestureDetector(
            onTap: (){

            },
            child: Container(
              margin: EdgeInsets.symmetric(horizontal: 8.0),
              padding: EdgeInsets.symmetric(vertical: 4.0, horizontal: 8.0),
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(20.0),
                color: Colors.blue,
              ),
              child: Text(
                tag.toString().substring(4), // Usuń prefiks "Tag."
                style: TextStyle(color: Colors.white),
              ),
            ),
          );
        }).toList(),
      ),
    );
  }
  }


  Widget _emptyList(){
    return const Column(
      children: [
        Text('No recipes found'),
        Icon(Icons.no_drinks_outlined)
      ],
    );
  }

  Widget _searchResults(List<Recipe> recipies){
    return Expanded(child:
    ListView.builder(
        itemBuilder: (context, index){
          final recipe = recipies[index];
          return GestureDetector(
            onTap: (){

            },
            child: Container(
              child: Column(
                children: [
                  FadeInImage.assetNetwork(
                    placeholder: 'assets/placeholder.png',
                    image: recipe.image ?? 'assets/placeholder.png',
                    width: double.infinity,
                    height: 200.0,
                    fit: BoxFit.cover,
                    imageErrorBuilder: (context, error, stackTrace) {
                      return Image.asset(
                        'assets/placeholder.png',
                        width: double.infinity,
                        height: 200.0,
                        fit: BoxFit.cover,
                      );
                    },
                  ),
                  //Image.network(recipe.image, loadingBuilder: (BuildContext context, Widget child, ImageChunkEvent? loadingProgress)),
                  Text(recipe.name),
                  Text(recipe.cuisine),
                  Text(recipe.difficulty),
                  Text(recipe.caloriesPerServing.toString()),


                ],
              ),
            ),
          );
        }
    ));

  }
  Widget _searchBar(WidgetRef ref) {
    TextEditingController controller = TextEditingController();
    return TextField(
      decoration: InputDecoration(
        filled: true,
        hintText: "Search...",
        suffixIcon: IconButton(
          icon: const Icon(Icons.clear),
          onPressed: () {
            controller.clear();
            ref.read(searchPhrase.notifier).state = "";
          },
        ),
      ),
      textInputAction: TextInputAction.search,
      controller: controller,
      onSubmitted: (_) {
        ref.read(searchPhrase.notifier).state = controller.text;

      },
    );
  }

