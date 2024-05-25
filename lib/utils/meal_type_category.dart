import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:auto_route/auto_route.dart';
import '../domain/provider/recipe_provider.dart';
import '../domain/provider/search_provider.dart';
import '../utils/colors.dart';
import 'package:fetchingapi/navigation/app_router.gr.dart';

Widget mealTypeCategory(WidgetRef ref, BuildContext context) {
  return Container(
    height: 120.0,
    child: ListView(
      scrollDirection: Axis.horizontal,
      children: <Widget>[
        buildCircleAvatar(context, ref,'assets/breakfast.jpg', 'Breakfast'),
        buildCircleAvatar(context, ref,'assets/lunch.jpg', 'Dinner'),
        buildCircleAvatar(context,ref,'assets/dinner.jpg', 'Lunch'),
        buildCircleAvatar(context,ref,'assets/dessert.jpg', 'Dessert'),
        buildCircleAvatar(context,ref,'assets/snack.jpg', 'Snack'),
      ],
    ),
  );
}

Widget buildCircleAvatar(BuildContext context, WidgetRef ref, String imagePath, String label) {
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
      ),
    ),
  );
}
