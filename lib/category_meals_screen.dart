import 'package:flutter/material.dart';

class CategoryMealsScreen extends StatelessWidget {
  // final String id;
  // final String title;

  // CategoryMealsScreen(this.id, this.title);

  @override
  Widget build(BuildContext context) {
    final routeArg = ModalRoute.of(context).settings.arguments as Map<String, String>;
    return Scaffold(
      appBar: AppBar(
        title: Text(routeArg['title']),
      ),
      body: Center(
        child: Text(
          'Recipeies for the categories',
        ),
      ),
    );
  }
}
