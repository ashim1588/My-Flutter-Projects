import 'package:flutter/material.dart';
import '../models/meal.dart';
import '../widgets/meal_item.dart';

class FavoritesScreen extends StatelessWidget {
  final List<Meal> favoritesMeals;
  FavoritesScreen(this.favoritesMeals);
  @override
  Widget build(BuildContext context) {
    if (favoritesMeals.isEmpty) {
      return Center(
        child: Text(
          "You have no favorites yet, Start Adding some!",
          style: TextStyle(fontSize: 22),
        ),
      );
    } else {
      return ListView.builder(
        itemBuilder: (ctx, index) {
          return MealItem(
            id: favoritesMeals[index].id,
            title: favoritesMeals[index].title,
            imageUrl: favoritesMeals[index].imageUrl,
            affordability: favoritesMeals[index].affordability,
            complexity: favoritesMeals[index].complexity,
            duration: favoritesMeals[index].duration,
            //    removeItem: _removeMeal,
          );
        },
        itemCount: favoritesMeals.length,
      );
    }
  }
}
