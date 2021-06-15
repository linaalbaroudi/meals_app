import 'package:flutter/material.dart';
import 'package:meals_app/screens/widgets/category_item.dart';
import '../dummy_data.dart';

class CategoriesScreen extends StatelessWidget {
  const CategoriesScreen({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text("category_screen"),),
      body: GridView(
        padding: EdgeInsets.all(25),
        children: DUMMY_CATEGORIES.map((categoryData) => CategoryItem( title: categoryData.title, color: categoryData.color),).toList(),
        gridDelegate: SliverGridDelegateWithMaxCrossAxisExtent(
            maxCrossAxisExtent: 200,
            childAspectRatio: 3 / 2,
            crossAxisSpacing: 20,
            mainAxisSpacing: 20),
      ),
    );
  }
}
