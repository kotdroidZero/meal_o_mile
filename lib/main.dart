import 'package:flutter/material.dart';
import 'package:meal_o_meal/screens/categories_screen.dart';
import 'package:meal_o_meal/screens/category_meals_screen.dart';
import 'package:meal_o_meal/screens/filters_screen.dart';
import 'package:meal_o_meal/screens/meal_detail_screen.dart';

import 'screens/tabs_screen.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: "Meal O Mile",
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
          primarySwatch: Colors.pink,
          accentColor: Colors.amberAccent,
          canvasColor: Color.fromRGBO(255, 254, 229, 1),
          fontFamily: 'Raleway',
          textTheme: ThemeData.light().textTheme.copyWith(
                bodyText1: TextStyle(
                  color: Color.fromRGBO(20, 51, 51, 1),
                ),
                bodyText2: TextStyle(
                  color: Color.fromRGBO(20, 51, 51, 1),
                ),
                headline6: TextStyle(
                  fontSize: 20,
                  fontWeight: FontWeight.bold,
                  fontFamily: 'RobotoCondensed',
                ),
              )),
      // home: CategoriesScreen(),
      routes: {
        '/': (ctx) => TabsScreen(),
        '/category_meals': (ctx) => CategoryMealsScreen(),
        '/meal_detail': (ctx) => MealDetailScreen(),
        '/filters': (ctx) => FiltersScreen(),
      },
    );
  }
}
