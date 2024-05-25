import 'package:auto_route/annotations.dart';
import 'package:auto_route/auto_route.dart';
import 'package:fetchingapi/domain/provider/ingredient_provider.dart';
import 'package:fetchingapi/navigation/app_router.gr.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

import '../domain/provider/add_new_recipe_provider.dart';


@RoutePage()
class NewRecipe extends ConsumerWidget {
  const NewRecipe({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final TextEditingController searchController = TextEditingController();
    final TextEditingController instructionController = TextEditingController();
    final dropdownItems = ['easy', 'medium', 'hard'];
    final selectedValue = ref.watch(selectedDifficultyProvider);
    final instructions = ref.watch(instructionsProvider);
    final ingredients = ref.watch(ingredientListProvider);

    return Scaffold(
      appBar: AppBar(
        title: Text('New Recipe'),
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
        child: SingleChildScrollView(
          child: Padding(
            padding: const EdgeInsets.all(16.0),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                TextFormField(
                  decoration: InputDecoration(
                    labelText: 'Title of recipe',
                    border: OutlineInputBorder(),
                  ),
                  validator: (value) {
                    if (value == null || value.isEmpty) {
                      return 'The title cannot be empty';
                    }
                    return null;
                  },
                ),
                SizedBox(height: 24.0),
                TextFormField(
                  decoration: InputDecoration(
                    labelText: 'Preparation time in minutes',
                    border: OutlineInputBorder(),
                  ),
                  keyboardType: TextInputType.number,
                  inputFormatters: <TextInputFormatter>[
                    FilteringTextInputFormatter.digitsOnly,
                  ],
                  validator: (value) {
                    if (value == null || value.isEmpty) {
                      return 'The preparation time cannot be empty';
                    }
                    return null;
                  },
                ),
                SizedBox(height: 24.0),
                TextFormField(
                  decoration: InputDecoration(
                    labelText: 'Cook time in minutes',
                    border: OutlineInputBorder(),
                  ),
                  keyboardType: TextInputType.number,
                  inputFormatters: <TextInputFormatter>[
                    FilteringTextInputFormatter.digitsOnly,
                  ],
                  validator: (value) {
                    if (value == null || value.isEmpty) {
                      return 'The cook time cannot be empty';
                    }
                    return null;
                  },
                ),
                SizedBox(height: 24.0),
                DropdownButtonFormField<String>(
                  decoration: InputDecoration(
                    labelText: 'Select difficulty',
                    border: OutlineInputBorder(),
                  ),
                  value: selectedValue,
                  onChanged: (String? newValue) {
                    ref.read(selectedDifficultyProvider.notifier).state = newValue;
                  },
                  items: dropdownItems
                      .map<DropdownMenuItem<String>>((String value) {
                    return DropdownMenuItem<String>(
                      value: value,
                      child: Text(value),
                    );
                  }).toList(),
                ),
                SizedBox(height: 24.0),
                TextFormField(
                  decoration: InputDecoration(
                    labelText: 'Servings',
                    border: OutlineInputBorder(),
                  ),
                  keyboardType: TextInputType.number,
                  inputFormatters: <TextInputFormatter>[
                    FilteringTextInputFormatter.digitsOnly,
                  ],
                  validator: (value) {
                    if (value == null || value.isEmpty) {
                      return 'The servings cannot be empty';
                    }
                    return null;
                  },
                ),
                SizedBox(height: 24.0),
                TextFormField(
                  decoration: InputDecoration(
                    labelText: 'Calories per serving',
                    border: OutlineInputBorder(),
                  ),
                  keyboardType: TextInputType.number,
                  inputFormatters: <TextInputFormatter>[
                    FilteringTextInputFormatter.digitsOnly,
                  ],
                  validator: (value) {
                    if (value == null || value.isEmpty) {
                      return 'The calories cannot be empty';
                    }
                    return null;
                  },
                ),
                SizedBox(height: 24.0),
                Row(
                  children: [
                    Text('Add step by step instruction'),
                    Expanded(
                      child: TextFormField(
                        controller: instructionController,
                        decoration: InputDecoration(
                          labelText: '...',
                          suffixIcon: GestureDetector(
                            onTap: () {
                              final updatedList = [...instructions, instructionController.text];
                              ref.read(instructionsProvider.notifier).state = updatedList;
                              instructions.clear();
                            },
                            child: Icon(Icons.add_circle_outlined),
                          ),
                          border: OutlineInputBorder(),
                        ),
                      ),
                    )

                  ],
                ),
                SizedBox(height: 24.0),
                ListView.builder(
                  shrinkWrap: true,
                  physics: NeverScrollableScrollPhysics(),
                  itemCount: instructions.length,
                  itemBuilder: (context, index) {
                    return Card(
                      child: ListTile(
                        title: Text(instructions[index]),
                      ),
                    );
                  },
                ),
                Row(
                  children: [
                    Text('Add ingredients'),
                    IconButton(onPressed: (){
                      context.router.push(SearchIngredients());
                    }, icon: Icon(Icons.add_box_rounded))

                  ],
                ),
                ListView.builder(
                  shrinkWrap: true,
                  itemCount: ingredients.length,
                    itemBuilder: (context, index){
                      final ingredient = ingredients[index];
                    return Row(
                      children: [
                        Container(
                          child: Column(
                            children: [
                              Text(ingredient.name)
                            ],
                          ),
                        )
                      ],
                    );
                    })
              ],
            ),
          ),
        ),
      ),
    );
  }




}
