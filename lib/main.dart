import 'package:flutter/material.dart';
import 'package:meals_app/screens/categories_screen.dart';

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
        canvasColor: Color.fromRGBO(255, 254, 229, 1),
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
      home: CategoriesScreen(),
    );
  }
}
