import 'package:auto_route/annotations.dart';
import 'package:auto_route/auto_route.dart';
import 'package:bulleted_list/bulleted_list.dart';
import 'package:fetchingapi/domain/provider/recipe_provider.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter_rating_bar/flutter_rating_bar.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:like_button/like_button.dart';
import 'package:simple_tags/simple_tags.dart';
import 'package:sliding_up_panel/sliding_up_panel.dart';

import '../domain/provider/database_provider.dart';
import '../utils/colors.dart';

@RoutePage()
class RecipeDetailed extends ConsumerWidget {
  int recipeId;

  RecipeDetailed(this.recipeId);

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final recipe = ref.watch(fetchRecipeProvider(recipeId));
    final isLiked = ref.watch(isFavouriteProvider(recipeId));

    return Scaffold(
        body: recipe.when(
      data: (data) {
        return SlidingUpPanel(
          minHeight: 150,
          maxHeight: MediaQuery.of(context).size.height,
          panel: SingleChildScrollView(
            child: Padding(
              padding: const EdgeInsets.all(16.0),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.start,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(data.name,
                          style: TextStyle(
                              fontWeight: FontWeight.w400, fontSize: 20.0)),
                      Row(children: [
                        RatingBarIndicator(
                          itemBuilder: (context, index) =>
                              const Icon(Icons.star, color: Colors.amberAccent),
                          itemCount: 5,
                          itemSize: 30.0,
                          direction: Axis.horizontal,
                          rating: data.rating,
                        ),
                        Text(data.rating.toString()),
                        Text('(${data.reviewCount.toString()})',
                            style: TextStyle(color: Colors.white60)),
                        ]),
                      Divider(
                        color: Color(0xFFF5F5F5),
                        thickness: 1.0,
                      ),
                      SizedBox(width: 8),
                      SimpleTags(
                        content: data.tags,
                        wrapSpacing: 4,
                        wrapRunSpacing: 4,
                        onTagPress: (tag) {
                          print('pressed $tag');
                          },
                        tagContainerPadding: EdgeInsets.all(6),
                        tagTextStyle: TextStyle(color: Colors.deepPurple),
                        tagContainerDecoration: BoxDecoration(
                          color: Colors.white,
                          border: Border.all(color: Colors.grey),
                          borderRadius: BorderRadius.all(
                            Radius.circular(20),
                          ),
                          boxShadow: [
                            BoxShadow(
                              color: Color.fromRGBO(139, 139, 142, 0.16),
                              spreadRadius: 1,
                              blurRadius: 1,
                              offset: Offset(1.75, 3.5), // c
                            )
                          ],
                        ),

                      )],
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Column(
                        children: [
                          Text('Servings'),
                          Text(data.servings.toString())
                        ],
                      ),
                      Column(
                        children: [
                          Text('Prep Time'),
                          Text(data.prepTimeMinutes.toString())
                        ],
                      ),
                      Column(
                        children: [
                          Text('Cook Time'),
                          Text(data.cookTimeMinutes.toString())
                        ],
                      )
                    ],
                  ),
                  Divider(
                    color: Color(0xFFF5F5F5),
                    thickness: 1.0,
                  ),
                  Column(
                    children: [
                      Text('Ingredients'),
                      BulletedList(
                        listItems: data.ingredients,
                      ),
                      Text('Instructions'),
                      BulletedList(
                        listItems: data.instructions,
                      )
                    ],
                  )
                ],
              ),
            ),
          ),
          body: Stack(
            children: [
              Center(
              child: FadeInImage.assetNetwork(
                  placeholder: 'assets/placeholder.png',
                  image:
                      'https://upload.wikimedia.org/wikipedia/commons/9/91/Pizza-3007395.jpg',
                  //data.image, The format of images from the DummyApi is not supported so I won't show up
                  width: double.infinity,
                  height: double.infinity,
                  fit: BoxFit.cover),
            ),
              Positioned(
                top: 16.0,
                left: 16.0,
                right: 16.0,
                child: Container(
                  width: 150.0,
                  padding: const EdgeInsets.all(8.0),
                  decoration: BoxDecoration(
                      color: AppColors.secondary,
                      borderRadius: BorderRadius.circular(20.0)
                  ),
                  //constraints: const BoxConstraints.tightFor(width: double.infinity),
                  child: IconButton(
                    padding: EdgeInsets.zero,
                    iconSize: 24.0,
                    icon: Icon(Icons.arrow_back_ios_sharp),
                    onPressed: () {
                      context.router.back();
                    },

                  ),
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
    ));
  }
}
