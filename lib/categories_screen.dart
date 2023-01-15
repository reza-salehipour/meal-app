// ignore_for_file: prefer_const_constructors
import 'package:flutter/material.dart';

import './dummy_data.dart';
import './category_item.dart';

class CategoriesScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('DeliMeal')),
      body: GridView.count(
        padding: const EdgeInsets.all(25),
        crossAxisCount: 2,
        mainAxisSpacing: 20,
        crossAxisSpacing: 20,
        childAspectRatio: 3 / 2,

        // gridDelegate: SliverGridDelegateWithMaxCrossAxisExtent(
        //     maxCrossAxisExtent: 200,
        //     childAspectRatio: 3 / 2,
        //     crossAxisSpacing: 20,
        //     mainAxisExtent: 20),
        children: DUMMY_CATEGORIES
            .map((categoryData) => CategoryItem(
                  id: categoryData.id,
                  title: categoryData.title,
                  color: categoryData.color,
                ))
            .toList(),
      ),
    );
  }
}
