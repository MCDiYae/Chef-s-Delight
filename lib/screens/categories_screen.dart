import 'package:flutter/material.dart';
import '../widgets/category_item.dart';
import '../data/dummy_data.dart';

class CategoriesScreen extends StatelessWidget {
  const CategoriesScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ListView(
      padding: const EdgeInsets.all(25),
      children: dummyCategories
          .map(
            (catData) => Padding(
              padding: const EdgeInsets.all(8.0),
              child: CategoryItem(
                catData.id,
                catData.title,
                catData.color,
              ),
            ),
          )
          .toList(),
    );
  }
}
