import 'package:flutter/material.dart';
import 'package:meal_o_meal/dummy_data.dart';
import 'package:meal_o_meal/models/meal.dart';
import 'package:meal_o_meal/widgets/meal_item.dart';

class CategoryMealsScreen extends StatelessWidget {
  // final String id;
  // final String title;

  // CategoryMealsScreen(this.id, this.title);

  @override
  Widget build(BuildContext context) {
    final routeArg =
        ModalRoute.of(context).settings.arguments as Map<String, String>;
    final categoryTitle = routeArg['title'];
    final categoryId = routeArg['id'];

    final categoryMeals = DUMMY_MEALS
        .where((meal) => meal.categories.contains(categoryId))
        .toList();
    return Scaffold(
      appBar: AppBar(
        title: Text(categoryTitle),
      ),
      body: Center(
        child: ListView.builder(
          itemBuilder: (contex, int position) {
            Meal meal = categoryMeals[position];
            return MealItem(
              title: meal.title,
              id: meal.id,
              image: meal.imageUrl,
              duration: meal.duration,
              complexity: meal.complexityText,
              affordability: meal.affordabilityText,
            );
          },
          itemCount: categoryMeals.length,
        ),
      ),
    );
  }
}
