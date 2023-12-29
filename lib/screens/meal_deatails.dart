import 'package:flutter/material.dart';

import 'package:meal_app/models/meal.dart';

class MealDetailsScreen extends StatelessWidget {
  const MealDetailsScreen({super.key, required this.meal});

  final Meal meal;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text(meal.title),
        ),
        body: SingleChildScrollView(
          child: Column(
            children: [
              Image.network(meal.imageUrl,
                  height: 200, width: double.infinity, fit: BoxFit.cover),
              Text(
                'Ingredient',
                style: Theme.of(context).textTheme.titleLarge!.copyWith(
                    color: Theme.of(context).colorScheme.primary,
                    fontWeight: FontWeight.bold),
              ),
              const SizedBox(
                height: 14,
              ),
              for (final ingredient in meal.ingredients)
                Padding(
                  padding:
                      const EdgeInsets.symmetric(vertical: 6, horizontal: 4),
                  child: Text(
                    ingredient,
                    style: Theme.of(context).textTheme.titleMedium!.copyWith(
                        color: Theme.of(context).colorScheme.onBackground,
                        fontWeight: FontWeight.bold),
                  ),
                ),
              const SizedBox(
                height: 14,
              ),
              Text(
                'Ingredient',
                style: Theme.of(context).textTheme.titleLarge!.copyWith(
                    color: Theme.of(context).colorScheme.primary,
                    fontWeight: FontWeight.bold),
              ),
              for (final step in meal.steps)
                Padding(
                  padding:
                      const EdgeInsets.symmetric(vertical: 4, horizontal: 4),
                  child: Text(
                    step,
                    textAlign: TextAlign.center,
                    style: Theme.of(context).textTheme.titleMedium!.copyWith(
                          color: Theme.of(context).colorScheme.onBackground,
                          fontWeight: FontWeight.bold,
                        ),
                  ),
                ),
            ],
          ),
        ));
  }
}