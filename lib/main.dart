import 'package:flutter/material.dart';
import 'package:meals_app/screens/categories_screen.dart';
import 'package:meals_app/screens/category_meals_screen.dart';
import 'package:meals_app/screens/meal_datail_screen.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Meals App',
      theme: ThemeData(
        primarySwatch: Colors.deepPurple,
        accentColor: Colors.amber,
        canvasColor: Color.fromRGBO(238, 242, 242, 1),
        fontFamily: 'Raleway',
        textTheme: ThemeData.light().textTheme.copyWith(
            body1: TextStyle(
              color: Color.fromRGBO(20, 51, 51, 1),
            ),
            body2: TextStyle(color: Color.fromRGBO(20, 51, 51, 1)),
            title: TextStyle(
              fontSize: 20.0,
              fontFamily: 'RobotoCondensed',
              fontWeight: FontWeight.bold,
            )),
        visualDensity: VisualDensity.adaptivePlatformDensity,
      ),
      //home: CategoriesScreen(),
      routes:{
        '/' : (ctx) => CategoriesScreen(),
        //'/category_meals_screen': (ctx) => CategoryMealsScreen(),
        CategoryMealsScreen.routeName : (ctx) => CategoryMealsScreen(),
        MealDetailsScreen.routeName : (ctx) => MealDetailsScreen(),
      },
      onGenerateRoute: (settings){
        print(settings.arguments);
        return MaterialPageRoute(builder: (ctx) => CategoriesScreen());
      },
      onUnknownRoute: (settings){
        return MaterialPageRoute(builder: (ctx) => CategoriesScreen());
      },
    );
  }
}
